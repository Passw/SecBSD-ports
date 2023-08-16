COMMENT=		finds endpoints in JavaScript files

MODPY_EGG_VERSION=	1.0
GH_COMMIT=		095bb6218faca9e00169357f663feba0a84202a5
GH_ACCOUNT=		GerbenJavado
GH_PROJECT=		LinkFinder

DISTNAME=		linkfinder-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_ADJ_FILES=	linkfinder.py

RUN_DEPENDS=		devel/py-jsbeautifier

MODPY_PYBUILD=		setuptools

INSTDIR=		${PREFIX}/share/linkfinder

do-install:
	cp -r ${WRKSRC} ${INSTDIR}
	chmod 755 ${INSTDIR}/linkfinder.py
	ln -s ${TRUEPREFIX}/share/linkfinder/linkfinder.py \
		${PREFIX}/bin/linkfinder

post-install:
	rm -rf ${INSTDIR}/{LinkFinder.egg-info,.dockerignore}
	rm -rf ${INSTDIR}/{.gitignore,Dockerfile,requirements.txt}
	rm -rf ${INSTDIR}/setup.py

.include <bsd.port.mk>
