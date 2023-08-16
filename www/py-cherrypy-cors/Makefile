COMMENT=		cors handling as a cherrypy tool

MODPY_EGG_VERSION=	1.6

DISTNAME=		cherrypy-cors-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

HOMEPAGE=		https://github.com/yougov/cherrypy-cors

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		www/py-CherryPy${MODPY_FLAVOR} \
			www/py-httpagentparser \
			devel/py-setuptools_scm${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
