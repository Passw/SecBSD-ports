COMMENT=		one-liners for penetration testing

MODPY_EGG_VERSION=	2.1
GH_COMMIT=		9fdfa5f0b9c698dfbd4cdfe7d2473192777ae1c6
GH_ACCOUNT=		D4Vinci
GH_PROJECT=		One-Lin3r

DISTNAME=		one-lin3r-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=      		https://github.com/D4Vinci/One-Lin3r

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/py-terminaltables${MODPY_FLAVOR} \
			devel/py-perclip${MODPY_FLAVOR} \
			devel/py-prompt_toolkit${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR} \
			devel/py-configargparse${MODPY_FLAVOR}

.include <bsd.port.mk>
