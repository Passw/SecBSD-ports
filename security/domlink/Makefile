COMMENT=		link a domain with registered names and emails

MODPY_EGG_VERSION=	0.2
DISTNAME=		domlink-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		vysecurity
GH_PROJECT=		DomLink
GH_COMMIT=		6537d66c42a5b7cdde06b1cb35132c213c8ff01b

MODULES=		lang/python

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/domlink

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/domLink.py
	ln -s ${TRUEPREFIX}/share/domlink/domLink.py \
	${PREFIX}/bin/domlink

post-install:
	rm -rf ${INSTDIR}/{.gitignore,domLink.gif}
	rm -rf ${INSTDIR}/{domLink.png,requirements.txt}

.include <bsd.port.mk>
