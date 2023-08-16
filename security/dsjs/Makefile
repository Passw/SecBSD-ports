COMMENT =		javacript vulnerability scanner

MODPY_EGG_VERSION =	0.2
DISTNAME =		dsjs-${MODPY_EGG_VERSION}

CATEGORIES =		security

MAINTAINER =		Purple Rain <purplerain@secbsd.org>

# Public Domain
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		stamparm
GH_PROJECT =		DSJS
GH_COMMIT =		26287d0c3311b3c028dd8956b93035baa8670618

MODULES =		lang/python

MODPY_ADJ_FILES =	dsjs.py

NO_BUILD =		Yes

INSTDIR =		${PREFIX}/share/dsjs

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/dsjs.py
	ln -s ${TRUEPREFIX}/share/dsjs/dsjs.py \
	${PREFIX}/bin/dsjs

.include <bsd.port.mk>
