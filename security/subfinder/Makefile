COMMENT=	subdomain discovery tool

V=	2.6.5
MODGO_MODNAME=	github.com/projectdiscovery/subfinder/v2
MODGO_VERSION=	v${V}

DISTNAME=	subfinder-${MODGO_VERSION}
PKGNAME=	subfinder-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/projectdiscovery/subfinder

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
