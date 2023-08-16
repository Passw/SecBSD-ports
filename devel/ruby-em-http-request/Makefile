COMMENT=		ruby http request client

DISTNAME=		em-http-request-1.1.7
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			www/ruby-addressable \
			devel/ruby-cookiejar \
			devel/ruby-em-socksify \
			devel/ruby-eventmachine \
			devel/ruby-http-parser

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
