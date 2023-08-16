COMMENT=	directory file DNS and VHost busting tool

V=	3.5.0
MODGO_MODNAME=	github.com/OJ/gobuster/v3
MODGO_VERSION=	v${V}

DISTNAME=	gobuster-${MODGO_VERSION}
PKGNAME=	gobuster-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/OJ/gobuster

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>