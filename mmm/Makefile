# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	mmm
PORTVERSION=	0.3
CATEGORIES=	audio
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	Minimal MIDI monitor

LICENSE=	BSD2CLAUSE

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	mmm
GH_TAGNAME=	${PORTVERSION}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mmm ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
