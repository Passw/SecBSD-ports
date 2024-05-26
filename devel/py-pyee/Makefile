COMMENT=	nodejs eventEmitter for Python

MODPY_EGG_VERSION=	8.1.0

DISTNAME=	pyee-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/jfhbrook/pyee

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/py-test-runner${MODPY_FLAVOR} \
		devel/py-vcversioner${MODPY_FLAVOR}

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
