COMMENT=	mass subdomain enumeration

DISTNAME= 	massdns-1.0.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/blechschmidt/massdns

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

WANTLIB=	c

GH_ACCOUNT=	blechschmidt
GH_PROJECT=	massdns
GH_COMMIT=	ee7aecf1117f7442803ef16658c9739fe952a28e

INSTDIR=	${PREFIX}/share/massdns

MAKE_ENV=	CC="${CC}"

do-build:
	cd ${WRKSRC}/src ; ${CC} ${CFLAGS} \
	-o massdns main.c

do-install:
	${INSTALL_MAN} ${WRKSRC}/doc/massdns.1 ${PREFIX}/man/man1/
	${INSTALL_PROGRAM} ${WRKSRC}/src/massdns ${PREFIX}/bin
	cp -r ${WRKSRC} ${INSTDIR}

post-install:
	rm -rf ${INSTDIR}/src
	rm -rf ${INSTDIR}/tests
	rm ${INSTDIR}/{CMakeLists.txt,Dockerfile,.gitignore}
	rm ${INSTDIR}/Makefile

.include <bsd.port.mk>
