COMMENT=	extract data from HTML and XML

MODPY_EGG_VERSION=	1.8.1

DISTNAME=	parsel-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/scrapy/parsel

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# BSD-3-Clause
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-jmespath${MODPY_FLAVOR} \
		devel/py-w3lib${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		textproc/py-cssselect${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

.include <bsd.port.mk>
