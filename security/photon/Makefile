COMMENT=		fast crawler designed for OSINT

MODPY_EGG_VERSION= 	1.3.2
GH_COMMIT=		d4af460e95e5d962a53594d94d71d34d3a93f256
GH_ACCOUNT=		s0md3v
GH_PROJECT=		Photon

DISTNAME=		photon-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/s0md3v/Photon

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_ADJ_FILES=	photon.py

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			net/py-tld${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/photon

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/photon.py
	ln -s ${TRUEPREFIX}/share/photon/photon.py \
	${PREFIX}/bin/photon

.include <bsd.port.mk>
