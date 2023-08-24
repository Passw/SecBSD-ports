COMMENT=	access a SQLite3 database from ruby

DISTNAME=	sqlite3-1.6.2
PKGNAME=	ruby-sqlite3-1.6.2

CATEGORIES=	databases

HOMEPAGE=	https://github.com/sparklemotion/sqlite3-ruby

# BSD
PERMIT_PACKAGE=	Yes

GH_ACCOUNT=	sparklemotion
GH_PROJECT=	sqlite3-ruby
GH_TAGNAME=	v1.6.2

MODULES=	lang/ruby

WANTLIB=	sqlite3
LIB_DEPENDS=	databases/sqlite3

BUILD_DEPENDS+=	${RUN_DEPENDS} \
		devel/ruby-mini_portile2,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem ext
CONFIGURE_ARGS=		--enable-system-libraries

.include <bsd.port.mk>
