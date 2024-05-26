COMMENT=	dns enumeration tool

MODPY_EGG_VERSION=	1.1.5
DISTNAME=	dnsrecon-${MODPY_EGG_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/darkoperator/dnsrecon

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	darkoperator
GH_PROJECT=	dnsrecon
GH_TAGNAME=	${MODPY_EGG_VERSION}

MODULES=	lang/python

RUN_DEPENDS=	net/py-dnspython${MODPY_FLAVOR} \
		net/py-netaddr${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

NO_BUILD =	Yes
NO_TEST =	Yes

INSTDIR =	${PREFIX}/share/dnsrecon

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/dnsrecon.py
	ln -s ${TRUEPREFIX}/share/dnsrecon/dnsrecon.py \
		${PREFIX}/bin/dnsrecon

.include <bsd.port.mk>
