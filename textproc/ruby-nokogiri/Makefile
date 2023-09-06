COMMENT=		HTML, XML, SAX and Reader parser

DISTNAME=		nokogiri-1.14.5

CATEGORIES=		textproc

HOMEPAGE=		https://nokogiri.org

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB=		exslt xml2 xslt gcrypt gpg-error z
LIB_DEPENDS=		textproc/libxslt
BUILD_DEPENDS=		devel/ruby-mini_portile2,${MODRUBY_FLAVOR}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

CONFIGURE_ARGS=		--use-system-libraries \
			--with-xml2-include=${LOCALBASE}/include/libxml2/

.include <bsd.port.mk>
