COMMENT =	port of Google's libphonenumber library
#'

MODPY_EGG_VERSION = 8.13.37
DISTNAME =	phonenumbers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	telephony devel

HOMEPAGE =	https://github.com/daviddrysdale/python-phonenumbers

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests/*.py

FLAVORS =	python3
FLAVOR =	python3

MAKE_ENV +=	LC_CTYPE=C.UTF-8

.include <bsd.port.mk>
