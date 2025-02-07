COMMENT =	exploitation framework for embedded devices 

MODPY_DISTV =	3.4.7
GH_ACCOUNT =	threat9
GH_PROJECT =	routersploit
GH_COMMIT =	3b0f2d59775da0fb43d25f842d33aeed3b70068a
DISTNAME =	routersploit-${MODPY_DISTV}

CATEGORIES =	security 

MAINTAINER =	Purple Rain <purplerain@secbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		devel/py-future \
			net/py-snmp \
			security/py-cryptodome \
			security/py-paramiko \
			www/py-requests

.include <bsd.port.mk>
