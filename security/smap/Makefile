COMMENT=	scanner powered by shodan

V=		0.1.12
MODGO_MODNAME=	github.com/s0md3v/smap
MODGO_VERSION=	v0.0.0-20230516071926-90dfe744c29c

DISTNAME=	smap-${MODGO_VERSION}
PKGNAME=	smap-scanner-${V}

CATEGORIES=	security

HOMEPAGE=	https://github.com/s0md3v/Smap

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# AGPL-3.0
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

MODGO_MODULES=	\
	github.com/google/go-github					 v17.0.0+incompatible \
	github.com/google/go-querystring				 v1.0.0 \
	github.com/weppos/publicsuffix-go				 v0.30.0 \
	github.com/weppos/publicsuffix-go/publicsuffix/generator	 v0.0.0-20220927085643-dc0d00c92642 \
	github.com/yuin/goldmark					 v1.4.13 \
	golang.org/x/crypto						 v0.0.0-20210921155107-089bfa567519 \
	golang.org/x/mod						 v0.6.0-dev.0.20220419223038-86c51ed26bb4 \
	golang.org/x/net						 v0.7.0 \
	golang.org/x/sync						 v0.0.0-20220722155255-886fb9371eb4 \
	golang.org/x/sys						 v0.5.0 \
	golang.org/x/term						 v0.5.0 \
	golang.org/x/text						 v0.7.0 \
	golang.org/x/tools						 v0.1.12 \
	golang.org/x/xerrors						 v0.0.0-20190717185122-a985d3407aa7

MODGO_MODFILES=	\
	github.com/weppos/publicsuffix-go	 v0.12.0 \
	golang.org/x/crypto			 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/net			 v0.0.0-20190620200207-3b0461eec859 \
	golang.org/x/net			 v0.0.0-20200202094626-16171245cfb2 \
	golang.org/x/net			 v0.0.0-20210226172049-e18ecbb05110 \
	golang.org/x/net			 v0.0.0-20220722155237-a158d28d115b \
	golang.org/x/sync			 v0.0.0-20190423024810-112230192c58 \
	golang.org/x/sys			 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys			 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/sys			 v0.0.0-20210615035016-665e8c7367d1 \
	golang.org/x/sys			 v0.0.0-20220520151302-bc2c85ada10a \
	golang.org/x/sys			 v0.0.0-20220722155257-8c9f86f7a55f \
	golang.org/x/term			 v0.0.0-20201126162022-7de9c90e9dd1 \
	golang.org/x/term			 v0.0.0-20210927222741-03fcf44c2211 \
	golang.org/x/text			 v0.3.0 \
	golang.org/x/text			 v0.3.3 \
	golang.org/x/text			 v0.3.7 \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/tools			 v0.0.0-20191119224855-298f0cb1881e

.include <bsd.port.mk>
