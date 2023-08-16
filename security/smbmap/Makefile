COMMENT=		smb enumeration tool

MODPY_EGG_VERSION=	1.8.2
GH_ACCOUNT=		ShawnDEvans
GH_PROJECT=		smbmap
GH_TAGNAME=		v${MODPY_EGG_VERSION}

DISTNAME=		smbmap-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/ShawnDEvans/smbmap

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

RUN_DEPENDS=		net/py-impacket \
			devel/py-asn1${MODPY_FLAVOR} \
			security/py-cryptodome${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/smbmap

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/smbmap.py
	ln -s ${TRUEPREFIX}/share/smbmap/smbmap.py \
	${PREFIX}/bin/smbmap

.include <bsd.port.mk>