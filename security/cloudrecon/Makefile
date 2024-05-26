COMMENT=	cloud recon tool

MODGO_MODNAME=	github.com/g0ldencybersec/CloudRecon
MODGO_VERSION=	v1.0.4

DISTNAME=	cloudrecon-${MODGO_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/g0ldencybersec/CloudRecon

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES = \
        github.com/mattn/go-sqlite3      v1.14.17

.include <bsd.port.mk>
