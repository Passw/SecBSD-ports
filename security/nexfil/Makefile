COMMENT=		finding profiles by username

MODPY_EGG_VERSION= 	1.0.6
DISTNAME=		nexfil-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/thewhiteh4t/nexfil

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools

FLAVOR=			python3
FLAVORS=		python3

RUN_DEPENDS=		devel/py-configargparse${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-tldextract${MODPY_FLAVOR} \
			www/py-undetected-chromedriver${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR}

.include <bsd.port.mk>
