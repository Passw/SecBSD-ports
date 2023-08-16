COMMENT=	JSON encoder and decoder

MODPY_EGG_VERSION=	5.8.0

DISTNAME=	ujson-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/ultrajson/ultrajson

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB+= ${COMPILER_LIBCXX} m

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-setuptools_scm${MODPY_FLAVOR}

NO_TEST=	Yes

.include <bsd.port.mk>
