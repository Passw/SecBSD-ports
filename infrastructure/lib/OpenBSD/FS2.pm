# $OpenBSD: FS2.pm,v 1.42 2023/07/05 15:07:54 espie Exp $
# Copyright (c) 2018 Marc Espie <espie@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

use v5.36;
use OpenBSD::BaseFS;


# This is the part of update-plist that interfaces with the filesystem:
# figuring out which file is what, mostly straightforward especially
# compared to other parts fo update-plist

# Base class for recognized objects
# all of these map to "PackingElements"
# (some of them are dummy elements that are NOT recognized outside of
#     update-plist)

package OpenBSD::FS::File;

use OpenBSD::IdCache;

sub new($class, $filename, $owner, $group)
{
	bless {path => $filename, owner => $owner, group => $group}, $class
}

sub path($self)
{
	$self->{path}
}

sub owner($self)
{
	$self->{owner};
}

sub group($self)
{
	$self->{group};
}

my $uid_lookup = OpenBSD::UnameCache->new;
my $gid_lookup = OpenBSD::GnameCache->new;

sub create($class, $path, $fs)
{
	my $real = $fs->destdir($path);
	my ($uid, $gid) = (lstat $real)[4,5];
	if (!defined $uid) {
		$fs->{state}->errsay("Resolving #1 to #2 didn't work: #3",
		    $path, $real, $!);
		# fake it as root
	    	#($uid, $gid) = (0, 0);
	}
	$path =~ s,^/etc/X11/app-defaults\b,/usr/local/lib/X11/app-defaults,;
	return $class->new($path,
	    $uid_lookup->lookup($uid), $gid_lookup->lookup($gid));
}

sub classes($)
{
	return (qw(OpenBSD::FS::File::Directory OpenBSD::FS::File::Rc
		OpenBSD::FS::File::Desktop
		OpenBSD::FS::File::Glib2Schema
		OpenBSD::FS::File::IbusComponent
		OpenBSD::FS::File::PkgConfig
		OpenBSD::FS::File::MimeInfo
		OpenBSD::FS::File::LoginClass
		OpenBSD::FS::File::Icon
		OpenBSD::FS::File::IconTheme
		OpenBSD::FS::File::Ocaml::Cmx
		OpenBSD::FS::File::Ocaml::Cmxa
		OpenBSD::FS::File::Ocaml::Cmxs
		OpenBSD::FS::File::Subinfo OpenBSD::FS::File::Info
		OpenBSD::FS::File::Dirinfo OpenBSD::FS::File::Manpage
		OpenBSD::FS::File::Library OpenBSD::FS::File::Plugin
		OpenBSD::FS::File::StaticLibrary
		OpenBSD::FS::File::Binary OpenBSD::FS::File::Font
		OpenBSD::FS::File));
}

# $class->recognize($filename, $fsobj, $data):
# 	called for each class in order until the "default" file
#	some retrieved data such as file's contents are cached for
# 	efficiency
sub recognize($, $, $, $)
{
	return 1;
}

sub element_class($)
{
	'OpenBSD::PackingElement::File';
}

sub fill_objdump($, $filename, $, $data)
{
	return if exists $data->{objdump};
	my $check = `/usr/bin/objdump -h \Q$filename\E 2>/dev/null`;
	chomp $check;
	$data->{objdump} = $check;
}

# $self->tweak_other_paths($fsobject, $fileshash)
# some files may "bleed" into other objects, e.g., if
# there's an ocaml .cma, then a corresponding .a will be an ocaml library
# or, for instance, presence of fonts in a directory tags the directory as
# a font directory

# TODO tweak should use some kind of "reblessing" mechanism to at least
# warn about stuff that belongs in several non obvious categories
sub tweak_other_paths($, $, $)
{
}

sub can_have_debug($)
{
	return 0;
}

sub is_dir($)
{
	return 0;
}

package OpenBSD::FS::File::WithDebugInfo;
our @ISA = qw(OpenBSD::FS::File);

sub can_have_debug($)
{
	return 1;
}
package OpenBSD::FS::File::Directory;
our @ISA = qw(OpenBSD::FS::File);
sub recognize($, $filename, $fs, $)
{
	return -d $fs->destdir($filename) && !-l $fs->destdir($filename);
}

sub element_class($)
{
	'OpenBSD::PackingElement::Dir';
}

sub is_dir($)
{
	return 1;
}

package OpenBSD::FS::File::ManDirectory;
our @ISA = qw(OpenBSD::FS::File::Directory);
sub element_class($)
{
	'OpenBSD::PackingElement::Mandir';
}

package OpenBSD::FS::File::FontDirectory;
our @ISA = qw(OpenBSD::FS::File::Directory);
sub element_class($)
{
	'OpenBSD::PackingElement::Fontdir';
}

package OpenBSD::FS::File::Rc;
our @ISA = qw(OpenBSD::FS::File);

sub recognize($, $filename, $fs, $)
{
	return $filename =~ m,/rc\.d/, && -f $fs->destdir($filename);
}

sub element_class($)
{
	'OpenBSD::PackingElement::RcScript';
}

package OpenBSD::FS::File::Desktop;
our @ISA = qw(OpenBSD::FS::File);
sub recognize($, $filename, $fs, $)
{
	return 0 unless $filename =~ m,share/applications/.*\.desktop$, && 
	    -f $fs->destdir($filename);
	$filename = $fs->resolve_link($filename);
	open my $fh, '<:utf8', $filename or return 0;
	my $tag = <$fh>;
	chomp;
	return 1 if $tag =~ m/^\[Desktop Entry\]/;
	return 0;
}

sub element_class($)
{
	'OpenBSD::PackingElement::Desktop';
}

package OpenBSD::FS::File::LoginClass;
our @ISA = qw(OpenBSD::FS::File);

sub recognize($, $filename, $fs, $)
{
	return $filename =~ m,/share/examples/login\.conf\.d/, 
	    && -f $fs->destdir($filename);
}

sub element_class($)
{
	'OpenBSD::PackingElement::LoginClass';
}

package OpenBSD::FS::File::Glib2Schema;
our @ISA = qw(OpenBSD::FS::File);
sub recognize($, $filename, $, $)
{
	return $filename =~ m,glib-2\.0/schemas/.*\.xml$,;
}

sub element_class($)
{
	'OpenBSD::PackingElement::Glib2Schema';
}

package OpenBSD::FS::File::IbusComponent;
our @ISA = qw(OpenBSD::FS::File);
sub recognize($, $filename, $, $)
{
	return $filename =~ m,share/ibus/component/.*\.xml$,;
}

sub element_class($)
{
	'OpenBSD::PackingElement::IbusComponent';
}

package OpenBSD::FS::File::PkgConfig;
our @ISA = qw(OpenBSD::FS::File);
sub recognize($, $filename, $fs, $)
{
	if ($filename =~ m,(.*lib/pkgconfig/)(.*)\.pc$,) {
		my ($dir, $f) = ($1, $2);
		my $state = $fs->{state};
		
		if ($state->system(
		    sub() {
			$ENV{PKG_CONFIG_PATH}="$fs->{destdir}/$dir"; }, 
		    'pkg-config', '--validate', $f) != 0) {
		    	$state->errsay(
			    "WARNING: file #1 is not a valid .pc file", 
			    $filename);
		}
	}

	return 0;
}

package OpenBSD::FS::File::MimeInfo;
our @ISA = qw(OpenBSD::FS::File);
sub recognize($, $filename, $, $)
{
	return $filename =~ m,share/mime/packages/.*\.xml$,;
}

sub element_class($)
{
	'OpenBSD::PackingElement::MimeInfo';
}

package OpenBSD::FS::File::IconThemeDirectory;
our @ISA = qw(OpenBSD::FS::File::Directory);

sub element_class($)
{
	'OpenBSD::PackingElement::IconThemeDirectory';
}

package OpenBSD::FS::File::IconTheme;
our @ISA = qw(OpenBSD::FS::File);

sub recognize($, $filename, $, $)
{
	return $filename =~ m,share/icons/[^/]+/theme\.cache$,;
}

sub element_class($)
{
	'OpenBSD::PackingElement::IconTheme';
}

package OpenBSD::FS::File::Icon;
our @ISA = qw(OpenBSD::FS::File);

sub recognize($, $filename, $, $)
{
	return $filename =~ m,share/icons/.*/.*\.(png|svg)$,;
}

sub tweak_other_paths($self, $fs, $files)
{
	my $m = $self->path;
	if ($self->path =~ m,(.*/share/icons/.*?)/,) {
		my $m = $1;
		if (exists $files->{$m}) {
			bless $files->{$m}, 
			    "OpenBSD::FS::File::IconThemeDirectory";
		}
	}
}

package OpenBSD::FS::File::Binary;
our @ISA = qw(OpenBSD::FS::File::WithDebugInfo);

sub element_class($)
{
	'OpenBSD::PackingElement::Binary';
}

sub recognize($class, $filename, $fs, $data)
{
	$filename = $fs->destdir($filename);
	return 0 if -l $filename or ! -x $filename;
	$class->fill_objdump($filename, $fs, $data);
	if ($data->{objdump} =~ m/ .note.openbsd.ident /) {
	    	return 1;
	} else {
		return 0;
	}
}

package OpenBSD::FS::File::Info;
our @ISA = qw(OpenBSD::FS::File);
use File::Basename;

sub recognize($class, $filename, $fs, $)
{
	return 0 unless $filename =~ m/\.info$/ or $filename =~ m/info\/[^\/]+$/;
	$filename = $fs->resolve_link($filename);
	open my $fh, '<', $filename or return 0;
	my $tag = <$fh>;
	return 0 unless defined $tag;
	my $tag2 = <$fh>;
	$tag .= $tag2 if defined $tag2;
	close $fh;
	if ($tag =~ /^This\sis\s.*,\sproduced\sby\sg?[Mm]akeinfo(?:\sversion\s|\-)?.*[\d\s]from/s ||
	    $tag =~ /^Dies\sist\s.*,\shergestellt\svon\sg?[Mm]akeinfo(?:\sVersion\s|\-)?.*[\d\s]aus/s) {
		return 1;
	} else {
		return 0;
	}
}

sub element_class($)
{
	'OpenBSD::PackingElement::InfoFile';
}

sub tweak_other_paths($self, $fs, $files)
{
	my $m = dirname($self->path);
	if (exists $files->{$m}) {
		bless $files->{$m}, "OpenBSD::FS::File::InfoDirectory";
	}
}

package OpenBSD::FS::File::InfoDirectory;
our @ISA = qw(OpenBSD::FS::File::Directory);
sub element_class($)
{
	'OpenBSD::PackingElement::Infodir';
}

package OpenBSD::FS::File::Subinfo;
our @ISA = qw(OpenBSD::FS::File::Info);
sub recognize($class, $filename, $fs, $data)
{
	if ($filename =~ m/^(.*\.info)\-\d+$/ or
	    $filename =~ m/^(.*info\/[^\/]+)\-\d+$/) {
		return $class->SUPER::recognize($1, $fs, $data);
	}
	if ($filename =~ m/^(.*)\.\d+in$/) {
		return $class->SUPER::recognize("$1.info", $fs, $data);
	}
	return 0;
}

sub tweak_other_paths($self, $fs, $files)
{
	delete $files->{$self->path};
	$fs->zap_dirs($files, $self->path);
}

package OpenBSD::FS::File::Dirinfo;
our @ISA = qw(OpenBSD::FS::File::Subinfo);

sub recognize($, $filename, $fs, $)
{
	return 0 unless $filename =~ m/\/dir$/;
	$filename = $fs->resolve_link($filename);
	open my $fh, '<', $filename or return 0;
	my @tags = ();
	for my $i (1 .. 4) {
		my $tag = <$fh>;
		last unless defined $tag;
		chomp $tag;
		push(@tags, $tag);
	}
	close $fh;
	my $tag = join(' ', @tags);
	if ($tag =~ /^(?:\-\*\- Text \-\*\-\s+)?This is the file .*, which contains the topmost node of the Info hierarchy/) {
		return 1;
	} else {
		return 0;
	}
}


package OpenBSD::FS::File::Manpage;
our @ISA = qw(OpenBSD::FS::File);
use File::Basename;

sub recognize($, $re, $fs, $)
{
	if ($re =~ m,/man/(?:[^/]*?/)?man(.*?)/[^/]+\.\1[[:alpha:]]?(?:\.gz|\.Z)?$,) {
		return 1;
	}
	if ($re =~ m,/man/(?:[^/]*?/)?man3p/[^/]+\.3(?:\.gz|\.Z)?$,) {
		return 1;
	}
	if ($re =~ m,/man/(?:[^/]*/)?cat.*?/[^/]+\.0(?:\.gz|\.Z)?$,) {
		return 1;
	}
	if ($re =~ m,/man/(?:[^/]*/)?(?:man|cat).*?/[^/]+\.tbl(?:\.gz|\.Z)?$,) {
		return 1;
	}
	return 0;
}

sub element_class($)
{
	return 'OpenBSD::PackingElement::Manpage';
}

sub tweak_other_paths($self, $fs, $files)
{
	my $m = dirname(dirname($self->path));

	# this should take care of language subdirectories
	unless ($m =~ m,/man$,) {
		$m = dirname($m);
	}
	# and make sure we're really a man directory
	return unless $m =~ m,/man$,;

	if (exists $files->{$m}) {
		bless $files->{$m}, "OpenBSD::FS::File::ManDirectory";
	}
}

package OpenBSD::FS::File::Library;
our @ISA = qw(OpenBSD::FS::File::WithDebugInfo);

sub recognize($class, $filename, $fs, $data)
{
	return 0 unless $filename =~ m/\/lib[^\/]+\.so\.\d+\.\d+$/;
	$filename = $fs->resolve_link($filename);
	return 0 if -l $filename;
	$class->fill_objdump($filename, $fs, $data);
	if ($data->{objdump} =~ m/ .note.openbsd.ident /) {
		if ($data->{objdump} =~ m/ .interp /) {
			print STDERR 
    "WARNING: likely library $filename linked with -dynamic-linker\n";
		}
	    	return 1;
	} else {
		return 0;
	}
}

sub element_class($)
{
	'OpenBSD::PackingElement::Lib';
}

package OpenBSD::FS::File::Plugin;
our @ISA = qw(OpenBSD::FS::File::WithDebugInfo);

sub element_class($)
{
	return 'OpenBSD::PackingElement::SharedObject';
}

sub recognize($class, $filename, $fs, $data)
{
	return 0 unless $filename =~ m/\.so$/;
	$filename = $fs->resolve_link($filename);
	$class->fill_objdump($filename, $fs, $data);
	if ($data->{objdump} =~ m/ .note.openbsd.ident / && 
	    $data->{objdump} !~ m/ .interp /) {
	    	return 1;
	} else {
		return 0;
	}
}

package OpenBSD::FS::File::StaticLibrary;
our @ISA = qw(OpenBSD::FS::File::WithDebugInfo);

sub element_class($)
{
	return 'OpenBSD::PackingElement::StaticLib';
}

sub recognize($class, $filename, $fs, $data)
{
	return 0 unless $filename =~ m/\/lib[^\/]+\.a$/;
	$filename = $fs->resolve_link($filename);
	my $check = `/usr/bin/ar t \Q$filename\E >/dev/null 2>/dev/null`;
	if ($? == 0) {
		return 1;
	} else {
		return 0;
	}
}

package OpenBSD::FS::File::Font;
our @ISA = qw(OpenBSD::FS::File);
use File::Basename;

# XXX TODO  evaluate whether we ought to be smarter in recognizing fonts
sub recognize($, $filename, $, $)
{

	return 0 unless $filename =~ m,^/usr/local/share/fonts/.*\.(ot[bcf]|tt[cf]|pf[ab]|pcf(\.gz)?)$,;

	return 1;
}

sub tweak_other_paths($self, $fs, $files)
{
	my $m = dirname($self->path);
	if (exists $files->{$m}) {
		bless $files->{$m}, "OpenBSD::FS::File::FontDirectory";
	}
}

package OpenBSD::FS::File::Ocaml::Cmx;
our @ISA = qw(OpenBSD::FS::File);

sub recognize($, $filename, $, $)
{
	return $filename =~ m/\.cmx$/;
}

sub element_class($)
{
	"OpenBSD::PackingElement::File::Ocaml::Cmx"
}

sub tweak_other_paths($self, $fs, $files)
{
	my $o = $self->path;
	$o =~ s/\.cmx$/.o/;
	if (exists $files->{$o}) {
		bless $files->{$o}, "OpenBSD::FS::File::Ocaml::o";
	}
}

package OpenBSD::FS::File::Ocaml::Cmxa;
our @ISA = qw(OpenBSD::FS::File);

sub recognize($, $filename, $, $)
{
	return $filename =~ m/\.cmxa$/;
}

sub element_class($)
{
	"OpenBSD::PackingElement::File::Ocaml::Cmxa"
}

sub tweak_other_paths($self, $fs, $files)
{
	my $a = $self->path;
	$a =~ s/\.cmxa$/.a/;
	if (exists $files->{$a}) {
		bless $files->{$a}, "OpenBSD::FS::File::Ocaml::a";
	}
}

package OpenBSD::FS::File::Ocaml::Cmxs;
our @ISA = qw(OpenBSD::FS::File);

sub recognize($, $filename, $, $)
{
	return $filename =~ m/\.cmxs$/;
}

sub element_class($)
{
	"OpenBSD::PackingElement::File::Ocaml::Cmxs"
}

package OpenBSD::FS::File::Ocaml::a;
our @ISA = qw(OpenBSD::FS::File);

sub element_class($)
{
	"OpenBSD::PackingElement::File::Ocaml::a"
}

package OpenBSD::FS::File::Ocaml::o;
our @ISA = qw(OpenBSD::FS::File);

sub element_class($)
{
	"OpenBSD::PackingElement::File::Ocaml::o"
}

package OpenBSD::FS2;
our @ISA = qw(OpenBSD::BaseFS);

use OpenBSD::Mtree;
use File::Find;
use File::Spec;
use File::Basename;
use OpenBSD::IdCache;
use Config;

sub ignore_parents($self, $path)
{
	do {
		$self->{ignored}{$path} = 1;
		$path = dirname($path);
		return if $self->{ignored}{$path};
	} while ($path ne '/' && $path ne $self->{destdir});
}

# existing files are classified by the following class
# we look under a destdir, and we do ignore a hash of files
sub new($class, $destdir, $ignored, $state)
{
	my $o = $class->SUPER::new($destdir, $state);

	$o->{ignored} = {};
	# this allows _FAKE_TREE_LIST to be used
	for my $d (keys %$ignored) {
		for my $path (glob $d) {
			$o->ignore_parents($path);
		}
	}
	return $o;
}

sub mtree($self)
{
	use OpenBSD::Mtree;
	if (!defined $self->{mtree}) {
		my $mtree = $self->{mtree} = {};
		OpenBSD::Mtree::parse($mtree, '/', '/etc/mtree/4.4BSD.dist');
		OpenBSD::Mtree::parse($mtree, '/', '/etc/mtree/BSD.x11.dist');
		$mtree->{'/var/tmp'} = 1;
		# zap /usr/libdata/xxx from perl install
		$mtree->{$Config{installarchlib}} = 1;
		$mtree->{dirname($Config{installarchlib})} = 1;
	}
	return $self->{mtree};
}

sub create($self, $filename)
{
	my $data = {};
	for my $class (OpenBSD::FS::File->classes) {
		if ($class->recognize($filename, $self, $data)) {
			return $class->create($filename, $self);
		}
	}
}

# check that $fullname is not the only entry in its directory
sub has_other_entry($self, $dir, $file)
{
	opendir(my $fh, $self->destdir($dir)) or return 0;
	while (my $e = readdir($fh)) {
		next if $e eq '.' or $e eq '..';
	    	next if $e eq $file;
		return 1;
	}
	return 0;
}

## zap directories going up if there is nothing but that filename.
## used to zap .perllocal, dir, and other stuff.
sub zap_dirs($self, $h, $fullname)
{
	my $d = dirname($fullname);
	return if $d eq '/';
	return if $self->has_other_entry($d, basename($fullname));
	delete $h->{$d};
	$self->zap_dirs($h, $d);
}

sub is_perl_path($self, $path)
{
	my $installsitearch = $Config{'installsitearch'};
	my $archname = $Config{'archname'};
	my $installprivlib = $Config{'installprivlib'};
	my $installarchlib = $Config{'installarchlib'};

	if ($path =~ m,\Q$installsitearch\E/auto/.*/\.packlist$, or
	    $path =~ m,\Q$installarchlib/perllocal.pod\E$, or
	    $path =~ m,\Q$installsitearch/perllocal.pod\E$, or
	    $path =~ m,\Q$installprivlib/$archname/perllocal.pod\E$,) {
	    	return 1;
	} else {
		return 0;
	}
}

sub scan($self)
{
	my $files = {};
	find(
		sub() {
			return if $self->{ignored}{$File::Find::name};
			my $path = $self->undest($File::Find::name);
			return if $self->mtree->{$path};
			return if $path =~ m/pear\/lib\/\.(?:filemap|lock)$/;
			if ($self->is_perl_path($path)) {
				$self->zap_dirs($files, $path);
				return;
			}
			my $file = $self->create($path);
			$files->{$file->path} = $file;
		}, $self->destdir);
	for my $file (values %$files) {
		$file->tweak_other_paths($self, $files);
	}
	$self->zap_dirs($files, '/etc/X11/app-defaults');
	return $files;
}

# XXX not used yet
sub parse_logfile($self, $filename)
{
	# don't bother if it's not there
	return unless -f $filename;
	require OpenBSD::LogParser;
	OpenBSD::LogParser->parse_file($self, $filename);
}

# build a hash of files needing registration
sub fill($class, $destdir, $ignored, $logfile, $state)
{
	my $self = $class->new($destdir, $ignored, $state);

	if (defined $logfile) {
		$self->{ignored}{$logfile} = 1;
#		$self->parse_logfile($logfile);
	}

	my $files = $self->scan;

	return $files;
}

1;
