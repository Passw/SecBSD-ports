COMMENT=		http request smuggling tool

MODPY_EGG_VERSION=	0.1
GH_ACCOUNT=		defparam
GH_PROJECT=		smuggler
GH_COMMIT=		2be871e6151ce85167a277fab21c74c851d8b20b

DISTNAME=		smuggler-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/defparam/smuggler

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_ADJ_FILES=	smuggler.py

RUN_DEPENDS= 		devel/py-colorama${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/smuggler

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/smuggler.py 
	ln -s ${TRUEPREFIX}/share/smuggler/smuggler.py \
	${PREFIX}/bin/smuggler

.include <bsd.port.mk>