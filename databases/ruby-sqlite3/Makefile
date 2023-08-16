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

WANTLIB+=	c++abi curses readline z

MODULES=	lang/ruby

BUILD_DEPENDS+=        ${RUN_DEPENDS}
RUN_DEPENDS+=          devel/ruby-mini_portile2

CONFIGURE_ENV+=	RUBY="${RUBY}"

CONFIGURE_ARGS=         --with-sqlite3-dir=/usr/local \
			--with-sqlite3-libdir=/usr/local/lib \
                        --with-sqlite3-incdir=/usr/local/include \
			--enable-loadable-sqlite-extensions

CONFIGURE_STYLE=	ruby gem ext

pre-configure:
	cd ${WRKSRC}/ports/archives && ${TAR} zxf sqlite-autoconf-3410200.tar.gz
	rm ${WRKSRC}/ports/archives/sqlite-autoconf-3410200/configure
	rm ${WRKSRC}/ports/archives/sqlite-autoconf-3410200/ltmain.sh
	rm ${WRKSRC}/ports/archives/sqlite-autoconf-3410200/tea/configure
	cp ${FILESDIR}/configure ${WRKSRC}/ports/archives/sqlite-autoconf-3410200
	cp ${FILESDIR}/ltmain.sh ${WRKSRC}/ports/archives/sqlite-autoconf-3410200
	cp ${FILESDIR}/tea.configure ${WRKSRC}/ports/archives/sqlite-autoconf-3410200/tea/configure

.include <bsd.port.mk>
