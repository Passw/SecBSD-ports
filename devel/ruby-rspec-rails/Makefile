COMMENT=		testing framework for Rails

DISTNAME=		rspec-rails-6.0.1
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/ruby-actionpack \
			devel/ruby-activesupport \
			devel/ruby-railties \
			devel/ruby-rspec/3/core \
			devel/ruby-rspec/3/expectations \
			devel/ruby-rspec/3/mocks \
			devel/ruby-rspec/3/support

CONFIGURE_STYLE= 	ruby gem

.include <bsd.port.mk>
