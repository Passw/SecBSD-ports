COMMENT=	payload wordlists

V=		0.1

GH_ACCOUNT=	ZephrFish
GH_PROJECT=	Wordlists
GH_COMMIT=	6a54ea97bfef327eae28f1a8696efdd67f81490d

DISTNAME=	zephrfish-wordlists-${V}

CATEGORIES=	wordlists

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Unlicense
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	archivers/p7zip

NO_BUILD=	Yes

EXTRACT_ONLY=

INSTDIR=	${PREFIX}/share/zephrfish

pre-configure:
	tar -zxf ${FULLDISTDIR}/${DISTNAME}-6a54ea97${EXTRACT_SUFX} -C ${WRKDIST}
	${LOCALBASE}/bin/7z x -o${WRKDIST}/${GH_PROJECT}-${GH_COMMIT} \
	${WRKDIST}/${GH_PROJECT}-${GH_COMMIT}/HugeDNS.7z
	${LOCALBASE}/bin/7z x -o${WRKDIST}/${GH_PROJECT}-${GH_COMMIT} \
	${WRKDIST}/${GH_PROJECT}-${GH_COMMIT}/FilesWithExtensions.7z

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -R ${WRKDIST}/${GH_PROJECT}-${GH_COMMIT}/*.txt ${INSTDIR}

.include <bsd.port.mk>
