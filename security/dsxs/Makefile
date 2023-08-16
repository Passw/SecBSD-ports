COMMENT =		xss scanner

MODPY_EGG_VERSION =	0.3
DISTNAME =		dsxs-${MODPY_EGG_VERSION}

CATEGORIES =		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Public Domain
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		stamparm
GH_PROJECT =		DSXS
GH_COMMIT =		3e628b63a46d31bad7db3ea7e71e08ced70730dd

MODULES =		lang/python
MODPY_ADJ_FILES =	dsxs.py

NO_BUILD =		Yes

INSTDIR =		${PREFIX}/share/dsxs

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/dsxs.py
	ln -s ${TRUEPREFIX}/share/dsxs/dsxs.py \
	${PREFIX}/bin/dsxs

.include <bsd.port.mk>
