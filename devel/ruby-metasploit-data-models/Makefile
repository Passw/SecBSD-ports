COMMENT=		metasploit data models

DISTNAME=		metasploit_data_models-6.0.2
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Unlicense
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-activerecord \
			devel/ruby-activesupport \
			devel/ruby-arel-helpers \
			devel/ruby-metasploit-concern \
			devel/ruby-metasploit-model \
			databases/ruby-pg \
			devel/ruby-railties \
			devel/ruby-recog \
			devel/ruby-webrick

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
