# $NetBSD$

DISTNAME=	flag-201506
#PKGNAME=	flag
CATEGORIES=	pkgtools

MAINTAINER=	dan@alt.md
HOMEPAGE=	http://github.com/cirnatdan/flag
COMMENT=	Pkgsrc frontend
LICENSE=	modified-bsd

BUILD_TARGET=	all
USE_LANGUAGES=	c
USE_TOOLS+=	    cmake

INSTALLATION_DIRS+=     bin

GIT_REPOSITORIES=	flag
GIT_REPO.flag=	    git@github.com/cirnatdan/flag.git
#_GIT_FLAGS=		--quiet
#GIT_MODULE=		    flag

GENERATE_PLIST=

.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
