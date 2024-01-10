COMMENT=	customizable vulnerability scanner
CATEGORIES=     security
MAINTAINER=     Purple Rain <purplerain@secbsd.org>

MODGO_VERSION=  v3.1.4
MODGO_MODNAME=	github.com/projectdiscovery/nuclei/v3
DISTNAME=	nuclei-${MODGO_VERSION}

HOMEPAGE=	https://github.com/projectdiscovery/nuclei

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
