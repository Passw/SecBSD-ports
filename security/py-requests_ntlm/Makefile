COMMENT=		NTLM authentication support

MODPY_EGG_VERSION=	1.1.0
DISTNAME=	requests_ntlm-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

HOMEPAGE=	https://github.com/requests/requests-ntlm

# ISC
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	requests
GH_PROJECT=	requests-ntlm
GH_TAGNAME=	v${MODPY_EGG_VERSION}

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

BUILD_DEPENDS+=	${RUN_DEPENDS} \
		security/py-cryptography${MODPY_FLAVOR} \
		security/py-ntlm-auth${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR?=	python3

.include <bsd.port.mk>
