COMMENT=		actionpack

DISTNAME=		actionpack-7.0.5
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-actionview,${MODRUBY_FLAVOR} \
			devel/ruby-activesupport,${MODRUBY_FLAVOR} \
			www/ruby-rack,${MODRUBY_FLAVOR} \
			www/ruby-rack-test,${MODRUBY_FLAVOR} \
			devel/ruby-rails-dom-testing,${MODRUBY_FLAVOR} \
			devel/ruby-rails-html-sanitizer,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
