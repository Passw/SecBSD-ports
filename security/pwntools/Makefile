COMMENT=		CTF framework and exploit development library 

MODPY_EGG_VERSION=	4.12.0
GH_COMMIT=		340b0bf0bcc599896065ab5fccde0e79c9ff4f9c
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

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/capstone/python${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-elftools${MODPY_FLAVOR} \
			devel/py-intervaltree${MODPY_FLAVOR} \
			devel/py-serial${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-sortedcontainers${MODPY_FLAVOR} \
			devel/py-unicorn${MODPY_FLAVOR}<=1.0.3 \
			devel/py-colored-traceback${MODPY_FLAVOR} \
			devel/py-rpyc${MODPY_FLAVOR} \
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
