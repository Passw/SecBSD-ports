COMMENT=		sensitive data finder tool

MODPY_EGG_VERSION=	0.1
GH_COMMIT=		a0283cb45d991d83ddd60f42970d1275e5c7d1c1
GH_ACCOUNT=		m4ll0k
GH_PROJECT=		SecretFinder

DISTNAME=		secretfinder-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/m4ll0k/SecretFinder

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/py-jsbeautifier \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-requests-file

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/secret-finder

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/SecretFinder.py
	ln -s ${TRUEPREFIX}/share/secret-finder/SecretFinder.py \
	${PREFIX}/bin/secretfinder

.include <bsd.port.mk>
