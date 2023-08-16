COMMENT=		http parameter discovery suite

MODPY_EGG_VERSION=	2.2.1
DISTNAME=		arjun-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools

FLAVOR=			python3
FLAVORS=		python3

BUILD_DEPENDS+=${RUN_DEPENDS} \
		www/py-requests${MODPY_FLAVOR} \
		textproc/py-dicttoxml${MODPY_FLAVOR}

.include <bsd.port.mk>
