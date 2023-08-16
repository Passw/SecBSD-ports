COMMENT=	gTLD ccTLD tool for domains

MODPY_EGG_VERSION=	3.4.4

DISTNAME=	tldextract-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://github.com/john-kurkowski/tldextract

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS+=	${RUN_DEPENDS} \
		net/py-idna${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-file${MODPY_FLAVOR} \
		sysutils/py-filelock${MODPY_FLAVOR}

.include <bsd.port.mk>
