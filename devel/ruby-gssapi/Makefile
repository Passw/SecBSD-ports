COMMENT=		FFi wrapper around GSSAPI for Ruby

DISTNAME=		gssapi-1.3.1
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/ruby-ffi \
			devel/ruby-websocket-driver

CONFIGURE_STYLE= 	ruby gem

.include <bsd.port.mk>
