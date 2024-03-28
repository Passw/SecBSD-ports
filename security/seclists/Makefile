COMMENT=	collection of multiple types of lists
CATEGORIES=	security
MAINTAINER=	Purple Rain <purplerain@secbsd.org>

DIST_TUPLE =	github danielmiessler SecLists 2024.1 .

HOMEPAGE=	https://github.com/danielmiessler/SecLists

# MIT
PERMIT_PACKAGE=	Yes
NO_BUILD=	Yes

EXTRACT_ONLY=

INSTDIR=	${PREFIX}/share/seclists

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	@tar xzf ${FULLDISTDIR}/danielmiessler-SecLists-2024.1${EXTRACT_SUFX} \
	-C ${INSTDIR}
	@mv ${INSTDIR}/${DISTNAME}/* ${INSTDIR}

post-install:
	rm -rf ${INSTDIR}/${DISTNAME}

.include <bsd.port.mk>
