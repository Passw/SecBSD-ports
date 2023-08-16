COMMENT=		owasp joomla vulnerability scanner

VERSION=		0.0.7
DISTNAME=		joomscan-${VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/rezasp/joomscan

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=		OWASP
GH_PROJECT=		joomscan
GH_COMMIT=		79315393509caa39895e553c489667636ac31b85

RUN_DEPENDS=		www/p5-libwww \
			www/p5-LWP-Protocol-https

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/joomscan

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/joomscan.pl
	ln -s ${TRUEPREFIX}/share/joomscan/joomscan.pl \
	${PREFIX}/bin/joomscan

post-install:
	rm -rf ${INSTDIR}/{.gitignore,Dockerfile}

.include <bsd.port.mk>