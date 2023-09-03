COMMENT=		ruby parser

DISTNAME=		parser-3.2.2.3
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=	 	${RUN_DEPENDS} \
			devel/ruby-ast,${MODRUBY_FLAVOR} \
			devel/ruby-racc,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
