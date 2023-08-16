COMMENT=		standards-compliant webSocket server and client

DISTNAME=		faye-websocket-0.11.2
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/ruby-eventmachine \
			devel/ruby-websocket-driver

CONFIGURE_STYLE= 	ruby gem

.include <bsd.port.mk>
