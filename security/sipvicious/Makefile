COMMENT=		tools to audit SIP based VoIP systems

MODPY_EGG_VERSION=	0.3.4
DISTNAME=		sipvicious-${MODPY_EGG_VERSION}

CATEGORIES=		security

HOMEPAGE=		https://github.com/EnableSecurity/sipvicious

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

MODPY_PYBUILD=		setuptools

FLAVORS=		python3
FLAVOR?=		python3

RUN_DEPENDS=		net/scapy

.include <bsd.port.mk>