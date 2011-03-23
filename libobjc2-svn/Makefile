# $NetBSD$

DISTNAME=	libobjc2
PKGNAME=	libobjc2
CATEGORIES=	devel

MAINTAINER=	dan@alt.md
HOMEPAGE=	http://gnustep.org
COMMENT=	GNUStep Objective-C Runtime
LICENSE=	modified-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_TARGET=	all
BUILD_DEPENDS+=	clang-2.8*:../../lang/clang

MAKE_FILE=	Makefile
MAKE_FLAGS+=	CC=clang

SVN_REPOSITORIES=	libobjc2
SVN_ROOT.libobjc2=	http://svn.gna.org/svn/gnustep/libs/libobjc2/trunk
WRKSRC=			$(WRKDIR)/libobjc2

GENERATE_PLIST=

.include "../../wip/mk/svn-package.mk"
.include "../../mk/bsd.pkg.mk"
