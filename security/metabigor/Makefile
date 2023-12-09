COMMENT=	osint intelligence framework

V=	1.2.6
MODGO_MODNAME=	github.com/j3ssie/metabigor
MODGO_VERSION=	v${V}

DISTNAME=	metabigor-${MODGO_VERSION}
PKGNAME=	metabigor-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/j3ssie/metabigor

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

RUN_DEPENDS=	net/nmap \
		security/masscan \
		security/rustscan
		
.include "modules.inc"

.include <bsd.port.mk>
