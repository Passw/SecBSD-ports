COMMENT=		fingerprint web application firewall

DISTNAME=		wafw00f-2.1.0

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# BSD-3-Clause
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=		EnableSecurity
GH_PROJECT=		wafw00f
GH_COMMIT=		d60c9e10ac981c28cb7d18e08ec2225f058355e9

MODULES=		lang/python
MODPY_ADJ_FILES=	wafw00f/*.py \
			wafw00f/lib/*.py \
			wafw00f/plugins/*.py \
			wafw00f/bin/wafw00f

MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-pluginbase \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
