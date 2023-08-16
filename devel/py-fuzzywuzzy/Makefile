COMMENT=		fuzzy string matching in Python

MODPY_EGG_VERSION=	0.18.0
DISTNAME=		fuzzywuzzy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/seatgeek/fuzzywuzzy

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=	seatgeek
GH_PROJECT=	fuzzywuzzy
GH_TAGNAME=	${MODPY_EGG_VERSION}

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-levenshtein${MODPY_FLAVOR}

.include <bsd.port.mk>
