COMMENT=		fast port scanner in Rust

GH_ACCOUNT=		RustScan
GH_PROJECT=		RustScan
GH_TAGNAME=		2.1.1

CATEGORIES=		security

HOMEPAGE=		https://github.com/RustScan/RustScan

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=		Yes

WANTLIB+=		c c++abi m pthread

MODULES=		devel/cargo
BUILD_DEPENDS=		security/rust-ring

CONFIGURE_STYLE=	cargo
SEPARATE_BUILD=		Yes

.include "crates.inc"

.include <bsd.port.mk>
