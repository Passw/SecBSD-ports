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

RUN_DEPENDS+=		devel/ruby-json \
			devel/ruby-parallel \
			devel/ruby-parser \
			devel/ruby-rainbow \
			devel/ruby-regexp_parser \
			devel/ruby-rubocop-ast \
			devel/ruby-progressbar \
			devel/ruby-unicode-display-width

.include <bsd.port.mk>
