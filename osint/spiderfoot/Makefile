COMMENT=	osint collection and reconnaissance tool

MODPY_DISTV=	4.0
DISTNAME=	spiderfoot-${MODPY_DISTV}

CATEGORIES=	osint

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	smicallef
GH_PROJECT=	spiderfoot
GH_COMMIT=	d8f628bf3cb3beac00b2ae515022160795c8f4ed

MODULES=	lang/python

MODPY_ADJ_FILES=sf.py sfcli.py sfscan.py sfwebui.py

RUN_DEPENDS=	devel/py-adblockparser \
		devel/py-docx \
		devel/py-exifread \
		devel/py-future \
		devel/py-gexf \
		devel/py-pptx \
		math/py-networkx \
		net/py-dnspython \
		net/py-netaddr \
		net/py-public-suffix-list \
		net/py-socks \
		security/py-cryptography \
		security/py-openssl \
		security/py-secure \
		telephony/py-phonenumbers \
		textproc/py-PyPDF2 \
		textproc/py-lxml \
		textproc/py-openpyxl \
		textproc/py-yaml \
		www/py-CherryPy \
		www/py-beautifulsoup4 \
		www/py-cherrypy-cors \
		www/py-ipwhois \
		www/py-mako \
		www/py-requests \
		www/py-whois

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/spiderfoot

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
