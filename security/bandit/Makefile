COMMENT=		tool to find security issues in Python code

MODPY_EGG_VERSION=	1.7.6
DISTNAME=		bandit-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/PyCQA/bandit

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools

FLAVOR=			python3
FLAVORS=		python3

BUILD_DEPENDS=  devel/py-pbr${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-colorama${MODPY_FLAVOR} \
		devel/py-importlib-metadata${MODPY_FLAVOR} \
		devel/py-gitpython${MODPY_FLAVOR} \
		devel/py-rich${MODPY_FLAVOR} \
		devel/py-stevedore${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
