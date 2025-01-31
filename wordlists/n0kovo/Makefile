COMMENT=	subdomain enumeration wordlist

V=		0.1

GH_ACCOUNT=	n0kovo
GH_PROJECT=	n0kovo_subdomains
GH_COMMIT=	18b392aa5ecd0c9a1d8fa2e10e8c821bd82868f6

DISTNAME=	n0kovo-wordlists-${V}

CATEGORIES=	wordlists

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	archivers/p7zip

NO_BUILD=	Yes

EXTRACT_ONLY=

INSTDIR=	${PREFIX}/share/n0kovo

post-extract:
	@mkdir -p ${WRKSRC}
	${TAR} -C ${WRKSRC} -xzf ${FULLDISTDIR}/${DISTNAME}-18b392aa${EXTRACT_SUFX}

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	@cp -R ${WRKSRC}/${GH_PROJECT}-${GH_COMMIT}/*.txt ${INSTDIR}

.include <bsd.port.mk>
