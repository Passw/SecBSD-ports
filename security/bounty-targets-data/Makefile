COMMENT=	data dumps of bug bounty platform scopes

GH_COMMIT=	6ab5f5c37b366c44164fd6445dd620816bf8e332
GH_ACCOUNT=	arkadiyt
GH_PROJECT=	bounty-targets-data
VERSION=	10.01.2023
DISTNAME=	${GH_PROJECT}-${VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/arkadiyt/bounty-targets-data

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes

EXTRACT_ONLY=

INSTDIR=	${PREFIX}/share/${GH_PROJECT}

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	@tar xzf ${FULLDISTDIR}/${DISTNAME}-6ab5f5c3${EXTRACT_SUFX} \
		-C ${INSTDIR}
	@mv ${INSTDIR}/${GH_PROJECT}-${GH_COMMIT}/data/* ${INSTDIR}

post-install:
	rm -rf ${INSTDIR}/${GH_PROJECT}-${GH_COMMIT}

.include <bsd.port.mk>
