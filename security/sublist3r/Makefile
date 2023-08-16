COMMENT=		subdomains enumeration tool 

MODPY_EGG_VERSION=	1.1
DISTNAME=		sublist3r-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		aboul3la
GH_PROJECT=		Sublist3r
GH_COMMIT=		729d649ec5370730172bf6f5314aafd68c874124

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		net/py-dnspython${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
