COMMENT=	Selenium webdriver Chrome replacement

MODPY_EGG_VERSION=	3.5.0

DISTNAME=	undetected-chromedriver-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://github.com/ultrafunkamsterdam/undetected-chromedriver

# GPL-3.0
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS+=${RUN_DEPENDS} \
		www/py-selenium${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		net/py-websockets${MODPY_FLAVOR}

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

.include <bsd.port.mk>
