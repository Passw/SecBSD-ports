COMMENT=	access to time zone data and conversion

DISTNAME=	tzinfo-2.0.6

CATEGORIES=	sysutils
HOMEPAGE=	https://tzinfo.github.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS +=        ${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-concurrent-ruby

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
