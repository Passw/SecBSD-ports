COMMENT=	brute forcing from Nmap output
CATEGORIES=	security
MAINTAINER=	Purple Rain <purplerain@secbsd.org>

DIST_TUPLE=	github x90skysn3k brutespray brutespray-1.8.1 .

# MIT
PERMIT_PACKAGE=	Yes

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

.include <bsd.port.mk>
