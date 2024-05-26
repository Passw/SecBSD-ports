COMMENT=	web and CGI vulnerability scanner with SSL support

DIST_TUPLE+=	github sullo nikto 2.5.0 .

CATEGORIES=	security

HOMEPAGE=	https://www.cirt.net/nikto2

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-Net-SSLeay

NO_BUILD=	Yes
NO_TEST=	Yes

INSTDIR=	${PREFIX}/share/nikto

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/program/nikto.pl
	ln -s ${TRUEPREFIX}/share/nikto/program/nikto.pl \
	${PREFIX}/bin/nikto

	mv ${INSTDIR}/program/nikto.conf.default \
		${INSTDIR}/program/nikto.conf
post-install:
	rm ${INSTDIR}/program/*.orig.port

.include <bsd.port.mk>
