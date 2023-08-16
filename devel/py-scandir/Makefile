COMMENT=		improved directory iterator and faster os.walk()

MODPY_EGG_VERSION=	1.10.0
DISTNAME=		scandir-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/benhoyt/scandir

MAINTAINER =		Purple Rain <purplerain@secbsd.org>

# BSD 3-Clause
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

FLAVOR=			python3
FLAVORS=		python3

WANTLIB+=		pthread ${MODPY_WANTLIB}

TEST_DEPENDS+=		${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC}/test && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>