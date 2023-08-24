COMMENT=		code formatting tool

DISTNAME=		rubocop-1.50.2
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

GH_ACCOUNT=		rubocop
GH_PROJECT=		rubocop
GH_TAGNAME=		v1.50.2

CONFIGURE_STYLE=	gem

MODULES=		lang/ruby

BUILD_DEPENDS+=		${RUN_DEPENDS} \
			devel/ruby-json,${MODRUBY_FLAVOR} \
			devel/ruby-parallel,${MODRUBY_FLAVOR} \
			devel/ruby-parser,${MODRUBY_FLAVOR} \
			devel/ruby-rainbow,${MODRUBY_FLAVOR} \
			devel/ruby-regexp_parser,${MODRUBY_FLAVOR} \
			devel/ruby-rubocop-ast,${MODRUBY_FLAVOR} \
			devel/ruby-progressbar,${MODRUBY_FLAVOR} \
			devel/ruby-unicode-display-width,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
