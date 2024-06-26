COMMENT=	dns enumeration tool

DIST_TUPLE=	github darkoperator dnsrecon 1.2.0 .

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

RUN_DEPENDS=	net/py-dnspython${MODPY_FLAVOR} \
		net/py-netaddr${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/dnsrecon

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/dnsrecon.py
	ln -s ${TRUEPREFIX}/share/dnsrecon/dnsrecon.py \
		${PREFIX}/bin/dnsrecon

.include <bsd.port.mk>
