COMMENT=		ruby debugger

DISTNAME=		debug-1.8.0
CATEGORIES=		devel
MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Ruby, BSD-2-Clause
PERMIT_PACKAGE=Yes

MODULES=		lang/ruby

WANTLIB+=		c m

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-irb,${MODRUBY_FLAVOR} \
			devel/ruby-reline,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
