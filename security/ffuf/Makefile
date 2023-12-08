COMMENT=	web fuzzer

V=		2.1.0
MODGO_MODNAME=	github.com/ffuf/ffuf/v2
MODGO_VERSION=	v${V}

DISTNAME=	ffuf-${MODGO_VERSION}
PKGNAME=	ffuf-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/ffuf/ffuf

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE= Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES=	\
	github.com/!puerkito!bio/goquery	 v1.8.0 \
	github.com/adrg/xdg			 v0.4.0 \
	github.com/andybalholm/brotli		 v1.0.5 \
	github.com/andybalholm/cascadia		 v1.3.1 \
	github.com/davecgh/go-spew		 v1.1.1 \
	github.com/ffuf/pencode			 v0.0.0-20230421231718-2cea7e60a693 \
	github.com/pelletier/go-toml		 v1.9.5 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.7.0 \
	golang.org/x/net			 v0.7.0 \
	golang.org/x/sys			 v0.5.0 \
	golang.org/x/term			 v0.5.0 \
	golang.org/x/text			 v0.7.0 \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v3			 v3.0.0-20200313102051-9f266ea9e77c

MODGO_MODFILES=	\
	github.com/davecgh/go-spew	 v1.1.0 \
	golang.org/x/net		 v0.0.0-20210916014120-12bc252f5db8 \
	golang.org/x/sys		 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/sys		 v0.0.0-20210423082822-04245dca01da \
	golang.org/x/sys		 v0.0.0-20211025201205-69cdffdb9359 \
	golang.org/x/term		 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/text		 v0.3.6

.include <bsd.port.mk>
