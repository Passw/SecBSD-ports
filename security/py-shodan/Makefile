COMMENT=	command-line utility for Shodan

MODPY_EGG_VERSION=	1.29.1

DISTNAME=	shodan-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

HOMEPAGE=	https://github.com/achillean/shodan-python

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-click${MODPY_FLAVOR} \
		devel/py-click-plugins${MODPY_FLAVOR} \
		devel/py-colorama${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		devel/py-xlsxwriter${MODPY_FLAVOR}

NO_TEST=	Yes

.include <bsd.port.mk>
