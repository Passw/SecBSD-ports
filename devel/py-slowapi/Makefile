COMMENT=	rate limiting extension

MODPY_EGG_VERSION=	0.1.8

DISTNAME=	slowapi-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/laurents/slowapi

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-poetry-core${MODPY_FLAVOR} \
		devel/py-limits${MODPY_FLAVOR}

.include <bsd.port.mk>
