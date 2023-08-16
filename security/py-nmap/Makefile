COMMENT=		nmap and access scan results

MODPY_EGG_VERSION=	0.7.1
DISTNAME=		python-nmap-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/^python-/py-/}

CATEGORIES=		security

HOMEPAGE=		https://xael.org/pages/python-nmap-en.html

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools

FLAVORS=	python3
FLAVOR?=	python3

.include <bsd.port.mk>
