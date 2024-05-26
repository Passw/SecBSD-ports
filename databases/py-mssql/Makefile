COMMENT=		db-api interface to Microsoft SQL Server

MODPY_EGG_VERSION=	2.1.5
DISTNAME=		pymssql-${MODPY_EGG_VERSION}

PKGNAME=		py-${DISTNAME}

CATEGORIES=		databases

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# LGPL-2.1
PERMIT_PACKAGE=		Yes

WANTLIB=		pthread sybdb

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools

FLAVOR=			python3
FLAVORS=		python3

BUILD_DEPENDS=		devel/py-setuptools_git${MODPY_FLAVOR}
RUN_DEPENDS=		lang/cython${MODPY_FLAVOR} \
			devel/py-setuptools_scm${MODPY_FLAVOR}

LIB_DEPENDS=		databases/freetds

.include <bsd.port.mk>
