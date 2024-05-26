COMMENT=	url fetcher tool

V=	2.2.1
MODGO_MODNAME=	github.com/lc/gau/v2
MODGO_VERSION=	v${V}

DISTNAME=	gau-${MODGO_VERSION}
PKGNAME=	gau-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/lc/gau

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES =	\
	github.com/andybalholm/brotli		 v1.0.2 \
	github.com/bobesa/go-domain-util	 v0.0.0-20190911083921-4033b5f7dd89 \
	github.com/davecgh/go-spew		 v1.1.1 \
	github.com/deckarep/golang-set/v2	 v2.3.0 \
	github.com/fsnotify/fsnotify		 v1.5.1 \
	github.com/golang/snappy		 v0.0.3 \
	github.com/google/gofuzz		 v1.0.0 \
	github.com/hashicorp/hcl		 v1.0.0 \
	github.com/json-iterator/go		 v1.1.12 \
	github.com/klauspost/compress		 v1.13.4 \
	github.com/kr/fs			 v0.1.0 \
	github.com/lynxsecurity/pflag		 v1.1.3 \
	github.com/lynxsecurity/viper		 v1.10.0 \
	github.com/magiconair/properties	 v1.8.5 \
	github.com/mitchellh/mapstructure	 v1.4.2 \
	github.com/modern-go/concurrent		 v0.0.0-20180228061459-e0a39a4cb421 \
	github.com/modern-go/reflect2		 v1.0.2 \
	github.com/pelletier/go-toml		 v1.9.4 \
	github.com/pkg/errors			 v0.8.1 \
	github.com/pkg/sftp			 v1.10.1 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/sirupsen/logrus		 v1.8.1 \
	github.com/spf13/afero			 v1.6.0 \
	github.com/spf13/cast			 v1.4.1 \
	github.com/spf13/jwalterweatherman	 v1.1.0 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.4.0 \
	github.com/subosito/gotenv		 v1.2.0 \
	github.com/valyala/bytebufferpool	 v1.0.0 \
	github.com/valyala/fasthttp		 v1.31.0 \
	github.com/valyala/tcplisten		 v1.0.0 \
	golang.org/x/crypto			 v0.14.0 \
	golang.org/x/mod			 v0.8.0 \
	golang.org/x/net			 v0.17.0 \
	golang.org/x/sys			 v0.13.0 \
	golang.org/x/term			 v0.13.0 \
	golang.org/x/text			 v0.13.0 \
	golang.org/x/tools			 v0.6.0 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/ini.v1				 v1.64.0 \
	gopkg.in/yaml.v2			 v2.4.0

MODGO_MODFILES =	\
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/stretchr/testify	 v1.2.2 \
	github.com/stretchr/testify	 v1.3.0 \
	golang.org/x/crypto		 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/crypto		 v0.0.0-20190820162420-60c769a6c586 \
	golang.org/x/crypto		 v0.0.0-20210513164829-c07d793c2f9a \
	golang.org/x/net		 v0.0.0-20180811021610-c39426892332 \
	golang.org/x/net		 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net		 v0.0.0-20210226172049-e18ecbb05110 \
	golang.org/x/net		 v0.0.0-20210510120150-4163338589ed \
	golang.org/x/sys		 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys		 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys		 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/sys		 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/sys		 v0.0.0-20210423082822-04245dca01da \
	golang.org/x/sys		 v0.0.0-20210514084401-e8d321eab015 \
	golang.org/x/sys		 v0.0.0-20210630005230-0f9fa26af87c \
	golang.org/x/sys		 v0.5.0 \
	golang.org/x/term		 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/text		 v0.3.0 \
	golang.org/x/text		 v0.3.3 \
	golang.org/x/text		 v0.3.6 \
	golang.org/x/tools		 v0.0.0-20180917221912-90fa682c2a6e \
	gopkg.in/yaml.v2		 v2.2.2

.include <bsd.port.mk>