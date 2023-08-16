COMMENT=		abusing certificate tool

MODPY_EGG_VERSION=	1.2
DISTNAME=		ctfr-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/UnaPibaGeek/ctfr

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		UnaPibaGeek
GH_PROJECT=		ctfr
GH_COMMIT=		6c7fecdc6346c4f5322049e38f415d5bddaa420d

MODULES=		lang/python

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			www/py-requests${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/ctfr

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/ctfr.py
	ln -s ${TRUEPREFIX}/share/ctfr/ctfr.py ${PREFIX}/bin/ctfr

.include <bsd.port.mk>
