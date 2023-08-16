COMMENT=		extracts OS browser information

MODPY_EGG_VERSION=	1.9.3
DISTNAME=		httpagentparser-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

HOMEPAGE=		https://github.com/shon/httpagentparser

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		shon
GH_PROJECT=		httpagentparser
GH_COMMIT=		0c1bd09c68b52be9aac947ff1070231eb23667bf

MODULES=		lang/python

RUN_DEPENDS=		devel/py-tox${MODPY_FLAVOR}

MODPY_PYBUILD=		setuptools
NO_TEST=		Yes

.include <bsd.port.mk>
