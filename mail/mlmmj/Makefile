COMMENT=	mailing list manager

DISTNAME=	mlmmj-1.4.5

CATEGORIES=	mail

HOMEPAGE=	https://codeberg.org/mlmmj/mlmmj

MAINTAINER=	Exquisite Team <team@exquisite.social>

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc

SITES=		${HOMEPAGE}/archive/

LIB_DEPENDS=	converters/libiconv \
		devel/kyua-cli

WANTLIB+=	c iconv

DISTFILES=	RELEASE_1_4_5${EXTRACT_SUFX}

WRKDIST=	${WRKDIR}/mlmmj

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ENV+=	CFLAGS="-I${LOCALBASE}/include -I${WRKSRC}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L/usr/local/lib -liconv"

post-extract:
	cd ${WRKSRC}; ${AUTOCONF_ENV} autoreconf -fi

DOCS=	README* TUNABLES

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mlmmj
	cd ${WRKSRC} && ${INSTALL_DATA} contrib/receivestrip/README \
	${PREFIX}/share/doc/mlmmj/README.receive-strip

.include <bsd.port.mk>
