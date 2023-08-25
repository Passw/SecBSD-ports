COMMENT=	customizable vulnerability scanner

V=		2.9.12
MODGO_MODNAME=	github.com/projectdiscovery/nuclei/v2
MODGO_VERSION=	v${V}

DISTNAME=	nuclei-${MODGO_VERSION}
PKGNAME=	nuclei-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/projectdiscovery/nuclei

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

NO_TEST=	Yes

.include "modules.inc"

.include <bsd.port.mk>
