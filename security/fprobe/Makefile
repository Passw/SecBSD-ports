COMMENT=	HTTP probe

V=	1.5.1
MODGO_MODNAME=	github.com/theblackturtle/fprobe
MODGO_VERSION=	v${V}

DISTNAME=	fprobe-${MODGO_VERSION}
PKGNAME=	fprobe-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/theblackturtle/fprobe

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+= 	c pthread

MODULES=	lang/go

MODGO_MODULES=	\
	github.com/3th1nk/cidr			 v0.0.0-20200222033026-ac57bd3ad921 \
	github.com/andybalholm/brotli		 v1.0.0 \
	github.com/davecgh/go-spew		 v1.1.1 \
	github.com/emirpasic/gods		 v1.12.0 \
	github.com/google/gofuzz		 v1.0.0 \
	github.com/json-iterator/go		 v1.1.9 \
	github.com/klauspost/compress		 v1.10.7 \
	github.com/modern-go/concurrent		 v0.0.0-20180228061459-e0a39a4cb421 \
	github.com/modern-go/reflect2		 v0.0.0-20180701023420-4b7aa43c6742 \
	github.com/panjf2000/ants/v2		 v2.3.1 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.4.0 \
	github.com/valyala/bytebufferpool	 v1.0.0 \
	github.com/valyala/fasthttp		 v1.15.1 \
	github.com/valyala/tcplisten		 v0.0.0-20161114210144-ceec8f93295a \
	golang.org/x/crypto			 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/net			 v0.0.0-20200602114024-627f9648deb9 \
	golang.org/x/sys			 v0.0.0-20200602225109-6fdc65e7d980 \
	golang.org/x/text			 v0.3.0 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2			 v2.2.7

MODGO_MODFILES=	\
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/stretchr/testify	 v1.3.0 \
	golang.org/x/sys		 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys		 v0.0.0-20200323222414-85ca7c5b95cd \
	gopkg.in/yaml.v2		 v2.2.2

.include <bsd.port.mk>
