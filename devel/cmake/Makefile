DPB_PROPERTIES =	parallel

COMMENT =	portable build system

VER =		3.31.2
EPOCH =		1
DISTNAME =	cmake-${VER}
CATEGORIES =	devel

HOMEPAGE =	https://www.cmake.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SITES =		https://www.cmake.org/files/v${VER:R}/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} archive c curl curses expat form
WANTLIB += jsoncpp m rhash uv z

COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		textproc/py-sphinx>=4.0.2

LIB_DEPENDS =		archivers/libarchive \
			devel/libuv \
			devel/jsoncpp \
			net/curl \
			security/rhash

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS =	--datadir=share/cmake \
			--docdir=share/doc/cmake \
			--mandir=man \
			--no-qt-gui \
			--parallel=${MAKE_JOBS} \
			--prefix=${PREFIX} \
			--system-libs \
			--no-system-cppdap \
			--verbose

CONFIGURE_ENV +=	MAKE=${MAKE_PROGRAM}

MAKE_FLAGS +=		VERBOSE=1

# bootstrap build
CONFIGURE_ENV += MODCMAKE_PORT_BUILD=yes
MAKE_ENV += MODCMAKE_PORT_BUILD=yes

PORTHOME =		${WRKDIR}

SEPARATE_BUILD =	Yes

TEST_TARGET =		test

TEST_DEPENDS +=		devel/git

SUBST_FILES =	${WRKSRC}/Source/cmLocalGenerator.cxx \
		${WRKSRC}/Source/CPack/cmCPackGenerator.cxx \
		${WRKSRC}/bootstrap

UPDATE_PLIST_ARGS =	-i MODPY_VERSION

post-patch:
	find ${WRKSRC}/Modules -name "*.cmake" \
		-exec sed -i -e 's,/usr/local,${LOCALBASE},g' \
		-e 's,/usr/X11R6,${X11BASE},g' {} +
	find ${WRKSRC}/Tests -name "CMakeLists.txt" \
		-exec perl -e -i 's,/usr/local,${LOCALBASE},g' \
		-e 's,/usr/X11R6,${X11BASE},g' {} +
	perl -e 's,/usr/local,${LOCALBASE},g' \
		${SUBST_FILES}
	perl -e 's,/usr/include,${LOCALBASE}/include,' \
		${WRKSRC}/Modules/FindDCMTK.cmake

pre-configure:
	cp ${FILESDIR}/Platform/*.cmake ${WRKSRC}/Modules/Platform
	find ${WRKSRC}/Modules -name "*.cmake" -exec ${SUBST_CMD} {} +
	find ${WRKSRC}/Tests -name "CMakeLists.txt" -exec ${SUBST_CMD} {} +
	${SUBST_CMD} ${SUBST_FILES}

post-install:
	@find ${WRKINST}${LOCALBASE} \( -name "*.bak" \
		-o -name "*${PATCHORIG}" \
		-o -name "*.beforesubst" \) -delete

.include <bsd.port.mk>
