COMMENT=		AWS Key Management Service

DISTNAME=		aws-sdk-kms-1.63.0
CATEGORIES=		devel

HOMEPAGE=		https://github.com/aws/aws-sdk-ruby

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-aws-sdk-core \
			devel/ruby-aws-sigv4

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
