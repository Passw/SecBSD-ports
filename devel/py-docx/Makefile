COMMENT=		create microsoft word docx files

MODPY_EGG_VERSION=	0.8.11
DISTNAME=		python-docx-${MODPY_EGG_VERSION}
PKGNAME=		py-docx-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/python-openxml/python-docx

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		python-openxml
GH_PROJECT=		python-docx
GH_TAGNAME=		v${MODPY_EGG_VERSION}

MODULES=		lang/python

RUN_DEPENDS=		textproc/py-lxml${MODPY_FLAVOR}

MODPY_PYBUILD=		setuptools
NO_TEST=		Yes

FLAVOR=			python3
FLAVORS=		python3

.include <bsd.port.mk>
