COMMENT=	read resources from Python packages

MODPY_EGG_VERSION=	5.12.0

DISTNAME=	importlib_resources-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/python/importlib_resources

MAINTAINER=     Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD=	setuptools_scm

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}

.include <bsd.port.mk>
