COMMENT=		robot txt audit tool

MODPY_EGG_VERSION=	0.81
GH_COMMIT=		e5b585a19b79426975a825cafa4cc8a353cd267e
GH_ACCOUNT=		behindthefirewalls
GH_PROJECT=		Parsero

DISTNAME=		parsero-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

RUN_DEPENDS=		www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/parsero

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/parsero.py
	ln -s ${TRUEPREFIX}/share/parsero/parsero.py \
	${PREFIX}/bin/parsero

post-install:
	rm ${INSTDIR}/{setup.py,.gitignore}

.include <bsd.port.mk>
