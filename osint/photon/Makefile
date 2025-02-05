COMMENT=		fast crawler designed for OSINT

MODPY_DISTV= 		1.3.2
GH_COMMIT=		d88d5f3569f04390afb465c102bb8e5f59efb5fb
GH_ACCOUNT=		s0md3v
GH_PROJECT=		Photon

DISTNAME=		photon-${MODPY_DISTV}

CATEGORIES=		osint

HOMEPAGE=		https://github.com/s0md3v/Photon

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_ADJ_FILES=	photon.py

RUN_DEPENDS=		www/py-requests \
			www/py-urllib3 \
			net/py-tld

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/photon

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/photon.py
	ln -s ${TRUEPREFIX}/share/photon/photon.py \
	${PREFIX}/bin/photon

.include <bsd.port.mk>
