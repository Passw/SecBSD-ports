COMMENT=		username social networks tool

MODPY_DISTV=		0.15.0
DISTNAME=		sherlock_project-${MODPY_DISTV}
PKGNAME=		sherlock-${MODPY_DISTV}

CATEGORIES=		osint

HOMEPAGE=		https://sherlock-project.github.io

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		devel/py-poetry-core
RUN_DEPENDS=		devel/py-certifi \
			devel/py-colorama \
			math/py-pandas \
			net/py-socks \
			net/py-stem \
			textproc/py-openpyxl \
			www/py-requests \
			www/py-requests-futures \
			www/py-torrequest

.include <bsd.port.mk>
