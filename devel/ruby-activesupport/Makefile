COMMENT=		support libraries and Ruby extensions extracted from Rails

DISTNAME=		activesupport-7.0.4.3
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR} \
			devel/ruby-i18n,${MODRUBY_FLAVOR} \
			sysutils/ruby-tzinfo,${MODRUBY_FLAVOR}

CONFIGURE_STYLE= 	ruby gem

.include <bsd.port.mk>
