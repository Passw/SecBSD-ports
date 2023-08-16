COMMENT=		ssh extension with ED25519

DISTNAME=		hrr_rb_ssh-ed25519-0.4.2
PKGNAME=		hrr-rb-ssh-ed25519-0.4.2
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Unlicense
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/ruby-ed25519 \
			devel/ruby-hrr-rb-ssh
		
CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
