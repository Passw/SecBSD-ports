COMMENT=	API rate limit decorator

MODPY_EGG_VERSION=	2.2.1
DISTNAME=	ratelimit-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

HOMEPAGE=	https://github.com/tomasbasham/ratelimit

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-test${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/pylint${MODPY_FLAVOR}

.include <bsd.port.mk>
