COMMENT=	poisoner and responder

MODPY_EGG_VERSION=	3.1.4.0
DISTNAME=	responder-${MODPY_EGG_VERSION}

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	lgandx
GH_PROJECT=	Responder
GH_TAGNAME=	v${MODPY_EGG_VERSION}

MODULES=	lang/python

RUN_DEPENDS=	net/py-netifaces${MODPY_FLAVOR}

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/responder

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/Responder.py
	ln -s ${TRUEPREFIX}/share/responder/Responder.py \
	${PREFIX}/bin/responder

.include <bsd.port.mk>
