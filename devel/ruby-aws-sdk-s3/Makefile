COMMENT=		Amazon Simple Storage Service

DISTNAME=		aws-sdk-s3-1.120.1
CATEGORIES=		devel

HOMEPAGE=		https://github.com/aws/aws-sdk-ruby

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-aws-sdk-core \
			devel/ruby-aws-sdk-kms \
			devel/ruby-aws-sigv4

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
