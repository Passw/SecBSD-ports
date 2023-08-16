COMMENT=		eventmachine

DISTNAME=		eventmachine-1.2.7
CATEGORIES=		devel

HOMEPAGE=		https://rubyeventmachine.com

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Ruby/GLP- 2.0
PERMIT_PACKAGE=		Yes

WANTLIB+=		${COMPILER_LIBCXX} crypto ssl

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
