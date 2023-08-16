COMMENT=		small SQLi Scanner

MODPY_EGG_VERSION=	0.3
DISTNAME=		dsss-${MODPY_EGG_VERSION}

CATEGORIES =		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Public Domain
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		stamparm
GH_PROJECT=		DSSS
GH_COMMIT=		84ddd33d038cde0957a97746f18699f18508d531

MODULES=		lang/python
MODPY_ADJ_FILES=	dsss.py

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/dsss

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/dsss.py
	ln -s ${TRUEPREFIX}/share/dsss/dsss.py \
	${PREFIX}/bin/dsss

.include <bsd.port.mk>
