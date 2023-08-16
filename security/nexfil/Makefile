COMMENT=		finding profiles by username

MODPY_EGG_VERSION= 	1.0.5
GH_COMMIT=		4d93c577c38e91e352175e36a4872f64d4aeb9d4
GH_ACCOUNT=		thewhiteh4t
GH_PROJECT=		nexfil

DISTNAME=		nexfil-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/thewhiteh4t/nexfil

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_ADJ_FILES=	nexfil.py

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/py-configargparse${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR} \
			www/py-tldextract \
			www/py-requests${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			www/py-undetected-chromedriver${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/nexfil

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/nexfil.py
	ln -s ${TRUEPREFIX}/share/nexfil/nexfil.py \
	${PREFIX}/bin/nexfil

post-install:
	rm -rf ${INSTDIR}/{.gitignore,requirements.txt}

.include <bsd.port.mk>
