COMMENT=		library for OpenAI API

MODPY_EGG_VERSION=	0.28.0
DISTNAME=		openai-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/openai/openai-python

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-tqdm${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

NO_TEST=		Yes

.include <bsd.port.mk>
