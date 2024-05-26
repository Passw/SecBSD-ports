COMMENT=	brute exploit detector

V=		0.5
DISTNAME=	bed-${V}

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	crunchsec
GH_PROJECT=	bed
GH_COMMIT=	5f82655404f87ca374f4ce8b8f0702e9d0b13fec

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/bed

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/bed.pl
	ln -s ${TRUEPREFIX}/share/bed/bed.pl ${PREFIX}/bin/bed

.include <bsd.port.mk>
