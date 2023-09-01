COMMENT=		Amazon Simple Storage Service

DISTNAME=		aws-sdk-s3-1.123.1
CATEGORIES=		devel

HOMEPAGE=		https://github.com/aws/aws-sdk-ruby

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-aws-sdk-core,${MODRUBY_FLAVOR} \
			devel/ruby-aws-sdk-kms,${MODRUBY_FLAVOR} \
			devel/ruby-aws-sigv4,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
