COMMENT=		subdomain takeover vulnerability scanner

DISTNAME=		takeover-0.2
CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		m4ll0k
GH_PROJECT=		takeover
GH_COMMIT=		a05864768c8f05025b1008c29b16b01e6a70324d

MODULES=		lang/python

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/takeover

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/takeover.py
	ln -s ${TRUEPREFIX}/share/takeover/takeover.py \
	${PREFIX}/bin/takeover

post-install:
	rm ${INSTDIR}/{setup.py,screen2.png}

.include <bsd.port.mk>
