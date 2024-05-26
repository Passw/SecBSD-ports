COMMENT=	wrapper around massdns

V=	1.0.9
MODGO_MODNAME=	github.com/projectdiscovery/shuffledns
MODGO_VERSION=	v${V}

DISTNAME=	shuffledns-${MODGO_VERSION}
PKGNAME=	shuffledns-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/projectdiscovery/shuffledns

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

RUN_DEPENDS=	security/massdns

.include "modules.inc"

.include <bsd.port.mk>
