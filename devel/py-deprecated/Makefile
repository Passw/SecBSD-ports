COMMENT=	deprecated decorator

MODPY_EGG_VERSION=	1.2.14

DISTNAME=	Deprecated-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/tantale/deprecated

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-wrapt${MODPY_FLAVOR}

NO_TEST=	Yes

.include <bsd.port.mk>
