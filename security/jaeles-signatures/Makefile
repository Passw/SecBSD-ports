COMMENT=	signature for jaeles scanner

VERSION=	0.17.1
DISTNAME=	jaeles-signatures-${VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/jaeles-project/jaeles-signatures

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	jaeles-project
GH_PROJECT=	jaeles-signatures
GH_COMMIT=	98b358e9737131b01d5ab0685c063be52e3e3754

NO_BUILD=	Yes

EXTRACT_ONLY=

INSTDIR=	${PREFIX}/share/jaeles-signatures

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	tar -zxf ${FULLDISTDIR}/${DISTNAME}-98b358e9${EXTRACT_SUFX} -C ${INSTDIR}
	mv ${INSTDIR}/${GH_PROJECT}-${GH_COMMIT}/* ${INSTDIR}

post-install:
	rm -rf ${INSTDIR}/${GH_PROJECT}-${GH_COMMIT}

.include <bsd.port.mk>
