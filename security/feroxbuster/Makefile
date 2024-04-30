COMMENT=	recursive content discovery tool

GH_ACCOUNT=	epi052
GH_PROJECT=	feroxbuster
GH_TAGNAME=	v2.10.3

CATEGORIES=	security

HOMEPAGE=	https://epi052.github.io/feroxbuster-docs

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c c++abi crypto m pthread ssl

MODULES=	devel/cargo

RUN_DEPENDS=	security/seclists

CONFIGURE_STYLE=	cargo
SEPARATE_BUILD=		Yes

MODCARGO_RUSTFLAGS=	-C debuginfo=0

RELEASE_DIR=		${MODCARGO_TARGET_DIR}/release

INSTDIR=		${PREFIX}/share/feroxbuster

post-extract:
	rm -rf ${WRKSRC}/choco_package
	rm -rf ${WRKSRC}/install-nix.sh
	rm -rf ${WRKSRC}/snapcraft.yaml
	rm -rf ${WRKSRC}/Dockerfile
	rm -rf ${WRKSRC}/Makefile*
	mv ${WRKSRC}/ferox-config.toml.example \
		${WRKSRC}/ferox-config.toml

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_PROGRAM} ${RELEASE_DIR}/feroxbuster ${INSTDIR}
	cp ${WRKSRC}/ferox-config.toml ${INSTDIR}

.include "crates.inc"

.include <bsd.port.mk>
