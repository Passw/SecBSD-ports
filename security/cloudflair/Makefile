COMMENT=	cloudflare osint tool

MODPY_EGG_VERSION=	0.0.1
DISTNAME=	christophetd-CloudFlair-8629b39
PKGNAME=	cloudflair-${MODPY_EGG_VERSION}

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Unlicense
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/christophetd/CloudFlair/tarball/master/

MODULES=	lang/python

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	devel/py-html-similarity${MODPY_FLAVOR} \
		devel/py-ipaddress${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-urllib3${MODPY_FLAVOR} \
		security/py-censys${MODPY_FLAVOR}

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/cloudflair

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/cloudflair.py
	ln -s ${TRUEPREFIX}/share/cloudflair/cloudflair.py \
		${PREFIX}/bin/cloudflair

post-install:
	rm -rf ${INSTDIR}/{.github,.gitignore,Dockerfile}
	rm -rf ${INSTDIR}/{requirements.txt,.travis.yml}

.include <bsd.port.mk>
