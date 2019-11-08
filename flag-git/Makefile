# $NetBSD$

DISTNAME=	flag
PKGNAME=	flag-0.0.0
CATEGORIES=	pkgtools

MAINTAINER=	dan@alt.md
HOMEPAGE=	http://github.com/cirnatdan/flag
COMMENT=	Pkgsrc frontend
LICENSE=	modified-bsd

BUILD_TARGET=	all
USE_LANGUAGES=	c c++
USE_TOOLS+=	    cmake
USE_CMAKE=      yes
#USE_FEATURES=	nbcompat

INSTALLATION_DIRS+=     bin

GIT_REPOSITORIES=	flag
GIT_REPO.flag=		https://github.com/cirnatdan/flag.git
#GIT_CHECKOUT_REVISION= 5d0c0b3205edd1a819d1eef0d478672af967958a
GENERATE_PLIST=

.include "../../flag/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
