COMMENT=	Windows Exploit Suggester - Next Generation

MODPY_EGG_VERSION= 1.0.3
DISTNAME=	wesng-${MODPY_EGG_VERSION}
# definitions.zip isn't in the pypi release, and is updated frequently;
# fetch it from upstream's github repo instead
DEF_DATE=	20231121
DEF_COMMITHASH=	fdbf1472479b57cfabd2a2b30afd52b8e41f2a8e

HOMEPAGE=	https://github.com/bitsadmin/wesng

CATEGORIES=	security

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	textproc/py-chardet${MODPY_FLAVOR} \
		graphics/py-termcolor${MODPY_FLAVOR}

DISTFILES=	${DISTNAME}.tar.gz
DISTFILES.d = 	definitions-${DEF_DATE}{definitions}.zip
SITES.d=	https://github.com/bitsadmin/wesng/raw/${DEF_COMMITHASH}/
EXTRACT_ONLY=	${DISTFILES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wes.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/wesng/
	${INSTALL_DATA} ${FULLDISTDIR}/definitions-${DEF_DATE}.zip \
	    ${PREFIX}/share/wesng/definitions.zip

.include <bsd.port.mk>
