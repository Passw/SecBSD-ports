COMMENT=	vulnerability scanner
CATEGORIES=     security
MAINTAINER=     Purple Rain <purplerain@secbsd.org>

MODGO_VERSION=  v1.8.3
MODGO_MODNAME=	github.com/google/osv-scanner
DISTNAME=	osv-scanner-${MODGO_VERSION}

HOMEPAGE=	https://google.github.io/osv-scanner

# Apache-2.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
