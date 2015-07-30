# $NetBSD$

GITHUB_PROJECT=	boot2docker-xhyve
VERSION=	0.6.0
DISTNAME=	v${VERSION}
PKGNAME=	${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=	emulators sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=ailispaw/}
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	dan@alt.md
HOMEPAGE=	${MASTER_SITE_GITHUB:=ailispaw/boot2docker-xhyve/}
COMMENT=	Xhyve port of boot2docker
LICENSE=	modified-bsd

WRKSRC=	${WRKDIR}/${GITHUB_PROJECT}-${VERSION}

USE_TOOLS+= gmake

SUBST_CLASSES+=                 fix-paths
SUBST_STAGE.fix-paths=          pre-configure
SUBST_MESSAGE.fix-paths=        Fixing absolute paths.
SUBST_FILES.fix-paths=          *.sh
SUBST_SED.fix-paths=            -e 's,/usr/pkg/share,${PREFIX}/share,g'

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/xhyverun.sh ${DESTDIR}${PREFIX}/bin/boot2docker-xhyve
	${INSTALL_DATA}	  ${WRKSRC}/boot2docker-data.img ${DESTDIR}${PREFIX}/share/boot2docker-xhyve/boot2docker-data.img
	${INSTALL_DATA}	  ${WRKSRC}/initrd.img ${DESTDIR}${PREFIX}/share/boot2docker-xhyve/initrd.img
	${INSTALL_DATA}	  ${WRKSRC}/vmlinuz64 ${DESTDIR}${PREFIX}/share/boot2docker-xhyve/vmlinuz64
	
DEPENDS+=	xhyve:../xhyve

.include "../../mk/bsd.pkg.mk"
