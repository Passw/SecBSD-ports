COMMENT=		bot auto shell injector for CMS

MODPY_EGG_VERSION=	1.9
DISTNAME=		vulnx-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/anouarbensaad/vulnx

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		anouarbensaad
GH_PROJECT=		vulnx
GH_COMMIT=		bcf451d20941c674005f2b42407cb24fb69cfdab

MODULES=		lang/python

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/vulnx

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/vulnx.py
	ln -s ${TRUEPREFIX}/share/vulnx/vulnx.py \
	${PREFIX}/bin/vulnx

post-install:
	rm -rf ${INSTDIR}/{.github,config,docker,.gitignore}
	rm -rf ${INSTDIR}/{.travis.yml,*.sh,requirements.txt}

.include <bsd.port.mk>
