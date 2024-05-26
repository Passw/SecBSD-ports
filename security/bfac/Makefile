COMMENT=		backup file artifacts checker tool

MODPY_EGG_VERSION=	1.4
DISTNAME=		bfac-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

HOMEPAGE=		https://github.com/mazen160/bfac

# GPL-3.0
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=		mazen160
GH_PROJECT=		bfac
GH_COMMIT=		18dabccea23b4eefb2dfa13fd99168411f5e9828

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-colorama${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
