COMMENT=	SSH tarpit

V=		1.1
DISTNAME=	endlessh-$V

CATEGORIES=	security

HOMEPAGE=	https://github.com/skeeto/endlessh

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Unlicense
PERMIT_PACKAGE= Yes

# uses pledge() and unveil()
WANTLIB= 	c

GH_ACCOUNT=	skeeto
GH_PROJECT=	endlessh
GH_COMMIT=	dfe44eb2c5b6fc3c48a39ed826fe0e4459cdf6ef

MAKE_FLAGS=	CFLAGS="${CFLAGS}" LDFLAGS=""

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/endlessh
	${INSTALL_DATA} ${WRKSRC}/util/smf/endlessh.conf \
		${PREFIX}/share/examples/endlessh/config

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
