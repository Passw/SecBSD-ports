COMMENT=	vulnerability scanner

V=	1.3.6
MODGO_MODNAME=	github.com/google/osv-scanner
MODGO_VERSION=	v${V}

DISTNAME=	osv-scanner-${MODGO_VERSION}
PKGNAME=	osv-scanner-${V}

CATEGORIES=	security

HOMEPAGE=	https://google.github.io/osv-scanner

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
