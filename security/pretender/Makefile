COMMENT=	relaying attack tool

MODGO_MODNAME=	github.com/RedTeamPentesting/pretender
MODGO_VERSION=	v1.2.0

DISTNAME=	pretender-${MODGO_VERSION}
PKGNAME=	pretender-1.2.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/RedTeamPentesting/pretender

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES=	\
	github.com/davecgh/go-spew		 v1.1.0 \
	github.com/fanliao/go-promise		 v0.0.0-20141029170127-1890db352a72 \
	github.com/google/go-cmp		 v0.5.9 \
	github.com/hugelgupf/socketpair		 v0.0.0-20190730060125-05d35a94e714 \
	github.com/insomniacslk/dhcp		 v0.0.0-20231016090811-6a2c8fbdcc1c \
	github.com/josharian/native		 v1.1.0 \
	github.com/jsimonetti/rtnetlink		 v1.3.5 \
	github.com/mdlayher/ndp			 v1.0.1 \
	github.com/mdlayher/netlink		 v1.7.2 \
	github.com/mdlayher/packet		 v1.1.2 \
	github.com/mdlayher/socket		 v0.4.1 \
	github.com/miekg/dns			 v1.1.56 \
	github.com/pierrec/lz4/v4		 v4.1.18 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/smartystreets/goconvey	 v1.6.4 \
	github.com/spf13/pflag			 v1.0.5 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.6.1 \
	github.com/u-root/uio			 v0.0.0-20230305220412-3e8cd9d6bf63 \
	github.com/yuin/goldmark		 v1.4.13 \
	golang.org/x/crypto			 v0.14.0 \
	golang.org/x/mod			 v0.13.0 \
	golang.org/x/net			 v0.17.0 \
	golang.org/x/sync			 v0.4.0 \
	golang.org/x/sys			 v0.13.0 \
	golang.org/x/term			 v0.13.0 \
	golang.org/x/text			 v0.13.0 \
	golang.org/x/tools			 v0.14.0 \
	gopkg.in/yaml.v3			 v3.0.0

MODGO_MODFILES=	\
	github.com/josharian/native	 v1.0.1-0.20221213033349-c1e37c09b531 \
	github.com/pierrec/lz4/v4	 v4.1.14 \
	github.com/u-root/uio		 v0.0.0-20230220225925-ffce2a382923 \
	golang.org/x/mod		 v0.12.0 \
	golang.org/x/mod		 v0.8.0 \
	golang.org/x/net		 v0.15.0 \
	golang.org/x/net		 v0.16.0 \
	golang.org/x/net		 v0.9.0 \
	golang.org/x/sync		 v0.3.0 \
	golang.org/x/sys		 v0.0.0-20220622161953-175b2fd9d664 \
	golang.org/x/sys		 v0.12.0 \
	golang.org/x/sys		 v0.5.0 \
	golang.org/x/sys		 v0.7.0 \
	golang.org/x/text		 v0.9.0 \
	golang.org/x/tools		 v0.13.0 \
	golang.org/x/tools		 v0.6.0

.include <bsd.port.mk>
