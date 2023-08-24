COMMENT=		binary-based efficient object serialization library

DISTNAME=		msgpack-1.6.1
CATEGORIES=		net

HOMEPAGE=		https://msgpack.org/

# Apache2
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

TEST_DEPENDS=		${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_TEST=		rspec3

.include <bsd.port.mk>
