COMMENT=	bi-directional network filtering

DISTNAME=	pf-badhost
PKGNAME=	pf-badhost-0.5

CATEGORIES =	net

HOMEPAGE=	https://www.geoghegan.ca/pfbadhost.html

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# ISC
PERMIT_PACKAGE=Yes

MASTER_SITES=	https://www.geoghegan.ca/pub/pf-badhost/0.5/

RUN_DEPENDS=	net/aggregate \
		net/aggregate6

EXTRACT_SUFX=	.sh
EXTRACT_ONLY=

NO_BUILD=	Yes
NO_TEST=	Yes

INSTDIR=	${PREFIX}/share/pf-badhost

pre-extract:
	@mkdir ${WRKDIST}
	cp ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
	${WRKDIR}/${DISTNAME}

do-install:
	${INSTALL_MAN} ${FILESDIR}/${DISTNAME}.1 ${PREFIX}/man/man1/
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/pf-badhost.sh
	ln -s ${TRUEPREFIX}/share/pf-badhost/pf-badhost.sh \
	${PREFIX}/bin/pf-badhost

post-install:
	rm -rf ${INSTDIR}/*.orig

.include <bsd.port.mk>
