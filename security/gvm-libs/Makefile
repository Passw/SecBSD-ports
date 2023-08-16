COMMENT=	libraries for openvas

VERSION=	22.4.4
DISTNAME=	gvm-libs-${VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/greenbone/gvm-libs

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	greenbone
GH_PROJECT=	gvm-libs
GH_TAGNAME=	v22.4.4

MODULES=	devel/cmake

RUN_DEPENDS=	devel/git \
		devel/doxygen \
		net/freeradius

LIB_DEPENDS=	databases/libhiredis \
		databases/openldap \
		devel/glib2 \
		net/libnet/1.1 \
		security/gnutls \
		security/libgcrypt \
		security/libssh \
		security/gpgme \
		sysutils/e2fsprogs \
		textproc/libxml


CONFIGURE_STYLE=cmake
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libnet-1.1 \
		`libnet-config-1.1 --defines`" \
		LIBS="-L${LOCALBASE}/lib/libnet-1.1 -lnet"

WANTLIB+=gcrypt gnutls gpg-error gpgme
WANTLIB+=ldap pthread uuid ssh
WANTLIB=c pcap lib/libnet-1.1/net=11
WANTLIB+=gio-2.0 glib-2.0 gobject-2.0 hiredis intl pthread xml2
WANTLIB+=z

LIB_DEPENDS=	net/libnet/1.1

MAKE_FLAGS=	CC="${CC}"

NO_TEST=	Yes

.include <bsd.port.mk>