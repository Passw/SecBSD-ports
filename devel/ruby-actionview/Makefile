COMMENT=		actionview

VERSION=		7.0.4.3
DISTNAME=		actionview-${VERSION}

CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-activesupport \
			textproc/ruby-builder/3.1 \
			devel/ruby-erubi \
			devel/ruby-rails-dom-testing \
			devel/ruby-rails-html-sanitizer

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>