COMMENT=		Python client library for the OpenAI API

MODPY_EGG_VERSION=	0.27.8
DISTNAME=		openai-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools
NO_TEST=		Yes

FLAVOR=			python3
FLAVORS=		python3

BUILD_DEPENDS+=${RUN_DEPENDS} \
		devel/py-tqdm${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-aiohttp${MODPY_FLAVOR}

.include <bsd.port.mk>