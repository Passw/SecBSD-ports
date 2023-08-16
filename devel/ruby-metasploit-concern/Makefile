COMMENT=		metasploit concern

DISTNAME=		metasploit-concern-5.0.1
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# BSD-3-clause
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-activemodel \
			devel/ruby-activesupport \
			devel/ruby-railties \
			devel/ruby-zeitwerk

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
