COMMENT=		cors misconfiguration scanner

DISTNAME=		corsy-1.0

CATEGORIES=		security

HOMEPAGE=		https://github.com/s0md3v/Corsy

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		s0md3v
GH_PROJECT=		Corsy
GH_TAGNAME=		1.0-rc

MODULES=		lang/python

RUN_DEPENDS=		net/py-tld${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/corsy

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/corsy.py
	ln -s ${TRUEPREFIX}/share/corsy/corsy.py \
	${PREFIX}/bin/corsy

post-install:
	rm ${INSTDIR}/requirements.txt

.include <bsd.port.mk>
