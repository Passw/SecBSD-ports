COMMENT=		fast subdomains enumeration tool 

MODPY_EGG_VERSION=	1.1
DISTNAME=		sublist3r-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

HOMEPAGE=		https://github.com/aboul3la/Sublist3r

# GPL-2.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		aboul3la
GH_PROJECT=		Sublist3r
GH_COMMIT=		729d649ec5370730172bf6f5314aafd68c874124

MODULES=		lang/python
MODPY_ADJ_FILES=	sublist3r.py

RUN_DEPENDS=		net/py-dnspython${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/sublist3r

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/sublist3r.py
	ln -s ${TRUEPREFIX}/share/sublist3r/sublist3r.py \
	${PREFIX}/bin/sublist3r

.include <bsd.port.mk>
