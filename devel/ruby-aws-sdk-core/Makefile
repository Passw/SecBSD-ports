COMMENT=		provides API clients for AWS

DISTNAME=		aws-sdk-core-3.171.0
CATEGORIES=		devel

HOMEPAGE=		https://github.com/aws/aws-sdk-ruby

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-aws-eventstream \
			devel/ruby-aws-sigv4 \
			devel/ruby-aws-partitions \
			devel/ruby-jmespath

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
