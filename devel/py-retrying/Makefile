COMMENT=	retrying library

MODPY_EGG_VERSION=	1.3.4

DISTNAME=	retrying-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/groodt/retrying

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
