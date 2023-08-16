COMMENT=		extract data through non-boolean blind sql injections

MODPY_EGG_VERSION= 	0.1
GH_COMMIT=		dc6eb1b7873744ca8a1261f12f1a158d70db6e71
GH_ACCOUNT=		tr3w
GH_PROJECT=		lightspeed

DISTNAME=		lightspeed-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR} \
			devel/py-configargparse${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/lightspeed

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/lightspeed.py
	ln -s ${TRUEPREFIX}/share/lightspeed/lightspeed.py \
	${PREFIX}/bin/lightspeed

.include <bsd.port.mk>
