COMMENT=		websocket protocol handler with pluggable I/O

DISTNAME=		websocket-driver-0.7.5
CATEGORIES=		devel
MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

WANTLIB+=		c m

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-websocket-extensions

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
