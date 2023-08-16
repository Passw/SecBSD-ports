COMMENT=		login brute forcer

GH_TAGNAME=		2.2
GH_ACCOUNT=             jmk-foofus
GH_PROJECT=             medusa

DISTNAME=		medusa-${GH_TAGNAME}

CATEGORIES=		security

HOMEPAGE=		http://h.foofus.net/?page_id=51

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=		Yes

WANTLIB=		c crypto gnutls m pthread ssl ssh2

LIB_DEPENDS=		security/gnutls \
			security/libssh2

MAKE_ENV=		CC="${CC}" CFLAGS="${CFLAGS}"

AUTORECONF=		autoreconf -i
CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		TRUEPREFIX="${TRUEPREFIX}"

.include <bsd.port.mk>
