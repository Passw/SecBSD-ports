COMMENT=		common user passwords profiler

MODPY_EGG_VERSION=	3.3.0
DISTNAME=		cupp-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/Mebus/cupp

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=		Mebus
GH_PROJECT=		cupp
GH_COMMIT=		56547fd09b87613cb2614feb5b7688907277a65a

MODULES=		lang/python

MODPY_ADJ_FILES=	cupp.py

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/cupp

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/cupp.py
	ln -s ${TRUEPREFIX}/share/cupp/cupp.py ${PREFIX}/bin/cupp

post-install:
	rm -rf ${INSTDIR}/{.gitignore,.travis.yml}

.include <bsd.port.mk>
