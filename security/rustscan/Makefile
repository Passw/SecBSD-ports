COMMENT=	fast port scanner in Rust
CATEGORIES=	security
MAINTAINER=	Purple Rain <purplerain@secbsd.org>

DIST_TUPLE=     github RustScan RustScan 2.1.1 . #GPLv3

PKGNAME=	rustscan-2.1.1

HOMEPAGE=	https://github.com/RustScan/RustScan

PERMIT_PACKAGE=	Yes

WANTLIB+=	c c++abi m pthread

MODULES=	devel/cargo
BUILD_DEPENDS=	security/rust-ring

CONFIGURE_STYLE=	cargo
SEPARATE_BUILD=		Yes

.include "crates.inc"

.include <bsd.port.mk>
