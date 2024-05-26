COMMENT=		symmetric distributed computing library

MODPY_EGG_VERSION=	5.3.1
DISTNAME=		rpyc-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/tomerfiliba-org/rpyc

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI=		Yes
MODPY_PYBUILD=          hatchling

RUN_DEPENDS=		devel/py-plumbum${MODPY_FLAVOR}

.include <bsd.port.mk>
