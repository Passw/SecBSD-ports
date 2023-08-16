COMMENT=	crlf vulnerability scanner

V=	1.4.1
MODGO_MODNAME=	github.com/dwisiswant0/crlfuzz
MODGO_VERSION=	v${V}

DISTNAME=	crlfuzz-${MODGO_VERSION}
PKGNAME=	crlfuzz-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/dwisiswant0/crlfuzz

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+= 	c pthread

WRKDIST=	${WRKSRC}

MODULES=	lang/go

MODGO_MODULES =	\
	github.com/davecgh/go-spew		 v1.1.0 \
	github.com/logrusorgru/aurora		 v0.0.0-20200102142835-e9ef32dff381 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/projectdiscovery/gologger	 v1.0.1 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.5.1 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2			 v2.2.2

.include <bsd.port.mk>
