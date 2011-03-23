# $NetBSD$

DISTNAME=	mplayer2
PKGNAME=	mplayer2
CATEGORIES=	multimedia

MAINTAINER=	dan@alt.md
HOMEPAGE=	http://gnustep.org
COMMENT=	Fast, cross-platform movie player. Fork of mplayer.
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_TARGET=	all
USE_LANGUAGES=	c
USE_TOOLS+=	pkg-config gmake
HAS_CONFIGURE=	YES

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "x86_64"
BUILD_DEPENDS+=         yasm-[0-9]*:../../devel/yasm
.endif

CONFIGURE_ARGS+=        --confdir=${PREFIX}/share/mplayer
#CONFIGURE_ARGS+=        --enable-xvmc
#CONFIGURE_ARGS+=        --with-xvmclib=XvMCW

INSTALLATION_DIRS+=     bin


GIT_REPOSITORIES=	mplayer2
GIT_REPO.mplayer2=	http://git.mplayer2.org/mplayer2/
_GIT_FLAGS=		--quiet
GIT_MODULE=		mplayer2

GENERATE_PLIST=


.include "../../x11/libXScrnSaver/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXv/buildlink3.mk"
.include "../../x11/libXvMC/buildlink3.mk"
.include "../../x11/libXxf86dga/buildlink3.mk"
.include "../../x11/libXxf86vm/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../multimedia/ffmpeg/buildlink3.mk"


.include "../../wip/mk/git-package.mk"

WRKSRC=			$(WRKDIR)/mplayer2
CFLAGS=
.include "../../mk/bsd.pkg.mk"
