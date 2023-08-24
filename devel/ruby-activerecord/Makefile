COMMENT=		activerecord

DISTNAME=		activerecord-7.0.4.3
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-activemodel,${MODRUBY_FLAVOR} \
			devel/ruby-activesupport,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
