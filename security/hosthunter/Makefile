COMMENT=		recon tool for discovering hostnames

MODPY_EGG_VERSION=	2.0
GH_COMMIT=		553f1c75eaba3e7c2ed911206cd4fe4c7c2b0e90
GH_ACCOUNT=		SpiderLabs
GH_PROJECT=		HostHunter

DISTNAME=		hosthunter-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/SpiderLabs/HostHunter

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	hosthunter.py

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR} \
			devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-validator-collection${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			www/py-fake-useragent${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/hosthunter

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/hosthunter.py
	ln -s ${TRUEPREFIX}/share/hosthunter/hosthunter.py \
	${PREFIX}/bin/hosthunter

post-install:
	rm ${INSTDIR}/requirements.txt

.include <bsd.port.mk>
