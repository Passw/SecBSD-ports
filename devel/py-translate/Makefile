COMMENT=		online translation

MODPY_EGG_VERSION=	3.6.1
DISTNAME =		translate-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/terryyin/translate-python

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST=		Yes

FLAVORS=		python3
FLAVOR=			python3

BUILD_DEPENDS=		devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS=		devel/py-click${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			devel/py-libretranslate${MODPY_FLAVOR}

#WRKDIST=	${WRKDIR}/Badges-8767dca15b6c606935f22ffb5901b4100831e92b

.include <bsd.port.mk>
