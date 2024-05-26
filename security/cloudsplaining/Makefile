COMMENT=		aws security assessment tool

MODPY_EGG_VERSION=	0.6.2
DISTNAME=		cloudsplaining-${MODPY_EGG_VERSION}

CATEGORIES=		security

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

HOMEPAGE=		https://github.com/salesforce/cloudsplaining

# BSD 3-Clause
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

RUN_DEPENDS=		net/py-boto3${MODPY_FLAVOR} \
			net/py-botocore${MODPY_FLAVOR} \
			devel/py-cached-property${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-click-option-group${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}  \
			textproc/py-yaml${MODPY_FLAVOR}  \
			textproc/py-markdown${MODPY_FLAVOR}  \
			devel/py-policy-sentry${MODPY_FLAVOR} \
			devel/py-schema${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
