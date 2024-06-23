COMMENT=	audit git repos for secrets

MODGO_MODNAME=	github.com/zricethezav/gitleaks/v8
MODGO_VERSION=	v8.18.4

DISTNAME=	gitleaks-${MODGO_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/zricethezav/gitleaks

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
