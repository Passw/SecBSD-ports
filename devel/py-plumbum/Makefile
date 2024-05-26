COMMENT=		shells combinator

MODPY_EGG_VERSION=	1.8.2
DISTNAME=		plumbum-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/tomerfiliba/plumbum

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

BUILD_DEPENDS+=		devel/py-hatchling${MODPY_FLAVOR} \
			devel/py-hatch-vcs${MODPY_FLAVOR}

.include <bsd.port.mk>
