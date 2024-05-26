COMMENT=	smtp user enum

DISTNAME=	smtp-user-enum-1.2

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

SITES=		http://pentestmonkey.net/tools/smtp-user-enum/

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/smtp-user-enum

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/smtp-user-enum.pl
	ln -s ${TRUEPREFIX}/share/smtp-user-enum/smtp-user-enum.pl \
	${PREFIX}/bin/

.include <bsd.port.mk>
