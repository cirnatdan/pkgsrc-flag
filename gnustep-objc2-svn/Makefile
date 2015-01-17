# $NetBSD$

DISTNAME=	gnustep-objc2-201103
CATEGORIES=	devel gnustep

MAINTAINER=	dan@alt.md
HOMEPAGE=	http://gnustep.org/
COMMENT=	GNUStep Objective-C Runtime
LICENSE=	mit

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_TARGET=	all
BUILD_DEPENDS+=	clang-3*:../../lang/clang

MAKE_FILE=	Makefile
MAKE_FLAGS+=	CC=clang

USE_LANGUAGES=  c c++
USE_TOOLS=	cmake
USE_CMAKE=	yes
PKGSRC_COMPILER=	clang

SVN_REPOSITORIES=	libobjc2
SVN_ROOT.libobjc2=	svn://svn.gna.org/svn/gnustep/libs/libobjc2/trunk
WRKSRC=			${WRKDIR}/libobjc2

.include "../../wip/mk/svn-package.mk"
.include "../../mk/bsd.pkg.mk"
