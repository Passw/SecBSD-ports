COMMENT=		cross-platform dynamic library loading for ruby

DISTNAME=		ffi-1.15.3
CATEGORIES=		security

HOMEPAGE=		https://github.com/ffi/ffi

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# LPGLv3
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

WANTLIB=		ffi
WANTLIB+=		c++abi

LIB_DEPENDS=		devel/libffi

CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
