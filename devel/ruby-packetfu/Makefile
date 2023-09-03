COMMENT=		mid-level packet manipulation lib

DISTNAME=		packetfu-2.0.0
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-pcaprub,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
