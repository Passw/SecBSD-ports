COMMENT =	firmware analysis tool 

DIST_TUPLE =	github ReFirmLabs binwalk v3.1.0 .

CATEGORIES =	sysutils

MAINTAINER =	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} bz2 fontconfig freetype lzma m

MODULES =	devel/cargo

LIB_DEPENDS =	archivers/bzip2 \
		archivers/xz

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
