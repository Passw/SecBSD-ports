COMMENT=	leverage ASN to look up IP addresses

DISTNAME=	asnlookup-1.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/yassineaboukir/asnlookup

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

DIST_TUPLE=	github yassineaboukir asnlookup 80ecd0279504e413fbea40812ef194ce9714d2b8 .

MODULES=	lang/python

MODPY_ADJ_FILES=	asnlookup.py

RUN_DEPENDS=	graphics/py-termcolor${MODPY_FLAVOR} \
		net/nmap \
		www/py-requests${MODPY_FLAVOR} \
		security/masscan

WRKDIST=	${WRKDIR}/Asnlookup-80ecd0279504e413fbea40812ef194ce9714d2b8

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/asnlookup

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/asnlookup.py
	ln -s ${TRUEPREFIX}/share/asnlookup/asnlookup.py \
	${PREFIX}/bin/asnlookup

post-install:
	rm -f ${INSTDIR}/{.gitignore,docker-compose.yml,Dockerfile}
	rm -f ${INSTDIR}/requirements.txt

.include <bsd.port.mk>
