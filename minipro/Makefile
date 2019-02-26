# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	minipro
PORTVERSION=	devel
CATEGORIES=	sysutils
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	CLI for MiniPRO TL866xx programmers

LICENSE=	GPLv3

USES=		gmake pkgconfig

USE_GITLAB=	yes
GL_ACCOUNT=	DavidGriffith
GL_COMMIT=	2bcb4e2d7d1a54fdd8db71c5c55cfea10d2349bf
GL_PROJECT=	${PORTNAME}

post-patch:
	@${REINPLACE_CMD} -e ' s|gcc|clang|g'  \
               ${WRKSRC}/Makefile

.include <bsd.port.mk>
