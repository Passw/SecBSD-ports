COMMENT=		Zed attack proxy
CATEGORIES=		security
MAINTAINER=		Purple Rain <purplerain@secbsd.org>

VERSION=		2.16.0
DISTNAME=		ZAP_${VERSION}_Linux
PKGNAME=		zaproxy-${VERSION}

HOMEPAGE=		https://www.zaproxy.org

# Apache-2.0
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/zaproxy/zaproxy/releases/download/v${VERSION}/

MODULES=		java
MODJAVA_VER=		17+

RUN_DEPENDS=		java/javaPathHelper

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/ZAP_${VERSION}

SUBST_VARS+=		VERSION

do-install:
	cp -r ${WRKDIST} ${PREFIX}/share/zaproxy
	${SUBST_PROGRAM} ${FILESDIR}/zaproxy.sh ${PREFIX}/bin/zaproxy

.include <bsd.port.mk>
