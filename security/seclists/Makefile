COMMENT=		collection of multiple types of lists

GH_TAGNAME=		2023.2
GH_ACCOUNT=		danielmiessler
GH_PROJECT=		SecLists

DISTNAME=		seclists-${GH_TAGNAME}

CATEGORIES=		security

HOMEPAGE=		https://github.com/danielmiessler/SecLists

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

EXTRACT_ONLY=

INSTDIR=		${PREFIX}/share/seclists

NO_BUILD=		Yes

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	@tar xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} \
	-C ${INSTDIR}
	@mv ${INSTDIR}/${GH_PROJECT}-${GH_TAGNAME}/* ${INSTDIR}

post-install:
	rm -rf ${INSTDIR}/${GH_PROJECT}-${GH_TAGNAME}

.include <bsd.port.mk>
