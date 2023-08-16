COMMENT=	find credentials all over the place

V=		3.49.0
MODGO_MODNAME=	github.com/trufflesecurity/trufflehog/v3
MODGO_VERSION=	v${V}

DISTNAME=	trufflehog-${MODGO_VERSION}
PKGNAME=	trufflehog-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/trufflesecurity/trufflehog

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# AGPL-3.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

BUILD_DEPENDS+=${RUN_DEPENDS} \
		devel/git

.include "modules.inc"

.include <bsd.port.mk>
