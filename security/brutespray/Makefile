COMMENT=		brute forcing from Nmap output

MODPY_EGG_VERSION=	1.8
DISTNAME=		brutespray-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	x90skysn3k
GH_PROJECT=	brutespray
GH_COMMIT=	f282627664c4865a9e6c38a022862be58f9e4013

MODULES=	lang/python

RUN_DEPENDS=	devel/py-argcomplete${MODPY_FLAVOR} \
		security/medusa
   
NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/brutespray

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/brutespray.py
	ln -s ${TRUEPREFIX}/share/brutespray/brutespray.py \
		${PREFIX}/bin/brutespray

post-install:
	rm ${INSTDIR}/requirements.txt

.include <bsd.port.mk>
