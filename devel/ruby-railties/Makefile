COMMENT=		rails internals

DISTNAME=		railties-7.0.5
CATEGORIES=		devel

HOMEPAGE=		https://rubyonrails.org

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-actionpack,${MODRUBY_FLAVOR} \
			devel/ruby-activesupport,${MODRUBY_FLAVOR} \
			devel/ruby-method-source,${MODRUBY_FLAVOR} \
			devel/ruby-thor,${MODRUBY_FLAVOR} \
			devel/ruby-zeitwerk,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
