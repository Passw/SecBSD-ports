COMMENT=	OSINT tool

MODGO_MODNAME=	github.com/edoardottt/cariddi
MODGO_VERSION=	v1.3.2

DISTNAME=	cariddi-${MODGO_VERSION}
PKGNAME=	cariddi-1.3.2

CATEGORIES=	security

HOMEPAGE=	https://github.com/edoardottt/cariddi

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES=	\
	github.com/!puerkito!bio/goquery	 v1.8.1 \
	github.com/andybalholm/cascadia		 v1.3.1 \
	github.com/antchfx/htmlquery		 v1.3.0 \
	github.com/antchfx/xmlquery		 v1.3.15 \
	github.com/antchfx/xpath		 v1.2.4 \
	github.com/davecgh/go-spew		 v1.1.0 \
	github.com/fatih/color			 v1.15.0 \
	github.com/gobwas/glob			 v0.2.3 \
	github.com/gocolly/colly		 v1.2.0 \
	github.com/golang/groupcache		 v0.0.0-20210331224755-41bb18bfe9da \
	github.com/golang/protobuf		 v1.5.3 \
	github.com/google/go-cmp		 v0.5.5 \
	github.com/kennygrant/sanitize		 v1.2.4 \
	github.com/mattn/go-colorable		 v0.1.13 \
	github.com/mattn/go-isatty		 v0.0.18 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/saintfish/chardet		 v0.0.0-20230101081208-5e3ef4b5456d \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.3.0 \
	github.com/temoto/robotstxt		 v1.1.2 \
	github.com/yuin/goldmark		 v1.4.13 \
	golang.org/x/crypto			 v0.0.0-20210921155107-089bfa567519 \
	golang.org/x/mod			 v0.8.0 \
	golang.org/x/net			 v0.8.0 \
	golang.org/x/sync			 v0.0.0-20220722155255-886fb9371eb4 \
	golang.org/x/sys			 v0.7.0 \
	golang.org/x/term			 v0.6.0 \
	golang.org/x/text			 v0.8.0 \
	golang.org/x/tools			 v0.6.0 \
	golang.org/x/xerrors			 v0.0.0-20191204190536-9bdfabe68543 \
	google.golang.org/appengine		 v1.6.7 \
	google.golang.org/protobuf		 v1.30.0

MODGO_MODFILES=	\
	github.com/antchfx/xpath	 v1.2.3 \
	github.com/golang/protobuf	 v1.3.1 \
	github.com/golang/protobuf	 v1.5.0 \
	github.com/mattn/go-isatty	 v0.0.16 \
	github.com/mattn/go-isatty	 v0.0.17 \
	golang.org/x/crypto		 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/mod		 v0.6.0-dev.0.20220419223038-86c51ed26bb4 \
	golang.org/x/net		 v0.0.0-20190603091049-60506f45cf65 \
	golang.org/x/net		 v0.0.0-20190620200207-3b0461eec859 \
	golang.org/x/net		 v0.0.0-20210226172049-e18ecbb05110 \
	golang.org/x/net		 v0.0.0-20210916014120-12bc252f5db8 \
	golang.org/x/net		 v0.0.0-20220722155237-a158d28d115b \
	golang.org/x/net		 v0.5.0 \
	golang.org/x/net		 v0.7.0 \
	golang.org/x/sync		 v0.0.0-20190423024810-112230192c58 \
	golang.org/x/sys		 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys		 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/sys		 v0.0.0-20210423082822-04245dca01da \
	golang.org/x/sys		 v0.0.0-20210615035016-665e8c7367d1 \
	golang.org/x/sys		 v0.0.0-20220520151302-bc2c85ada10a \
	golang.org/x/sys		 v0.0.0-20220722155257-8c9f86f7a55f \
	golang.org/x/sys		 v0.0.0-20220811171246-fbc7d0a398ab \
	golang.org/x/sys		 v0.4.0 \
	golang.org/x/sys		 v0.5.0 \
	golang.org/x/sys		 v0.6.0 \
	golang.org/x/term		 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/term		 v0.0.0-20210927222741-03fcf44c2211 \
	golang.org/x/term		 v0.4.0 \
	golang.org/x/term		 v0.5.0 \
	golang.org/x/text		 v0.3.0 \
	golang.org/x/text		 v0.3.2 \
	golang.org/x/text		 v0.3.3 \
	golang.org/x/text		 v0.3.6 \
	golang.org/x/text		 v0.3.7 \
	golang.org/x/text		 v0.6.0 \
	golang.org/x/text		 v0.7.0 \
	golang.org/x/tools		 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/tools		 v0.0.0-20191119224855-298f0cb1881e \
	golang.org/x/tools		 v0.1.12 \
	golang.org/x/xerrors		 v0.0.0-20190717185122-a985d3407aa7 \
	google.golang.org/protobuf	 v1.26.0 \
	google.golang.org/protobuf	 v1.26.0-rc.1

.include <bsd.port.mk>
