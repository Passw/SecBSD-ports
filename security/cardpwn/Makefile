COMMENT=		tool to find breached credit cards info

MODPY_EGG_VERSION=	1.4
DISTNAME=		cardpwn-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

HOMEPAGE=		https://github.com/itsmehacker/CardPwn

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		itsmehacker
GH_PROJECT=		CardPwn
GH_COMMIT=		166abf9a9dfef0da1576572d6635a4fd431a0539

MODULES=		lang/python

RUN_DEPENDS=		www/py-requests${MODPY_FLAVOR} \
			devel/py-google${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/cardpwn

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/cardpwn.py
	ln -s ${TRUEPREFIX}/share/cardpwn/cardpwn.py \
		${PREFIX}/bin/cardpwn

post-install:
	rm ${INSTDIR}/requirements.txt

.include <bsd.port.mk>
