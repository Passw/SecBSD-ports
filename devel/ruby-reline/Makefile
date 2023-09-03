COMMENT=		Alternative GNU Readline

DISTNAME=		reline-0.3.5
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Ruby, BSD-2-Clause
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-io-console,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
