COMMENT=		credential reuse attacks tool

MODPY_EGG_VERSION=	0.4.4
DISTNAME=		cr3d0v3r-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/D4Vinci/Cr3dOv3r

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		D4Vinci
GH_PROJECT=		Cr3dOv3r
GH_COMMIT=		99a1660e47342ec9664a9231877d24a2eff829af

MODULES=		lang/python

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			www/py-mechanicalsoup \
			www/py-requests${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/cr3d0v3r

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/Cr3d0v3r.py
	ln -s ${TRUEPREFIX}/share/cr3d0v3r/Cr3d0v3r.py \
	${PREFIX}/bin/cr3d0v3r

post-install:
	rm ${INSTDIR}/{*.txt,Dockerfile,.gitignore,.gitattributes}
	cd ${INSTDIR}/Data && rm *.png

.include <bsd.port.mk>
