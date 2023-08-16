COMMENT=		username social networks tool

MODPY_EGG_VERSION=	0.14.3
GH_ACCOUNT=		sherlock-project
GH_PROJECT=		sherlock
GH_COMMIT=		b7cd7ab72af7ef7e3bcd510545a4b71e84e0d82f

DISTNAME=		sherlock-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://sherlock-project.github.io

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/py-certifi${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			net/py-stem${MODPY_FLAVOR} \
			textproc/py-openpyxl${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-requests-futures${MODPY_FLAVOR} \
			www/py-torrequest${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/sherlock

do-install:
	cp -r ${WRKDIST}/sherlock ${INSTDIR}
	chmod 755 ${INSTDIR}/sherlock.py
	ln -s ${TRUEPREFIX}/share/sherlock/sherlock.py \
	${PREFIX}/bin/sherlock

.include <bsd.port.mk>
