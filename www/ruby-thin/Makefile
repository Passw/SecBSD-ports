COMMENT=		fast and very simple Ruby web server

DISTNAME=		thin-1.8.2
CATEGORIES=		www

HOMEPAGE=		http://code.macournoyer.com/thin

# Ruby/GPLv2
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby
CONFIGURE_STYLE=	ruby gem ext

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-daemons,${MODRUBY_FLAVOR} \
			devel/ruby-eventmachine,${MODRUBY_FLAVOR} \
			www/ruby-rack,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
