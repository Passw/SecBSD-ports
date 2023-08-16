COMMENT=		runtime developer console and IRB alternative

DISTNAME=		pry-0.14.2
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Ruby
PERMIT_PACKAGE=		Yes

WANTLIB+=		c m

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-coderay \
			devel/ruby-method-source

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
