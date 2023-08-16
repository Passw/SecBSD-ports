COMMENT=	attack surface mapping and asset discovery

MODGO_MODNAME=	github.com/owasp-amass/amass/v4
MODGO_VERSION=	v4.1.0

DISTNAME=	amass-${MODGO_VERSION}
PKGNAME=	amass-4.1.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/owasp-amass/amass

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
