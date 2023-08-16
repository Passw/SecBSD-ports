COMMENT=	WordPress security scanner

DISTNAME=	wpscan-3.8.24

CATEGORIES=	security

HOMEPAGE=	https://wpscan.com

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# Free for non-commercial use
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby
MODRUBY_HANDLE_FLAVORS=	No
GEM_FLAGS=	--no-format-executable

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS+=	${RUN_DEPENDS} \
		security/ruby-cms_scanner,${MODRUBY_FLAVOR}

.include <bsd.port.mk>