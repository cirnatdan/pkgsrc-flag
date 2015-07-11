# $NetBSD$

DISTNAME=	flag
PKGNAME=	flag-201507
CATEGORIES=	pkgtools

MAINTAINER=	dan@alt.md
HOMEPAGE=	http://github.com/cirnatdan/flag
COMMENT=	Pkgsrc frontend
LICENSE=	modified-bsd

BUILD_TARGET=	all
USE_LANGUAGES=	c c++
USE_TOOLS+=	    cmake
USE_CMAKE=      yes

INSTALLATION_DIRS+=     bin

GIT_REPOSITORIES=	flag
GIT_REPO.flag=	    git@github.com:cirnatdan/flag.git
GIT_TAG.flag=		master
#_GIT_FLAGS=		--quiet
#GIT_MODULE=		    flag

GENERATE_PLIST=

.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
