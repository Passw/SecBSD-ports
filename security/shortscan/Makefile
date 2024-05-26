COMMENT=	IIS short filename disclosure vuln scanner

MODGO_MODNAME=	github.com/bitquark/shortscan
MODGO_VERSION=	v0.9.0

DISTNAME=	shortscan-${MODGO_VERSION}
PKGNAME=	shortscan-0.9.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/bitquark/shortscan

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES =	\
	github.com/alexflint/go-arg	 v1.4.3 \
	github.com/alexflint/go-scalar	 v1.1.0 \
	github.com/davecgh/go-spew	 v1.1.1 \
	github.com/fatih/color		 v1.15.0 \
	github.com/mattn/go-colorable	 v0.1.13 \
	github.com/mattn/go-isatty	 v0.0.17 \
	github.com/pmezard/go-difflib	 v1.0.0 \
	github.com/sirupsen/logrus	 v1.9.3 \
	github.com/stretchr/objx	 v0.1.0 \
	github.com/stretchr/testify	 v1.7.0 \
	golang.org/x/sys		 v0.6.0 \
	gopkg.in/check.v1		 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v3		 v3.0.0-20200313102051-9f266ea9e77c

MODGO_MODFILES =	\
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/mattn/go-isatty	 v0.0.16 \
	github.com/stretchr/testify	 v1.2.2 \
	golang.org/x/sys		 v0.0.0-20220715151400-c0bba94af5f8 \
	golang.org/x/sys		 v0.0.0-20220811171246-fbc7d0a398ab

.include <bsd.port.mk>
