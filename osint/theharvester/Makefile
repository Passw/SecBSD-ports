COMMENT=	information gathering suite
CATEGORIES=	osint
MAINTAINER=	Purple Rain <purplerain@secbsd.org>

DIST_TUPLE=	github laramies theHarvester 4.5.1 .

HOMEPAGE=	https://github.com/laramies/theHarvester

# GPLv2
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	devel/py-vcversioner

RUN_DEPENDS=	devel/py-certifi \
		devel/py-dateutil \
		devel/py-fastapi \
		devel/py-retrying \
		devel/py-pyee \
		devel/py-setuptools \
		devel/py-slowapi \
		devel/py-ujson \
		net/py-aiodns \
		net/py-aiofiles \
		net/py-aiomultiprocess \
		net/py-aiosqlite \
		net/py-dnspython \
		net/py-netaddr \
		net/py-pyppeteer \
		net/py-uvicorn \
		security/py-censys \
		security/py-shodan \
		textproc/py-lxml \
		textproc/py-yaml \
		www/py-aiohttp \
		www/py-beautifulsoup4 \
		www/py-requests

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
