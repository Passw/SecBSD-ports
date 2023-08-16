COMMENT=		asynchronous tcp port scanner
DISTNAME=		masscan-1.3.2

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# AGPLv3 Robert David Graham
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	robertdavidgraham
GH_PROJECT=	masscan
GH_COMMIT=	9065684c52682d3e12a35559ef72cd0f07838bff

WANTLIB+=	c m pthread

NO_TEST=	Yes

USE_GMAKE=	Yes

MAKE_ENV=	CC="${CC}"

.include <bsd.port.mk>