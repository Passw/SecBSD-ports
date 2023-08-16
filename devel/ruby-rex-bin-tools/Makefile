COMMENT=		tool for analyze ELF Mach and PE formats

DISTNAME=		rex-bin_tools-0.1.8
PKGNAME=		rex-bin-tools-0.1.8
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Unlicense
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-metasm \
			devel/ruby-rex-arch \
			devel/ruby-rex-core \
			devel/ruby-rex-struct2 \
			devel/ruby-rex-text

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
