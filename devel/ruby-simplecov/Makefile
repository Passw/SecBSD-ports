COMMENT=		code coverage

DISTNAME=		simplecov-0.18.2
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
		 	devel/ruby-docile,${MODRUBY_FLAVOR} \
			devel/ruby-simplecov-html,${MODRUBY_FLAVOR}		

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
