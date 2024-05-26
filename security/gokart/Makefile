COMMENT=	static analysis tool for Go code

V=		0.5.1
MODGO_MODNAME=	github.com/praetorian-inc/gokart
MODGO_VERSION=	v${V}

DISTNAME=	gokart-${MODGO_VERSION}
PKGNAME=	gokart-${V}

CATEGORIES=	security

HOMEPAGE=       https://github.com/praetorian-inc/gokar

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
