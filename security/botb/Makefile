COMMENT=	analysis and exploitation tool

MODGO_MODNAME=	github.com/brompwnie/botb
MODGO_VERSION=	v0.0.0-20211221165503-6d33aaea2fd3

DISTNAME=	botb-${MODGO_VERSION}
PKGNAME=	botb-1.8.0

CATEGORIES=	security

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

HOMEPAGE=	https://github.com/brompwnie/botb

# GPL-3.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES =	\
	github.com/aws/aws-sdk-go	 v1.20.16 \
	github.com/creack/pty		 v1.1.11 \
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/jmespath/go-jmespath	 v0.0.0-20180206201540-c2b33e8439af \
	github.com/pmezard/go-difflib	 v1.0.0 \
	github.com/stretchr/objx	 v0.1.0 \
	github.com/stretchr/testify	 v1.3.0 \
	github.com/tv42/httpunix	 v0.0.0-20150427012821-b75d8614f926 \
	golang.org/x/crypto		 v0.0.0-20190611184440-5c40567a22f8 \
	golang.org/x/net		 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/sys		 v0.0.0-20190412213103-97732733099d \
	golang.org/x/text		 v0.3.0 \
	gopkg.in/check.v1		 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2		 v2.2.8

MODGO_MODFILES =	\
	golang.org/x/crypto	 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/sys	 v0.0.0-20190215142949-d0b11bdaac8a

.include <bsd.port.mk>
