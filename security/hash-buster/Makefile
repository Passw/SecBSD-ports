COMMENT=		hash buster tool

MODPY_EGG_VERSION=	3.0
GH_COMMIT=		0d6ebb429534907259514fde527ecdaf6dc0b624
GH_ACCOUNT=		s0md3v
GH_PROJECT=		Hash-Buster

DISTNAME=		hashbuster-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR} \
			devel/py-configargparse${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/hashbuster

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/hash.py
	ln -s ${TRUEPREFIX}/share/hashbuster/hash.py \
		${PREFIX}/bin/hashbuster

post-install:
	rm ${INSTDIR}/{makefile,.whitesource}

.include <bsd.port.mk>
