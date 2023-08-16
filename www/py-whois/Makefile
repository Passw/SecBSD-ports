COMMENT=		module for parse WHOIS data

MODPY_EGG_VERSION=	0.8.2
DISTNAME=		python-whois-${MODPY_EGG_VERSION}
PKGNAME=		py-whois-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		https://github.com/richardpenman/pywhois

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		richardpenman
GH_PROJECT=		whois
GH_COMMIT=		d2984dfeab630f7f02b0830487e8786f34f7ce6d

MODULES=		lang/python

RUN_DEPENDS=		devel/py-future${MODPY_FLAVOR}

MODPY_PYBUILD=		setuptools

FLAVORS=		python3
FLAVOR?=		python3

.include <bsd.port.mk>
