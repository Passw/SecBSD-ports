COMMENT=		data dumps of bug bounty platform scopes

GH_COMMIT=		982ffa9020841b28a9a9f611942a9fbb08f0f68c
GH_ACCOUNT=		arkadiyt
GH_PROJECT=		bounty-targets-data
VERSION=		16.08.2023
DISTNAME=		bounty-targets-data-${VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/arkadiyt/bounty-targets-data

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

NO_BUILD=		Yes

EXTRACT_ONLY=

INSTDIR=		${PREFIX}/share/${GH_PROJECT}

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	@tar xzf ${FULLDISTDIR}/${DISTNAME}-982ffa90${EXTRACT_SUFX} \
		-C ${INSTDIR}
	@mv ${INSTDIR}/${GH_PROJECT}-${GH_COMMIT}/data/* ${INSTDIR}

post-install:
	rm -rf ${INSTDIR}/${GH_PROJECT}-${GH_COMMIT}

.include <bsd.port.mk>
