ONLY_FOR_ARCHS=	aarch64 amd64

COMMENT=	semi-automatic OSINT framework

GH_ACCOUNT=	kpcyrd
GH_PROJECT=	sn0int
GH_TAGNAME=	v0.26.0

CATEGORIES=	security

HOMEPAGE=	https://sn0int.readthedocs.io

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

# uses pledge()
LIB_DEPENDS=	databases/sqlite3 security/libsodium ${MODLUA_LIB_DEPENDS}
WANTLIB+=	c c++abi m pthread sqlite3 sodium ${MODLUA_WANTLIB}

MODLUA_VERSION=	5.2
MODLUA_SA=	Yes

MODULES=	devel/cargo \
		lang/lua
BUILD_DEPENDS=	security/rust-ring \
		textproc/py-sphinx,python3
RUN_DEPENDS=	net/libmaxminddb,-asn \
		net/libmaxminddb,-city

.include "crates.inc"

CONFIGURE_STYLE=cargo
SEPARATE_BUILD=	Yes

MODCARGO_RUSTFLAGS=-C debuginfo=0

RELEASE_DIR=	${MODCARGO_TARGET_DIR}/release

do-build:
	@${MODCARGO_BUILD_TARGET}
	${LOCALBASE}/bin/sphinx-build -Nb man ${WRKSRC}/docs ${WRKBUILD}
	${RELEASE_DIR}/sn0int completions bash > ${WRKBUILD}/sn0int.bash
	${RELEASE_DIR}/sn0int completions zsh > ${WRKBUILD}/_sn0int
	${RELEASE_DIR}/sn0int completions fish > ${WRKBUILD}/sn0int.fish

do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/sn0int ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKBUILD}/sn0int.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKBUILD}/sn0int.bash \
	    ${PREFIX}/share/bash-completion/completions/sn0int
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions
	${INSTALL_DATA} ${WRKBUILD}/sn0int.fish ${PREFIX}/share/fish/completions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/_sn0int ${PREFIX}/share/zsh/site-functions/

.include <bsd.port.mk>
