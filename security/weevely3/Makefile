COMMENT=		weaponized web shell

MODPY_EGG_VERSION=	4.0.1
DISTNAME=		weevely3-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/epinna/weevely3

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		epinna
GH_PROJECT=		weevely3
GH_COMMIT=		2155d8e8081e4d67ead6c915785e32f922beabfa

MODULES=		lang/python

RUN_DEPENDS=		textproc/py-prettytable${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			devel/readline \
			security/py-openssl${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/weevely3

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/weevely.py
	${INSTALL_MAN} ${WRKSRC}/weevely.1 \
	${PREFIX}/man/man1
	ln -s ${TRUEPREFIX}/share/weevely3/weevely.py \
	${PREFIX}/bin/weevely

post-install:
	rm -rf ${INSTDIR}/{.gitignore,.travis.yml}
	rm -rf ${INSTDIR}/{requirements.txt,tests}

.include <bsd.port.mk>
