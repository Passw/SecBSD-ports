COMMENT=	 API wrapper for Censys

MODPY_EGG_VERSION=	2.2.2

DISTNAME=	censys-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

HOMEPAGE=	https://github.com/censys/censys-python

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODULES=	lang/python

RUN_DEPENDS=	www/py-requests${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR} \
		devel/py-backoff${MODPY_FLAVOR} \
		devel/py-rich${MODPY_FLAVOR} \
		devel/py-importlib-metadata${MODPY_FLAVOR} \
		devel/py-argcomplete${MODPY_FLAVOR}

NO_TEST=	Yes

.include <bsd.port.mk>
