# $NetBSD$

GITHUB_PROJECT=	xhyve
VERSION=	0.1.0
DISTNAME=	v${VERSION}
PKGNAME=	${GITHUB_PROJECT}-${VERSION}
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_GITHUB:=mist64/}
DIST_SUBDIR=	${GITHUB_PROJECT}
WRKSRC=			${WRKDIR}/${GITHUB_PROJECT}-${VERSION}

USE_LANGUAGES=	c
USE_TOOLS+= gmake

MAINTAINER=	dan@alt.md
HOMEPAGE=	${MASTER_SITE_GITHUB:=mist64/xhyve/}
COMMENT=	Lightweight OS X virtualization solution
LICENSE=	modified-bsd

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/build/xhyve ${DESTDIR}${PREFIX}/bin/xhyve

# url2pkg-marker (please do not remove this line.)
.include "../../mk/bsd.pkg.mk"
