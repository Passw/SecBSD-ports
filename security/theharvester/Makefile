COMMENT=	information gathering suite

VERSION=	4.4.1
DISTNAME=	theharvester-${VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/laramies/theHarvester

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	laramies
GH_PROJECT=	theHarvester
GH_TAGNAME=	${VERSION}

MODULES=	lang/python

BUILD_DEPENDS+=${RUN_DEPENDS} \
		net/py-aiodns${MODPY_FLAVOR} \
		net/py-aiofiles${MODPY_FLAVOR} \
		www/py-aiohttp${MODPY_FLAVOR} \
		net/py-aiomultiprocess${MODPY_FLAVOR} \
		net/py-aiosqlite${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		security/py-censys${MODPY_FLAVOR} \
		devel/py-certifi${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		devel/py-fastapi${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		net/py-netaddr${MODPY_FLAVOR} \
		devel/py-ujson${MODPY_FLAVOR} \
		net/py-pyppeteer${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		devel/py-retrying${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR} \
		security/py-shodan${MODPY_FLAVOR} \
		devel/py-slowapi${MODPY_FLAVOR} \
		net/py-uvicorn${MODPY_FLAVOR}

MODPY_ADJ_FILES=	theHarvester.py

NO_BUILD=	Yes
NO_TEST=	Yes

INSTDIR=	${PREFIX}/share/theharvester

do-install:
	rm -rf  ${WRKDIST}/bin ${WRKDIST}/Dockerfile ${WRKDIST}/.*
	rm -rf ${WRKDIST}/requirements ${WRKDIST}/Dockerfile ${WRKDIST}/*.txt
	rm -rf ${WRKDIST}/tests ${WRKDIST}/docker-compose.yml ${WRKDIST}/pyproject.toml
	rm ${WRKDIST}/*.ini ${WRKDIST}/setup.* ${WRKDIST}/restfulHarvest.py
	rm -rf ${WRKDIST}/.github ${WRKDIST}/theHarvester-logo.*
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/theHarvester.py
	ln -s ${TRUEPREFIX}/share/theharvester/theHarvester.py ${PREFIX}/bin/theHarvester

.include <bsd.port.mk>
