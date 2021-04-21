# Created by: Hondareyte
# $FreeBSD$

PORTNAME=	mmm
PORTVERSION=	0.3
PORTREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Minimal MIDI monitor

LICENSE=	BSD2CLAUSE

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	mmm
GH_TAGNAME=	c9f7c0e
PLIST_FILES=	bin/mmm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
