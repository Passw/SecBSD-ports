COMMENT=		Ruby library for Windows Remote Management

DISTNAME=		winrm-2.3.6
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			devel/ruby-erubi,${MODRUBY_FLAVOR} \
			devel/ruby-gssapi,${MODRUBY_FLAVOR} \
			devel/ruby-gyoku,${MODRUBY_FLAVOR} \
			www/ruby-httpclient,${MODRUBY_FLAVOR} \
			devel/ruby-logging,${MODRUBY_FLAVOR} \
			devel/ruby-nori,${MODRUBY_FLAVOR} \
			devel/ruby-ntlm,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
