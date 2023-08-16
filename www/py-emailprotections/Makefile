COMMENT=		library to interact with SPF and DMARC

MODPY_EGG_VERSION=	0.8.5
DISTNAME=		emailprotectionslib-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

HOMEPAGE=	 	https://github.com/poipoii/pyemailprotectionslib

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		poipoii
GH_PROJECT=		pyemailprotectionslib
GH_COMMIT=		7fc1efff2ebc6110bb4b96eb61a4c736f5f43a92

MODULES=		lang/python

RUN_DEPENDS=		net/py-dnslib${MODPY_FLAVOR} \
			www/py-tldextract \
			devel/py-future${MODPY_FLAVOR}

MODPY_PYBUILD=		setuptools

.include <bsd.port.mk>
