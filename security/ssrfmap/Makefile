COMMENT=	automatic SSRF fuzzer exploitation tool

DISTNAME=	ssrfmap-0.1

CATEGORIES=	security

HOMEPAGE=	https://github.com/swisskyrepo/SSRFmap

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	swisskyrepo
GH_PROJECT=	SSRFmap
GH_COMMIT=	f688ec95ccbf33ca3e2ea256160033428c6d0237

MODULES=	lang/python


RUN_DEPENDS=	www/py-requests${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR}
			
NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/ssrfmap

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/ssrfmap.py
	ln -s ${TRUEPREFIX}/share/ssrfmap/ssrfmap.py \
	${PREFIX}/bin/ssrfmap

post-install:
	rm -rf ${INSTDIR}/{.github,screenshot,.gitignore}
	rm -rf ${INSTDIR}/requirements.txt
	rm -rf ${INSTDIR}/data/example.py

.include <bsd.port.mk>
