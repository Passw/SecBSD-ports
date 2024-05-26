BUILD_DEPENDS+=	devel/scons
MODSCONS_BIN=	${LOCALBASE}/bin/scons

MODSCONS_ENV?=	CC="${CC}" \
		CXX="${CXX}" \
		CCFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="${LDFLAGS}" \
		CPPPATH="${LOCALBASE}/include ${X11BASE}/include" \
		LIBPATH="${LOCALBASE}/lib ${X11BASE}/lib" \
		PREFIX="${PREFIX}" \
		debug=0

MODSCONS_FLAGS?=
ALL_TARGET?=

MODSCONS_BUILD_TARGET = \
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} -j ${MAKE_JOBS} \
		${ALL_TARGET}

MODSCONS_INSTALL_TARGET = \
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${INSTALL_TARGET} \
		DESTDIR=${WRKINST}

# XXX scons include parser is bogus
DPB_PROPERTIES += nojunk

.if !target(do-build)
do-build:
	@${MODSCONS_BUILD_TARGET}
.endif

.if !target(do-install)
do-install:
	@${MODSCONS_INSTALL_TARGET}
.endif
