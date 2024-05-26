COMMENT=	evil domain generator for IDN homograph attack

V=		3.0
GH_COMMIT=	0f9210f8d504ab587c24edbc852047cee626e84d
GH_ACCOUNT=	UndeadSec
GH_PROJECT=	EvilURL

DISTNAME=	evilurl-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/UndeadSec/EvilURL

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# BSD-3-Clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_ADJ_FILES=evilurl.py

RUN_DEPENDS=	security/py-nmap${MODPY_FLAVOR} \
		www/py-whois${MODPY_FLAVOR} \
		devel/py-future${MODPY_FLAVOR} \
		net/nmap

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/evilurl

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/evilurl.py
	ln -s ${TRUEPREFIX}/share/evilurl/evilurl.py \
	${PREFIX}/bin/evilurl

.include <bsd.port.mk>
