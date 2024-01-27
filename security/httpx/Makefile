COMMENT=	multi-purpose HTTP toolkit

V=		1.3.9
MODGO_MODNAME=	github.com/projectdiscovery/httpx
MODGO_VERSION=	v${V}

DISTNAME=	httpx-${MODGO_VERSION}
PKGNAME=	httpx-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/projectdiscovery/httpx

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
