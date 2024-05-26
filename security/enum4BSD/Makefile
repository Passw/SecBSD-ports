COMMENT=		enumerating data from Windows and SMB

VERSION=		0.9.1
DISTNAME=		enum4BSD-${VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/CiscoCXSecurity/enum4linux

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		CiscoCXSecurity
GH_PROJECT=		enum4linux
GH_COMMIT=		1de6e8630a36b5230c65e2130b24ea5a85b706b4

RUN_DEPENDS=		net/samba

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/enum4BSD

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	mv ${INSTDIR}/enum4linux.pl ${INSTDIR}/enum4BSD.pl
	chmod 755 ${INSTDIR}/enum4BSD.pl
	ln -s ${TRUEPREFIX}/share/enum4BSD/enum4BSD.pl \
	${PREFIX}/bin/enum4BSD.pl

.include <bsd.port.mk>
