COMMENT=	self-hosted lightweight version control

V=		7.0.5
DISTNAME=	forgejo-src-${V}
PKGNAME=	forgejo-${V}

SITES=		https://codeberg.org/forgejo/forgejo/releases/download/v${V}/

CATEGORIES=	www

HOMEPAGE=	https://forgejo.org
MAINTAINER=	Purple Rain <purplerain@secbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB+=	c pthread

MODULES=	lang/go

GO_TAGS=	purego sqlite sqlite_unlock_notify
MODGO_FLAGS+=	-tags "${GO_TAGS}"
MODGO_LDFLAGS+= -X code.gitea.io/gitea/modules/setting.AppWorkPath=${LOCALBASE}/share/forgejo
MODGO_LDFLAGS+= -X code.gitea.io/gitea/modules/setting.CustomConf=${SYSCONFDIR}/forgejo/app.ini
MODGO_LDFLAGS+= -X code.gitea.io/gitea/modules/setting.CustomPath=${LOCALSTATEDIR}/forgejo/custom
MODGO_LDFLAGS+= -X code.gitea.io/gitea/modules/setting.StaticRootPath=${LOCALBASE}/share/forgejo
MODGO_LDFLAGS+= -X main.Version=${V}
MODGO_LDFLAGS+= -X 'main.Tags=${GO_TAGS}'

RUN_DEPENDS=	devel/git

ALL_TARGET=	code.gitea.io/gitea
WRKSRC=		${MODGO_WORKSPACE}/src/${ALL_TARGET}

pre-configure:
	${SUBST_CMD} ${WRKDIST}/custom/conf/app.example.ini

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/gitea ${PREFIX}/sbin/forgejo
	${INSTALL_DATA_DIR} ${PREFIX}/share/forgejo
.for _d in custom/conf options templates
	cp -Rp ${WRKSRC}/${_d} ${PREFIX}/share/forgejo
.endfor
	${INSTALL_DATA_DIR} ${WRKINST}${VARBASE}/www
	cp -Rp ${WRKSRC}/public ${WRKINST}${VARBASE}/www/forgejo
	ln -s ${VARBASE}/www/forgejo ${PREFIX}/share/forgejo/public

post-install:
	@find ${WRKINST}/ -type f \
		\( -name '*.beforesubst' -o -name '*${PATCHORIG}' \) -delete

.include <bsd.port.mk>
