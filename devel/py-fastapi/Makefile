COMMENT=		FastAPI framework

MODPY_EGG_VERSION=	0.97.0

DISTNAME=		fastapi-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/tiangolo/fastapi

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		net/py-uvicorn${MODPY_FLAVOR} \
			devel/pre-commit${MODPY_FLAVOR}

NO_TEST=		Yes

.include <bsd.port.mk>
