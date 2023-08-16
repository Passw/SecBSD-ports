COMMENT=	rate limit lib

MODPY_EGG_VERSION=	3.5.0

DISTNAME=	limits-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-deprecated${MODPY_FLAVOR} \
		devel/py-importlib-resources${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR}

.include <bsd.port.mk>
