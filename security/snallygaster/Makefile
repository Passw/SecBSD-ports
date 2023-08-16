COMMENT=		scan for secret files on HTTP servers

MODPY_EGG_VERSION=	0.0.12
GH_ACCOUNT=		hannob
GH_PROJECT=		snallygaster
GH_TAGNAME=		v${MODPY_EGG_VERSION}

DISTNAME=		snallygaster-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/hannob/snallygaster

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# CC0-1.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		www/py-urllib3${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR}

.include <bsd.port.mk>
