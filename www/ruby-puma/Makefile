COMMENT=		simple, fast, threaded webserver for rack applications

DISTNAME=		puma-6.2.2
CATEGORIES=		www

HOMEPAGE=		https://puma.io

# BSD
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-nio4r

WANTLIB=		crypto ssl
CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
