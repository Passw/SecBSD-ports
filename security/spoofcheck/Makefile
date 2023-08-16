COMMENT=		checks a domain for email protections

MODPY_EGG_VERSION=	0.1
DISTNAME=		spoofcheck-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		BishopFox
GH_PROJECT=		spoofcheck
GH_COMMIT=		8cce591efc4db1691b0f1d2a74395714e87f0dcc

MODULES=		lang/python

RUN_DEPENDS=		devel/py-colorama${MODPY_FLAVOR} \
			www/py-emailprotections \
			net/py-dnslib${MODPY_FLAVOR} \
			www/py-tldextract

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/spoofcheck

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/spoofcheck.py
	ln -s ${TRUEPREFIX}/share/spoofcheck/spoofcheck.py \
	${PREFIX}/bin/spoofcheck

post-install:
	rm -rf ${INSTDIR}/{.gitignore,requirements.txt}

.include <bsd.port.mk>
