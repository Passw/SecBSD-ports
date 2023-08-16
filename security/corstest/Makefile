COMMENT=		cors misconfiguration scanner

MODPY_EGG_VERSION=	0.1
DISTNAME=		corstest-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/RUB-NDS/CORStest

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		RUB-NDS
GH_PROJECT=		CORStest
GH_COMMIT=		beffd0b3162c9c5020f23952bd6373df43c4f469

MODULES=		lang/python

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/corstest

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/corstest.py
	ln -s ${TRUEPREFIX}/share/corstest/corstest.py ${PREFIX}/bin/corstest

post-install:
	rm -rf ${INSTDIR}/{img,tests}

.include <bsd.port.mk>
