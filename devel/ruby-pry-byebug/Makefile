COMMENT=		combine pry with byebug

DISTNAME=		pry-byebug-3.10.1
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/ruby-byebug \
			devel/ruby-pry

CONFIGURE_STYLE= 	ruby gem

.include <bsd.port.mk>
