COMMENT=	email generator with OTPs

MODPY_EGG_VERSION=	0.0.3
DISTNAME=	ote-${MODPY_EGG_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/s0md3v/ote

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes

MODPY_PYBUILD=	setuptools

FLAVOR=		python3
FLAVORS=	python3

BUILD_DEPENDS+=	${RUN_DEPENDS} \
		www/py-requests${MODPY_FLAVOR} \
		textproc/py-html2text${MODPY_FLAVOR}

.include <bsd.port.mk>
