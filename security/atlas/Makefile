COMMENT=	sqlmap tamper suggester

DISTNAME=	atlas-1.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/m4ll0k/Atlas

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

DIST_TUPLE=	github m4ll0k Atlas 77bd6c8a456e264878bca1ea8e0ca4d1d0bcbd32 .

MODULES=	lang/python

MODPY_ADJ_FILES=	atlas.py \
			lib/*.py \
			tamper/*.py \
			waf/*.py

BUILD_DEPENDS+=	${RUN_DEPENDS} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR} \
		textproc/py-humanfriendly${MODPY_FLAVOR}

NO_BUILD=	Yes


INSTDIR=	${PREFIX}/share/atlas

post-extract:
	cp -r ${WRKDIR}/Atlas-77bd6c8a456e264878bca1ea8e0ca4d1d0bcbd32 ${WRKDIST}

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/atlas.py
	ln -s ${TRUEPREFIX}/share/atlas/atlas.py \
	${PREFIX}/bin/atlas

.include <bsd.port.mk>
