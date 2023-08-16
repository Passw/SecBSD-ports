COMMENT=		Ruby library for Windows Remote Management

DISTNAME=		winrm-2.3.6
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			textproc/ruby-builder/3.2 \
			devel/ruby-erubi \
			devel/ruby-gssapi \
			devel/ruby-gyoku \
			www/ruby-httpclient \
			devel/ruby-logging \
			devel/ruby-nori \
			devel/ruby-ntlm

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
