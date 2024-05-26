COMMENT=	camera exploitation tool

MODPY_EGG_VERSION=1.0.0
DISTNAME=	camover-${MODPY_EGG_VERSION}

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

DIST_TUPLE=	github EntySec CamOver \
		478c4f3255de8d6582dfc0658461fa14c5e0ce1b .

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	security/py-shodan${MODPY_FLAVOR} \
		devel/py-badges${MODPY_FLAVOR}

WRKDIST=	${WRKDIR}/CamOver-478c4f3255de8d6582dfc0658461fa14c5e0ce1b

.include <bsd.port.mk>
