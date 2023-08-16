COMMENT=		metasploit credential

DISTNAME=		metasploit-credential-6.0.5
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# BSD-3-clause
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-metasploit-concern \
			devel/ruby-metasploit-data-models \
			devel/ruby-metasploit-model \
			net/ruby-net-ssh \
			databases/ruby-pg \
			devel/ruby-railties \
			devel/ruby-rex-socket \
			devel/ruby-ntlm \
			archivers/ruby-rubyzip

CONFIGURE_STYLE= 	ruby gem

.include <bsd.port.mk>
