# $NetBSD$

GITHUB_PROJECT=	boot2docker-xhyve
VERSION=	0.7.0
DISTNAME=	v${VERSION}
PKGNAME=	${GITHUB_PROJECT}-${VERSION}
CATEGORIES=	emulators sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=ailispaw/}
DIST_SUBDIR=	${GITHUB_PROJECT}
WRKSRC=			${WRKDIR}/${PKGNAME}

MAINTAINER=	dan@alt.md
HOMEPAGE=	${MASTER_SITE_GITHUB:=ailispaw/boot2docker-xhyve/}
COMMENT=	Xhyve port of boot2docker
LICENSE=	modified-bsd

USE_TOOLS+= gmake

.include "../../mk/bsd.pkg.mk"
