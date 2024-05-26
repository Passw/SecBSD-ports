COMMENT=		AWS cloud post exploitation framework

MODPY_EGG_VERSION=	0.1
DISTNAME=		barq-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/Voulnet/barq

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=		Voulnet
GH_PROJECT=		barq
GH_COMMIT=		6f1a68c57a4b6a88c587f7baea8f8b2f076a52ac

MODULES=		lang/python
MODPY_ADJ_FILES=	barq.py

RUN_DEPENDS=		devel/py-clint${MODPY_FLAVOR} \
			net/py-boto3${MODPY_FLAVOR} \
			textproc/py-prettytable${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}

NO_BUILD =		Yes

INSTDIR =		${PREFIX}/share/barq

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/barq.py
	ln -s ${TRUEPREFIX}/share/barq/barq.py ${PREFIX}/bin/barq

post-install:
	rm -rf ${INSTDIR}/{requirements.txt,logo.png}

.include <bsd.port.mk>
