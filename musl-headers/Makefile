# $NetBSD$

PKGNAME=	musl-headers-1.2.0
DISTNAME=	musl-1.2.0
CATEGORIES=	devel
MASTER_SITES=	https://musl.libc.org/releases/

MAINTAINER=	dan@alt.md
HOMEPAGE=	https://musl.libc.org/releases/
COMMENT=	headers from the musl C library
LICENSE=	mit

USE_LANGUAGES=	c
HAS_CONFIGURE=	yes
USE_TOOLS+=	gmake

CONFIGURE_ARGS=	--prefix=${PREFIX} --includedir=${PREFIX}/include/musl
NO_BUILD=	yes
INSTALL_TARGET=	install-headers

.include "../../mk/bsd.pkg.mk"
