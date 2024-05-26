COMMENT=		bindings to the Google search engine

MODPY_EGG_VERSION=	3.0.0
DISTNAME=		google-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

RUN_DEPENDS=		www/py-beautifulsoup4${MODPY_FLAVOR}

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=		python3

.include <bsd.port.mk>
