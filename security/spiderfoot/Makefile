COMMENT=		osint collection and reconnaissance tool

MODPY_EGG_VERSION=	4.0
DISTNAME=		spiderfoot-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		smicallef
GH_PROJECT=		spiderfoot
GH_COMMIT=		d8f628bf3cb3beac00b2ae515022160795c8f4ed

MODULES=		lang/python

MODPY_ADJ_FILES=	sf.py sfcli.py sfscan.py sfwebui.py

RUN_DEPENDS=		devel/py-adblockparser \
			net/py-dnspython${MODPY_FLAVOR} \
			devel/py-exifread \
			www/py-CherryPy${MODPY_FLAVOR} \
			www/py-cherrypy-cors \
			www/py-mako${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			net/py-netaddr${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-ipwhois \
			telephony/py-phonenumbers${MODPY_FLAVOR} \
			devel/py-gexf \
			textproc/py-PyPDF2${MODPY_FLAVOR} \
			www/py-whois \
			security/py-secure \
			security/py-openssl${MODPY_FLAVOR} \
			devel/py-docx \
			devel/py-pptx \
			math/py-networkx \
			security/py-cryptography${MODPY_FLAVOR} \
			net/py-public-suffix-list \
			textproc/py-openpyxl${MODPY_FLAVOR} \
			devel/py-future${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/spiderfoot

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/sf.py
	chmod 755 ${INSTDIR}/sfcli.py
	chmod 755 ${INSTDIR}/sfscan.py
	chmod 755 ${INSTDIR}/sfwebui.py

post-install:
	rm -rf ${INSTDIR}/{*.txt,setup.*}
	rm -rf ${INSTDIR}/{Dockerfile,docker-compose.yml}

.include <bsd.port.mk>
