COMMENT=		mongoDB pentesting

MODPY_EGG_VERSION=	0.1.1
DISTNAME=		mongoaudit-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools

FLAVOR=			python3
FLAVORS=		python3

BUILD_DEPENDS+=${RUN_DEPENDS} \
		databases/py-mongo${MODPY_FLAVOR} \
		devel/py-urwid${MODPY_FLAVOR}

NO_TEST=	Yes

.include <bsd.port.mk>
