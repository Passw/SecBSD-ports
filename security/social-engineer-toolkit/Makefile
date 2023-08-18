COMMENT=		social engineer toolkit

MODPY_EGG_VERSION=	8.0.3
GH_ACCOUNT=		trustedsec
GH_PROJECT=		social-engineer-toolkit
GH_TAGNAME=		${MODPY_EGG_VERSION}

DISTNAME=		social-engineer-toolkit-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/trustedsec/social-engineer-toolkit

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# BSD/TrustedSec
PERMIT_PACKAGE=	Yes

PATCHORIG=		.orig.port

MODULES =		lang/python

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			databases/py-mssql${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR} \
			graphics/py-qrcode${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			net/ettercap \
			net/py-impacket \
			net/wget \
			security/aircrack-ng \
			security/dsniff \
			security/metasploit \
			security/py-cryptodome${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			security/py-pefile${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/setoolkit

do-install:
	cp -r ${WRKDIST} ${INSTDIR}

post-install:
	rm -rf ${INSTDIR}/{.gitignore,.github,requirements.txt,setup.py}

.include <bsd.port.mk>
