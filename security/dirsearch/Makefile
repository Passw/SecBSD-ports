COMMENT =		web path scanner

VERSION=		0.4.3
DISTNAME=		dirsearch-${VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/maurosoria/dirsearch

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		maurosoria
GH_PROJECT=		dirsearch
GH_TAGNAME=		v${VERSION}

MODULES=		lang/python

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			net/py-socks${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			devel/py-certifi${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			devel/py-cffi${MODPY_FLAVOR} \
			textproc/py-defusedxml${MODPY_FLAVOR} \
			textproc/py-MarkupSafe${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
			textproc/py-charset-normalizer${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			security/py-requests_ntlm${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR} \
			security/py-ntlm-auth${MODPY_FLAVOR} \
			devel/py-parsing${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR}

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/dirsearch

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/dirsearch.py
	ln -s ${TRUEPREFIX}/share/dirsearch/dirsearch.py \
		${PREFIX}/bin/dirsearch

post-install:
	rm -rf ${INSTDIR}/{.github,.gitignore,Dockerfile}

.include <bsd.port.mk>