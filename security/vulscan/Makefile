COMMENT=	module which enhances to nmap

VERSION=	2.1
DISTNAME=	vulscan-${VERSION}
CATEGORIES=	security

HOMEPAGE=	https://github.com/scipag/vulscan

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	scipag
GH_PROJECT=	vulscan
GH_COMMIT=	0c793c490455e7907a7c5cbaf3f7210e80d2ee57

RUN_DEPENDS=	net/nmap

NO_BUILD=	Yes

EXTRACT_ONLY=

INSTDIR=	${PREFIX}/share/nmap/scripts/vulscan

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	@tar xzf ${FULLDISTDIR}/${DISTNAME}-0c793c49${EXTRACT_SUFX} \
	-C ${INSTDIR}
	cp -r ${INSTDIR}/${GH_PROJECT}-${GH_COMMIT}/* ${INSTDIR}

.include <bsd.port.mk>
