COMMENT=	LDAP exploitation tool

DISTNAME=	adenum-1.0

CATEGORIES=	security

HOMEPAGE=	https://github.com/SecuProject/ADenum

MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# GPL-3.0
PERMIT_PACKAGE=	Yes

DIST_TUPLE=	github SecuProject ADenum \
		fbbe14d85cc0fb9e65ac6e4ad8896ad3c8449ff4 .

MODULES=	lang/python

RUN_DEPENDS=	security/pwntools \
		databases/py-ldap${MODPY_FLAVOR}

WRKDIST=	${WRKDIR}/ADenum-fbbe14d85cc0fb9e65ac6e4ad8896ad3c8449ff4

NO_BUILD=	Yes

INSTDIR=	${PREFIX}/share/adenum

do-install:
	cp -r ${WRKDIST} ${INSTDIR}
	chmod 755 ${INSTDIR}/ADenum.py
	ln -s ${TRUEPREFIX}/share/adenum/ADenum.py \
	${PREFIX}/bin/adenum

post-install:
	rm -rf ${INSTDIR}/{.gitignore,image}
	rm -f ${INSTDIR}/requirements.txt

.include <bsd.port.mk>
