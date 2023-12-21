COMMENT=	mailing list manager

DISTNAME=	mlmmj-1.4.2

CATEGORIES=	mail

HOMEPAGE=	https://codeberg.org/mlmmj/mlmmj

MAINTAINER=	Exquisite Team <team@exquisite.social>

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc

SITES=		${HOMEPAGE}/archive/

LIB_DEPENDS=	converters/libiconv \
		devel/atf

WANTLIB+=	c iconv

DISTFILES=	RELEASE_1_4_2${EXTRACT_SUFX}
EXTRACT_SUFX=	.tar.gz

WRKSRC=		${WRKDIR}/mlmmj
WRKDIST=	${WRKDIR}/mlmmj

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ENV+=	CFLAGS="-I${LOCALBASE}/include -I${WRKSRC}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L/usr/local/lib -liconv"

post-extract:
	cd ${WRKSRC}; ${AUTOCONF_ENV} autoreconf -fi

NO_TEST=	Yes

.include <bsd.port.mk>
