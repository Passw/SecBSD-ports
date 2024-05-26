COMMENT=		cloudflare IP finder

DISTNAME=		cloakquest3r-1.0.5

CATEGORIES=		security

HOMEPAGE=		https://github.com/spyboy-productions/CloakQuest3r

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

DIST_TUPLE=		github spyboy-productions CloakQuest3r \
			97e3d317f5a07455c5598e8eb5dfe3c01ac95bc5 .

MODULES=		lang/python

RUN_DEPENDS=		devel/py-colorama${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/cloakquest3r

post-extract:
	cp -r ${WRKDIR}/CloakQuest3r-97e3d317f5a07455c5598e8eb5dfe3c01ac95bc5 \
		${WRKDIST}

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/cloakquest3r.py
	ln -s ${TRUEPREFIX}/share/cloakquest3r/cloakquest3r.py \
	${PREFIX}/bin/cloakquest3r

.include <bsd.port.mk>
