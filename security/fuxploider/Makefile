COMMENT=		file upload vulnerability scanner

MODPY_EGG_VERSION= 	1.0
GH_COMMIT=		ec8742bd31b8b9e222bba3a68dae6055a43e7998
GH_ACCOUNT=		almandin
GH_PROJECT=		fuxploider

DISTNAME=		fuxploider-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/almandin/fuxploider

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR} \
			textproc/py-coloredlogs${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/fuxploider

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/fuxploider.py
	ln -s ${TRUEPREFIX}/share/fuxploider/fuxploider.py \
		${PREFIX}/bin/fuxploider

post-install:
	rm -rf ${INSTDIR}/{.gitignore,Dockerfile}
	rm -rf ${INSTDIR}/{requirements.txt,screenshot.png}

.include <bsd.port.mk>
