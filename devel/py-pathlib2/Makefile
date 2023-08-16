COMMENT=		object-oriented filesystem paths

MODPY_EGG_VERSION=	2.3.5
DISTNAME=		pathlib2-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/mcmtroffaes/pathlib2

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

FLAVOR=			python3
FLAVORS=		python3

RUN_DEPENDS+=		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS=		lang/python/${MODPY_VERSION},-tests \
			devel/py-pathlib2${MODPY_FLAVOR}

RUN_DEPENDS+=		devel/py-scandir${MODPY_FLAVOR}
TEST_DEPENDS+=		devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC}/tests && ${MODPY_BIN} test_pathlib2.py

.include <bsd.port.mk>
