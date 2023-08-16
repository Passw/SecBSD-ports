COMMENT=	automated webapp testing framework

MODGO_MODNAME=	github.com/jaeles-project/jaeles
MODGO_VERSION=	v0.0.0-20230713070845-66f393d9f11a

DISTNAME=	jaeles-${MODGO_VERSION}
PKGNAME=	jaeles-0.17.1

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

RUN_DEPENDS=	security/jaeles-signatures

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
