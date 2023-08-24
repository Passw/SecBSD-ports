COMMENT=		actionview

VERSION=		7.0.4.3
DISTNAME=		actionview-${VERSION}

CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-activesupport,${MODRUBY_FLAVOR} \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			devel/ruby-erubi,${MODRUBY_FLAVOR} \
			devel/ruby-rails-dom-testing,${MODRUBY_FLAVOR} \
			devel/ruby-rails-html-sanitizer,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
