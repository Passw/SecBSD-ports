COMMENT=		file inclusion vulnerability scanner

MODPY_EGG_VERSION=	0.2
DISTNAME=		dsfs-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Public Domain
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		stamparm
GH_PROJECT=		DSFS
GH_COMMIT=		8e9f8e9deb80ea759fd6602edb1e5c9384117b1c

MODULES=		lang/python

MODPY_ADJ_FILES=	dsfs.py

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/dsfs

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/dsfs.py
	ln -s ${TRUEPREFIX}/share/dsfs/dsfs.py \
	${PREFIX}/bin/dsfs

.include <bsd.port.mk>
