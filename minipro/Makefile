# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	minipro
PORTVERSION=	0.3
CATEGORIES=	sysutils
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	CLI for MiniPRO TL866xx programmers

LICENSE=	GPLv3

USES=		gmake pkgconfig

USE_GITLAB=	yes
GL_ACCOUNT=	DavidGriffith
GL_COMMIT=	e6fb06822e6685886a045ae98c3c82d832bd8e9c
GL_PROJECT=	${PORTNAME}

post-patch:
	@${REINPLACE_CMD} -e ' s|gcc|clang|g'  \
		${WRKSRC}/Makefile

.include <bsd.port.mk>
