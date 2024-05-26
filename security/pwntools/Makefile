COMMENT=		CTF framework and exploit development library

MODPY_EGG_VERSION=	4.13.0
GH_COMMIT=		bb1d16c3c64f80ec83672683715acf92d7b15535
GH_ACCOUNT=		Gallopsled
GH_PROJECT=		pwntools

DISTNAME=		pwntools-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://pwntools.com

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT/GPL/BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		devel/py-rpyc${MODPY_FLAVOR}

RUN_DEPENDS=		devel/capstone/python${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-elftools${MODPY_FLAVOR} \
			devel/py-intervaltree${MODPY_FLAVOR} \
			devel/py-serial${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-sortedcontainers${MODPY_FLAVOR} \
			devel/py-unicorn${MODPY_FLAVOR} \
			devel/py-colored-traceback${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			security/ROPgadget \
			security/py-paramiko${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

post-extract:
	rm ${WRKSRC}/pwnlib/update.py

.include <bsd.port.mk>
