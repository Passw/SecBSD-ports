COMMENT=	collection of multiple types of lists

V=		2024.3
DISTNAME=	SecLists-${V}
CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

SITES=		https://github.com/danielmiessler/SecLists/archive/refs/tags/

# MIT
PERMIT_PACKAGE=	Yes

DISTFILES=	${V}${EXTRACT_SUFX}
EXTRACT_ONLY=

INSTDIR=	${PREFIX}/share/seclists

NO_BUILD=	Yes

post-extract:
	@mkdir -p ${WRKSRC}
	${TAR} -C ${WRKSRC} -xzf ${FULLDISTDIR}/${DISTFILES}

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	@cp -R ${WRKSRC}/${DISTNAME}/* ${INSTDIR}

.include <bsd.port.mk>
