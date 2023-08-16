COMMENT=		replacement for Ruby's URI implementation

DISTNAME= 		addressable-2.8.4
CATEGORIES=		www

HOMEPAGE=		https://github.com/sporkmonger/addressable

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			net/ruby-public-suffix

MODRUBY_TEST=		rake rspec3
TEST_DEPENDS+=		devel/ruby-rspec/3/its

.include <bsd.port.mk>
