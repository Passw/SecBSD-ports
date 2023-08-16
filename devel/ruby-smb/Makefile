COMMENT=		Ruby implementation of the SMB Protocol

DISTNAME=		ruby_smb-3.2.5
CATEGORIES=		devel

MAINTAINER=		Purple Rain <purplerain@secbsd.org>

# BSD-3-Clause
PERMIT_PACKAGE=		Yes

MODULES=		lang/ruby

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/ruby-bindata \
			devel/ruby-openssl-ccm \
			devel/ruby-openssl-cmac \
			devel/ruby-ntlm \
			devel/ruby-windows-error

CONFIGURE_STYLE=	ruby gem

.include <bsd.port.mk>
