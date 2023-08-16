COMMENT=		user-agent generator

MODPY_EGG_VERSION=	0.1.10
DISTNAME=		user_agent-${MODPY_EGG_VERSION}
PKGNAME=		py-user-agent-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		https://github.com/lorien/user_agent

MAINTAINER =		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
