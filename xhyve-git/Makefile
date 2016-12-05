# $NetBSD: Makefile,v 1.1 2016/03/19 18:11:36 sevan Exp $
# Adapted from sysutils/xhyve

VERSION=	0.2.0
DISTNAME=	xhyve-${VERSION}
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=mist64/}
GITHUB_TAG=	v${VERSION}

MAINTAINER=	dan@alt.md
HOMEPAGE=	https://github.com/mist64/xhyve/
COMMENT=	Port of bhyve to OS X
LICENSE=	2-clause-bsd

MAKE_ENV+=	GIT_VERSION=${PKGVERSION}

ONLY_FOR_PLATFORM+=	Darwin-1[4-9].*-x86_64

AUTO_MKDIRS=	yes
USE_TOOLS+=	gmake

GIT_REPOSITORIES=	xhyve
GIT_REPO.xhyve=		git@github.com:mist64/xhyve.git

do-install:
	cd ${WRKSRC} && \
	${INSTALL_PROGRAM} build/xhyve ${DESTDIR}${PREFIX}/bin/xhyve

.include "../../flag/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
