COMMENT=		xss scanner

MODPY_EGG_VERSION=	3.1.5
DISTNAME=	xsstrike-${MODPY_EGG_VERSION}
CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	s0md3v
GH_PROJECT=	XSStrike
GH_COMMIT=	f29278760453996c713af908376d6dab24e61692

MODULES=	lang/python

RUN_DEPENDS=	net/py-tld${MODPY_FLAVOR} \
		devel/py-fuzzywuzzy \
		www/py-requests${MODPY_FLAVOR}

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/xsstrike

post-extract:
	sed -i 's,3.1.4,3.1.5,' \
	${WRKSRC}/xsstrike.py

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/xsstrike.py
	ln -s ${TRUEPREFIX}/share/xsstrike/xsstrike.py \
	${PREFIX}/bin/xsstrike

post-install:
	rm -rf ${INSTDIR}/{.github,.gitignore}
	rm -rf ${INSTDIR}/{.travis.yml,requirements.txt}

.include <bsd.port.mk>

