COMMENT=		low bandwidth DoS tool

MODPY_EGG_VERSION=	0.2.4
GH_COMMIT=		f499649cdafb24159fbd4a8ea21bd30924d93589
GH_ACCOUNT=		gkbrk
GH_PROJECT=		slowloris

DISTNAME=		Slowloris-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/gkbrk/slowloris

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

RUN_DEPENDS=		net/py-socks${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/slowloris

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/slowloris.py
	ln -s ${TRUEPREFIX}/share/slowloris/slowloris.py \
	${PREFIX}/bin/slowloris

.include <bsd.port.mk>
