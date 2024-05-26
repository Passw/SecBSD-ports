COMMENT=	cloud penetration tests

MODGO_MODNAME=	github.com/BishopFox/cloudfox
MODGO_VERSION=	v1.12.2

DISTNAME=	cloudfox-${MODGO_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/BishopFox/cloudfox

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

RUN_DEPENDS=	sysutils/awscli

.include "modules.inc"

.include <bsd.port.mk>
