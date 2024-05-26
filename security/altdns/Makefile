COMMENT=		permutation tool for subdomains

MODPY_EGG_VERSION=	1.0.2
DISTNAME=		py-altdns-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/infosec-au/altdns

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools

FLAVOR=			python3
FLAVORS=		python3

RUN_DEPENDS=	devel/py-configargparse${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		graphics/py-termcolor${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		www/py-tldextract${MODPY_FLAVOR}

.include <bsd.port.mk>
