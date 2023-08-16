COMMENT=		csrf scanner

MODPY_EGG_VERSION=	0.2.1
DISTNAME=		bolt-${MODPY_EGG_VERSION}

CATEGORIES =		security

MAINTAINER =		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		s0md3v
GH_PROJECT=		Bolt
GH_COMMIT=		37aa096db93e026f0524fe94c67dc1dae8985f3e

MODULES=		lang/python

RUN_DEPENDS=		devel/py-fuzzywuzzy${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/bolt

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/bolt.py
	ln -s ${TRUEPREFIX}/share/bolt/bolt.py ${PREFIX}/bin/bolt

.include <bsd.port.mk>
