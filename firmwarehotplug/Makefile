# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	firmwarehotplug
PORTVERSION=	0.1
CATEGORIES=	audio

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	FIRMWAREHOTPLUG - GPLv2 firmwares for M-AUDIO MIDI usb interfaces

LICENSE=	GPLv2

BUILD_DEPENDS= 	sdcc:lang/sdcc
RUN_DEPENDS=	fxload:misc/fxload

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	firmwarehotplug
GH_TAGNAME=	${PORTVERSION}

USES=		gmake pkgconfig

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${MKDIR} ${STAGEDIR}${PREFIX}/share/fxload/m-audio/
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/devd
	${INSTALL_DATA} ${WRKSRC}/original/ezusbmidi1x1.ihx ${STAGEDIR}${PREFIX}/share/fxload/m-audio/
	${INSTALL_DATA} ${WRKSRC}/original/freebsd.conf ${STAGEDIR}${PREFIX}/etc/devd/m-audio.conf
	${INSTALL_DATA} ${WRKSRC}/original/AUTHORS ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/original/ChangeLog ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/original/COPYING ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/original/README ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/unified/ezusbmidi.ihx ${STAGEDIR}${PREFIX}/share/fxload/m-audio/
	${INSTALL_DATA} ${WRKSRC}/unified/freebsd.conf ${STAGEDIR}${PREFIX}/share/fxload/m-audio/m-audio-unified.conf
	${INSTALL_DATA} ${WRKSRC}/unified/freebsd.conf ${STAGEDIR}${PREFIX}/etc/devd/m-audio.conf
	${INSTALL_DATA} ${WRKSRC}/original/ezusbmidi2x2.ihx ${STAGEDIR}${PREFIX}/share/fxload/m-audio/ezusbmidi2x2.ihx
	${INSTALL_DATA} ${WRKSRC}/original/ezusbmidi2x2.ihx ${STAGEDIR}${PREFIX}/share/fxload/m-audio/ezusbmidi2x2.ihx

.include <bsd.port.mk>
