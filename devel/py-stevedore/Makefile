COMMENT=		manage dynamic plugins

MODPY_EGG_VERSION=	5.1.0
DISTNAME=		stevedore-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://docs.openstack.org/stevedore/latest

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=	lang/python

BUILD_DEPENDS+=	${RUN_DEPENDS} \
		devel/py-pbr${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

NO_TEST=	Yes

.include <bsd.port.mk>
