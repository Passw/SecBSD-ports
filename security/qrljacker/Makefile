COMMENT=		qrljacking exploitation framework

MODPY_EGG_VERSION=	2.1.2
GH_COMMIT=		1b0a4e236cc7376de6067fd0c989198cf90ed040
GH_ACCOUNT=		OWASP
GH_PROJECT=		QRLJacking

DISTNAME=		qrljacker-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/OWASP/QRLJacking

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	QRLJacker/QrlJacker.py \
			QRLJacker/core/browser.py \
			QRLJacker/core/Cli.py \
			QRLJacker/core/color.py \
			QRLJacker/core/db.py \
			QRLJacker/core/module.py \
			QRLJacker/core/module_utils.py \
			QRLJacker/core/Settings.py \
			QRLJacker/core/utils.py

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/py-pathlib2${MODPY_FLAVOR} \
			devel/py-terminaltables${MODPY_FLAVOR} \
			graphics/py-Pillow${MODPY_FLAVOR} \
			www/geckodriver \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-selenium${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR} \
			www/py-user-agent${MODPY_FLAVOR} \
			www/mozilla-firefox

NO_BUILD=		Yes

INSTDIR=		${PREFIX}/share/qrljacker

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/QRLJacker/QrlJacker.py
	ln -s ${TRUEPREFIX}/share/qrljacker/QRLJacker/QrlJacker.py \
	${PREFIX}/bin/qrljacker

.include <bsd.port.mk>
