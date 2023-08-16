COMMENT=		google maps API scanner

MODPY_EGG_VERSION=	0.1
GH_COMMIT=		0b305fc2d62150c56d3d383d36a04ff1c181964c
GH_ACCOUNT=		ozguralp
GH_PROJECT=		gmapsapiscanner

DISTNAME=		${GH_PROJECT}-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/ozguralp/gmapsapiscanner

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/gmapsapiscanner

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/maps_api_scanner_python3.py
	ln -s ${TRUEPREFIX}/share/gmapsapiscanner/maps_api_scanner_python3.py \
	${PREFIX}/bin/gmapsapiscanner

post-install:
	rm -rf ${INSTDIR}/maps_api_scanner.py

.include <bsd.port.mk>
