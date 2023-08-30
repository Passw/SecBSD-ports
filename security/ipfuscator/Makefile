COMMENT=	generate alternative IPv4 address

MODGO_MODNAME=	github.com/dwisiswant0/ipfuscator
MODGO_VERSION=	v1.0.0

DISTNAME=	ipfuscator-${MODGO_VERSION}
PKGNAME=	ipfuscator-1.0.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/dwisiswant0/ipfuscator

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES =	\
	github.com/gobwas/glob	 v0.2.3

.include <bsd.port.mk>