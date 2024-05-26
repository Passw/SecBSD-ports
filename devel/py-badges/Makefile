COMMENT=	advanced and intuitive printing

DISTNAME=	py-badges-1.0.0

CATEGORIES=	devel

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

HOMEPAGE=	https://github.com/EntySec/Badges

# MIT
PERMIT_PACKAGE=	Yes

DIST_TUPLE=	github EntySec Badges \
		8767dca15b6c606935f22ffb5901b4100831e92b .

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	devel/py-translate${MODPY_FLAVOR} \
		devel/py-colorscript${MODPY_FLAVOR}

WRKDIST=	${WRKDIR}/Badges-8767dca15b6c606935f22ffb5901b4100831e92b


.include <bsd.port.mk>
