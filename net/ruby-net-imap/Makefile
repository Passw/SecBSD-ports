COMMENT=		Ruby client api for IMAP

DISTNAME=		net-imap-0.3.7
CATEGORIES=		net

HOMEPAGE=		https://github.com/ruby/net-imap

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# BSD-2-Clause
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-date,${MODRUBY_FLAVOR} \
			net/ruby-net-protocol,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
