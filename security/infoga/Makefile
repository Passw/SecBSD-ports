COMMENT=		email osint

MODPY_EGG_VERSION=	0.1.5
GH_COMMIT=		79a1c03b6355cf27538a2c011248fc498e9f775c
GH_ACCOUNT=		m4ll0k
GH_PROJECT=		Infoga

DISTNAME=		infoga-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/m4ll0k/Infoga

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_ADJ_FILES=	infoga.py

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/py-colorama${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/infoga

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/infoga.py
	ln -s ${TRUEPREFIX}/share/infoga/infoga.py \
	${PREFIX}/bin/infoga

post-install:
	rm -rf ${INSTDIR}/{screen,setup.py,Dockerfile}

.include <bsd.port.mk>
