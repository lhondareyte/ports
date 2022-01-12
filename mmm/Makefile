# Created by: Hondareyte
# $FreeBSD$

PORTNAME=	mmm
PORTVERSION=	0.3
PORTREVISION=	3
CATEGORIES=	audio
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Minimal MIDI monitor

LICENSE=	MIT

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	mmm
GH_TAGNAME=	68729b8
PLIST_FILES=	bin/mmm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
