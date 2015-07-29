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

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/xhyverun.sh ${DESTDIR}${PREFIX}/bin/boot2docker-xhyve

.include "../../mk/bsd.pkg.mk"
