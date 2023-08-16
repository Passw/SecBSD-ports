COMMENT=	audit git repos for secrets

V=	8.17.0
MODGO_MODNAME=	github.com/zricethezav/gitleaks/v8
MODGO_VERSION=	v${V}

DISTNAME=	gitleaks-${MODGO_VERSION}
PKGNAME=	gitleaks-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/zricethezav/gitleaks

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
