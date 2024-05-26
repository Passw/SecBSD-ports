COMMENT=		command injection and exploitation tool

MODPY_EGG_VERSION=	3.9
DISTNAME=		commix-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/commixproject/commix

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		commixproject
GH_PROJECT=		commix
GH_COMMIT=		ebd5e5a434d22192d50e8c875254429d39a2c10d

MODULES=		lang/python

MODPY_ADJ_FILES=	commix.py

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/commix

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/commix.py
	ln -s ${TRUEPREFIX}/share/commix/commix.py \
	${PREFIX}/bin/commix

post-install:
	rm -rf ${INSTDIR}/{.github,.gitignore,.travis.yml}

.include <bsd.port.mk>
