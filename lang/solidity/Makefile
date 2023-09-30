COMMENT=		solidity contract oriented programming language

V=			0.8.21
DISTNAME=		solidity_${V}
PKGNAME=		solidity-${V}

CATEGORIES=		lang

HOMEPAGE=		https://github.com/ethereum/solidity

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/ethereum/solidity/releases/download/v0.8.21/

WANTLIB+=		c m gmp pthread z3 ${COMPILER_LIBCXX}

COMPILER=		base-clang ports-gcc

MODULES=		devel/cmake

BUILD_DEPENDS=		devel/boost \
			devel/fmt \
			devel/range-v3 \
			devel/jsoncpp

LIB_DEPENDS=		devel/gmp \
			math/z3

CONFIGURE_ARGS=		INC="-I${LOCALBASE}/include" \
			LIBS="-lm -L${LOCALBASE}/lib -lgmp"

CONFIGURE_ENV+=		CFLAGS="${CFLAGS}" \
			CPPFLAGS="${CFLAGS} ${CPPFLAGS}" \
			LDFLAGS="${LDFLAGS}"

CONFIGURE_ARGS+=	-DUSE_LD_GOLD=OFF -DTESTS=OFF \
			-DRANGE_V3_INCLUDE_DIR="${LOCALBASE}/include" \
			-DJSONCPP_INCLUDE_DIR:STRING="${LOCALBASE}/include/jsoncpp" \
			-DSTRICT_Z3_VERSION=OFF

.include <bsd.port.mk>
