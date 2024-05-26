COMMENT=	terrapin scanner

MODGO_MODNAME=	github.com/RUB-NDS/Terrapin-Scanner
MODGO_VERSION=	v1.1.3

DISTNAME=	terrapin-scanner-${MODGO_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://terrapin-attack.com

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES =	\
	github.com/fatih/color		 v1.16.0 \
	github.com/google/go-cmp	 v0.5.8 \
	github.com/mattn/go-colorable	 v0.1.13 \
	github.com/mattn/go-isatty	 v0.0.20 \
	golang.org/x/exp		 v0.0.0-20231219180239-dc181d75b848 \
	golang.org/x/mod		 v0.14.0 \
	golang.org/x/sys		 v0.14.0 \
	golang.org/x/tools		 v0.16.0

MODGO_MODFILES =	\
	github.com/mattn/go-isatty	 v0.0.16 \
	golang.org/x/sys		 v0.0.0-20220811171246-fbc7d0a398ab \
	golang.org/x/sys		 v0.6.0

.include <bsd.port.mk>
