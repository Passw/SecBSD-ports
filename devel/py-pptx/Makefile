COMMENT=		generate pptx files

MODPY_EGG_VERSION=	0.6.21
DISTNAME=		python-pptx-${MODPY_EGG_VERSION}
PKGNAME=		py-pptx-${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/scanny/python-pptx

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		scanny
GH_PROJECT=		python-pptx
GH_TAGNAME=		v${MODPY_EGG_VERSION}

MODULES=		lang/python

RUN_DEPENDS=		devel/py-xlsxwriter${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

MODPY_PYBUILD=		setuptools
NO_TEST=		Yes

FLAVOR=			python3
FLAVORS=		python3

.include <bsd.port.mk>
