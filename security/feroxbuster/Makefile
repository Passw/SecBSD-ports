COMMENT=	recursive content discovery tool

V=		v2.10.4
DIST_TUPLE=	github epi052 feroxbuster ${V} .

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

RELEASE_DIR=	${MODCARGO_TARGET_DIR}/release

INSTDIR=	${PREFIX}/share/feroxbuster

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_PROGRAM} ${RELEASE_DIR}/feroxbuster ${INSTDIR}
	ln -s ${TRUEPREFIX}/share/feroxbuster/feroxbuster \
	${PREFIX}/bin/feroxbuster
	cp ${WRKSRC}/*.example ${INSTDIR}/ferox-config.toml

.include "crates.inc"

.include <bsd.port.mk>
