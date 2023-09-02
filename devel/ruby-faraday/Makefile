COMMENT=		faraday

DISTNAME=		faraday-2.7.6
CATEGORIES=		devel
MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-faraday-net-http,${MODRUBY_FLAVOR} \
			devel/ruby-ruby2-keywords,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
