COMMENT=		interface for HTTPs requests over Tor

MODPY_EGG_VERSION=	0.1.0
DISTNAME=		torrequest-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

HOMEPAGE=		https://github.com/erdiaker/torrequest

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			net/py-socks${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			net/py-stem${MODPY_FLAVOR}

.include <bsd.port.mk>