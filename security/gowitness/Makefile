COMMENT=	web screenshot utility using chrome headless

MODGO_MODNAME=	github.com/sensepost/gowitness
MODGO_VERSION=	v0.0.0-20230725061210-0186397ddfd0

DISTNAME=	gowitness-${MODGO_VERSION}
PKGNAME=	gowitness-2.5.0

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

WANTLIB+= 	c pthread

MODULES=	lang/go

RUN_DEPENDS=	www/ungoogled-chromium

.include "modules.inc"

.include <bsd.port.mk>
