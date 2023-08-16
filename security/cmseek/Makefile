COMMENT=		cms detection and exploitation suite

MODPY_EGG_VERSION=	1.1.3
DISTNAME=		cmseek-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/Tuhinshubhra/CMSeeK

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		Tuhinshubhra
GH_PROJECT=		CMSeeK
GH_COMMIT=		ce085fee1b5f48db7412911e399bb2c771e73a0f

MODULES=		lang/python
MODPY_ADJ_FILES=	cmseek.py

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/cmseek

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/cmseek.py
	ln -s ${TRUEPREFIX}/share/cmseek/cmseek.py \
	${PREFIX}/bin/cmseek

post-install:
	rm -rf ${INSTDIR}/{.gitignore,Dockerfile}
	rm -rf ${INSTDIR}/requirements.txt

.include <bsd.port.mk>
