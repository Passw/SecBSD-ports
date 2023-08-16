COMMENT=		web reconnaissance framework

GH_TAGNAME=		v5.1.2
GH_ACCOUNT=		lanmaster53
GH_PROJECT=		recon-ng

CATEGORIES=		security

HOMEPAGE=		https://github.com/lanmaster53/recon-ng

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

RUN_DEPENDS=		devel/py-olefile${MODPY_FLAVOR} \
			devel/py-xlsxwriter${MODPY_FLAVOR} \
			net/py-dnspython${MODPY_FLAVOR} \
			textproc/py-dicttoxml${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-unicodecsv${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-mechanize${MODPY_FLAVOR}

MODULES=		lang/python

NO_BUILD=		Yes

SUBST_VARS+=		GH_TAGNAME

MODPY_ADJ_FILES=	recon-cli recon-ng recon-web

pre-install:
	${SUBST_CMD} ${WRKSRC}/recon/core/base.py
	rm ${WRKSRC}/recon/core/*{.beforesubst,${PATCHORIG}}

do-install:
.for s in cli ng web
	${INSTALL_SCRIPT} ${WRKSRC}/recon-$s ${PREFIX}/bin
.endfor
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/recon/
	cd ${WRKSRC}/recon && umask 022 && pax -rw . ${WRKINST}/${MODPY_SITEPKG}/recon

.include <bsd.port.mk>

