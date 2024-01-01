COMMENT=	web reconnaissance

MODPY_EGG_VERSION=	1.1.6
DISTNAME=	finalrecon-${MODPY_EGG_VERSION}

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

HOMEPAGE=	https://github.com/thewhiteh4t/FinalRecon

# MIT
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	thewhiteh4t
GH_PROJECT=	FinalRecon
GH_TAGNAME=	v${MODPY_EGG_VERSION}

MODULES=	lang/python

RUN_DEPENDS=	databases/py-psycopg2${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		net/py-dnslib${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-aiohttp${MODPY_FLAVOR} \
		www/py-tldextract${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/finalrecon

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/finalrecon.py
	ln -s ${TRUEPREFIX}/share/finalrecon/finalrecon.py \
		${PREFIX}/bin/finalrecon

.include <bsd.port.mk>
