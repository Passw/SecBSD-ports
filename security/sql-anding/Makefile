COMMENT=		blind sql injections tool

MODPY_EGG_VERSION= 	0.1
DISTNAME=		sql-anding-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		tr3w
GH_PROJECT=		sql-anding
GH_COMMIT=		64261c504417938af98fb3691d8450a4bc1ceede

MODULES=		lang/python

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR} \
			devel/py-configargparse${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/sql-anding

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/sql-anding.py
	ln -s ${TRUEPREFIX}/share/sql-anding/sql-anding.py \
	${PREFIX}/bin/sql-anding

.include <bsd.port.mk>
