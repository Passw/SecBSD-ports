COMMENT=	http fuzzer

MODGO_MODNAME=	github.com/RedTeamPentesting/monsoon
MODGO_VERSION=	v0.8.0

DISTNAME=	monsoon-${MODGO_VERSION}
PKGNAME=	monsoon-0.8.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/RedTeamPentesting/monsoon

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

RUN_DEPENDS=	security/seclists

MODGO_MODULES=	\
	github.com/cpuguy83/go-md2man/v2	 v2.0.2 \
	github.com/creack/pty			 v1.1.9 \
	github.com/fd0/termstatus		 v1.1.0 \
	github.com/google/go-cmp		 v0.5.8 \
	github.com/inconshreveable/mousetrap	 v1.1.0 \
	github.com/juju/ratelimit		 v1.0.2 \
	github.com/kr/pretty			 v0.3.0 \
	github.com/kr/pty			 v1.1.1 \
	github.com/kr/text			 v0.2.0 \
	github.com/mattn/go-isatty		 v0.0.17 \
	github.com/pkg/diff			 v0.0.0-20210226163009-20ebb0f2a09e \
	github.com/rogpeppe/go-internal		 v1.8.1 \
	github.com/russross/blackfriday/v2	 v2.1.0 \
	github.com/spf13/cobra			 v1.6.1 \
	github.com/spf13/pflag			 v1.0.5 \
	golang.org/x/mod			 v0.8.0 \
	golang.org/x/net			 v0.8.0 \
	golang.org/x/sync			 v0.1.0 \
	golang.org/x/sys			 v0.6.0 \
	golang.org/x/term			 v0.6.0 \
	golang.org/x/text			 v0.8.0 \
	golang.org/x/tools			 v0.6.0 \
	gopkg.in/check.v1			 v1.0.0-20201130134442-10cb98267c6c \
	gopkg.in/errgo.v2			 v2.1.0 \
	gopkg.in/yaml.v3			 v3.0.1

MODGO_MODFILES=	\
	github.com/inconshreveable/mousetrap	 v1.0.1 \
	github.com/kr/pretty			 v0.1.0 \
	github.com/kr/pretty			 v0.2.1 \
	github.com/kr/text			 v0.1.0 \
	github.com/mattn/go-isatty		 v0.0.12 \
	github.com/rogpeppe/go-internal		 v1.6.1 \
	golang.org/x/sys			 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/sys			 v0.0.0-20201026173827-119d4633e4d1 \
	golang.org/x/sys			 v0.0.0-20220811171246-fbc7d0a398ab \
	golang.org/x/sys			 v0.5.0 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/check.v1			 v1.0.0-20180628173108-788fd7840127

.include <bsd.port.mk>
