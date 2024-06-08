COMMENT=	mailing list manager

V=		1.4.6

DISTNAME=	mlmmj-${V}

CATEGORIES=	mail

HOMEPAGE=	https://codeberg.org/mlmmj/mlmmj

MAINTAINER=	Exquisite Team <team@exquisite.social>

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

SITES=		${HOMEPAGE}/releases/download/RELEASE_${V:S/./_/g}/

BUILD_DEPENDS=	devel/kyua-cli

LIB_DEPENDS=	converters/libiconv

WANTLIB+=	c iconv

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-receive-strip=yes

CONFIGURE_ENV=	CPPFLAGS="-I${WRKSRC}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv"

DOCS=	README* TUNABLES.md

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} contrib/receivestrip/README \
	${PREFIX}/share/doc/mlmmj/README.receive-strip

.include <bsd.port.mk>
