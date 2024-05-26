COMMENT=		fingerprint web application firewall

DISTNAME=		wafw00f-2.2.0

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# BSD-3-Clause
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=		EnableSecurity
GH_PROJECT=		wafw00f
GH_COMMIT=		ae6a67f23c7bc7fd913d5a32d9b81efefefa2da4

MODULES=		lang/python
MODPY_ADJ_FILES=	wafw00f/*.py \
			wafw00f/lib/*.py \
			wafw00f/plugins/*.py \
			wafw00f/bin/wafw00f

MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-pluginbase${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
