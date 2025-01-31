COMMENT=	list of useful payloads

V=		4.1

GH_ACCOUNT=	swisskyrepo
GH_PROJECT=	PayloadsAllTheThings
GH_TAGNAME=	${V}

DISTNAME=	PayloadsAllTheThings-${V}
CATEGORIES=	wordlists

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes

EXTRACT_ONLY=

INSTDIR=	${PREFIX}/share/payloads-all-the-things

post-extract:
	@mkdir -p ${WRKSRC}
	${TAR} -C ${WRKSRC} -xzf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	@cp -R ${WRKSRC}/${DISTNAME}/* ${INSTDIR}

.include <bsd.port.mk>
