COMMENT=		parsing whois data for IPv4 and IPv6

MODPY_EGG_VERSION=	1.2.0
DISTNAME=		ipwhois-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# BSD
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		secynic
GH_PROJECT=		ipwhois
GH_TAGNAME=		v${MODPY_EGG_VERSION}

MODULES=		lang/python

RUN_DEPENDS=		net/py-dnspython${MODPY_FLAVOR}

MODPY_PYBUILD=		setuptools

FLAVOR=			python3
FLAVORS=		python3

.include <bsd.port.mk>
