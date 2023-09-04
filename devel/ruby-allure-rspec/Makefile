COMMENT=		generate rich allure test reports

DISTNAME=		allure-rspec-2.22.0
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-allure-ruby-commons,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/core,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
