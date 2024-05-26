COMMENT=	file support for asyncio

MODPY_EGG_VERSION=	1.0.2

DISTNAME=	pyppeteer-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

HOMEPAGE=	https://github.com/pyppeteer/pyppeteer

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-appdirs${MODPY_FLAVOR} \
		devel/py-importlib-metadata${MODPY_FLAVOR} \
		devel/py-pyee${MODPY_FLAVOR} \
		devel/py-tqdm${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR} \
		net/py-websockets${MODPY_FLAVOR}

.include <bsd.port.mk>
