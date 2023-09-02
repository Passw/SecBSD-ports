COMMENT=		lib to transform HTML/XML

DISTNAME=		loofah-2.21.3
CATEGORIES=		devel

HOMEPAGE=		https://github.com/flavorjones/loofah

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-crass,${MODRUBY_FLAVOR} \
			textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
