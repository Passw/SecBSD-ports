COMMENT=	information gathering suite
CATEGORIES=	security
MAINTAINER=	Purple Rain <purplerain@secbsd.org>

DIST_TUPLE=	github laramies theHarvester 4.5.1 .

HOMEPAGE=	https://github.com/laramies/theHarvester

# GPLv2
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	devel/py-vcversioner${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-certifi${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-fastapi${MODPY_FLAVOR} \
		devel/py-retrying${MODPY_FLAVOR} \
		devel/py-pyee${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR} \
		devel/py-slowapi${MODPY_FLAVOR} \
		devel/py-ujson${MODPY_FLAVOR} \
		net/py-aiodns${MODPY_FLAVOR} \
		net/py-aiofiles${MODPY_FLAVOR} \
		net/py-aiomultiprocess${MODPY_FLAVOR} \
		net/py-aiosqlite${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		net/py-netaddr${MODPY_FLAVOR} \
		net/py-pyppeteer${MODPY_FLAVOR} \
		net/py-uvicorn${MODPY_FLAVOR} \
		security/py-censys${MODPY_FLAVOR} \
		security/py-shodan${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-aiohttp${MODPY_FLAVOR} \
		www/py-beautifulsoup4${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

MODPY_ADJ_FILES=	theHarvester.py

INSTDIR=	${PREFIX}/share/theharvester

do-install:
	rm -rf  ${WRKDIST}/bin ${WRKDIST}/Dockerfile ${WRKDIST}/.*
	rm -rf ${WRKDIST}/requirements ${WRKDIST}/Dockerfile ${WRKDIST}/*.txt
	rm -rf ${WRKDIST}/tests ${WRKDIST}/docker-compose.yml ${WRKDIST}/pyproject.toml
	rm ${WRKDIST}/*.ini ${WRKDIST}/setup.* ${WRKDIST}/restfulHarvest.py
	rm -rf ${WRKDIST}/.github ${WRKDIST}/theHarvester-logo.*
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/theHarvester.py
	ln -s ${TRUEPREFIX}/share/theharvester/theHarvester.py ${PREFIX}/bin/theharvester

.include <bsd.port.mk>
