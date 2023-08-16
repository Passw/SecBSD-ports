COMMENT=		scanner to gather OSINT and OWASP vulns

GH_COMMIT=		e5ca5f8d8c65669b2b009dace7b09dd812375754
GH_ACCOUNT=		1N3
GH_PROJECT=		BlackWidow
MODPY_EGG_VERSION=	1.3
DISTNAME=		blackwidow-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/1N3/BlackWidow

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_ADJ_FILES=	blackwidow injectx.py

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			textproc/py-coloredlogs${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-cookies${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/blackwidow

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	ln -s ${TRUEPREFIX}/share/blackwidow/blackwidow \
	${PREFIX}/bin/blackwidow
	ln -s ${TRUEPREFIX}/share/blackwidow/injectx.py \
	${PREFIX}/bin/injectx.py

post-install:
	rm -rf ${INSTDIR}/{.idea,Dockerfile,*.png}
	rm -rf ${INSTDIR}/{requirements.txt,install.sh}

.include <bsd.port.mk>
