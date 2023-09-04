COMMENT=		implement allure result generation

DISTNAME=		allure-ruby-commons-2.22.0
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			mail/ruby-mime-types,${MODRUBY_FLAVOR} \
			devel/ruby-require-all,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/expectations,${MODRUBY_FLAVOR} \
			devel/ruby-uuid,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
