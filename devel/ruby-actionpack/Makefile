COMMENT=	actionpack

DISTNAME=	actionpack-7.0.4.3
CATEGORIES=	devel

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE =Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/ruby-actionview \
		devel/ruby-activesupport \
		www/ruby-rack \
		www/ruby-rack-test \
		devel/ruby-rails-dom-testing \
		devel/ruby-rails-html-sanitizer

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
