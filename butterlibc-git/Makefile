# $NetBSD$

DISTNAME=	butterlibc
PKGNAME=	butterlibc-0.0.0
CATEGORIES=	devel lang

MAINTAINER=	dan@alt.md
HOMEPAGE=	http://github.com/cirnatdan/butterlibc
COMMENT=	LibC written in D
LICENSE=	boost-license

BUILD_TARGET=	all
USE_LANGUAGES=	d
#USE_FEATURES=	nbcompat

INSTALLATION_DIRS+=	lib

GIT_REPOSITORIES=	butterlibc
GIT_REPO.butterlibc=	https://github.com/cirnatdan/butterlibc.git

do-install:
	${INSTALL_LIB} ${WRKSRC}/libbutterc.so ${DESTDIR}${PREFIX}/lib/

.include "../../flag/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
