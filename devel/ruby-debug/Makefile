COMMENT=		ruby debugger

DISTNAME=		debug-1.7.2
CATEGORIES=		devel
MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Ruby, BSD-2-Clause
PERMIT_PACKAGE=Yes

MODULES=		lang/ruby

WANTLIB+=		c m

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-irb \
			devel/ruby-reline

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
