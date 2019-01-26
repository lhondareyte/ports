# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	firmwarehotplug
PORTVERSION=	0.1b
CATEGORIES=	audio
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	Firmwares for M-AUDIO MIDI usb interfaces

LICENSE=	GPLv2

BUILD_DEPENDS= 	sdcc:lang/sdcc
RUN_DEPENDS=	fxload:misc/fxload

USES=		gmake pkgconfig

NO_ARCH=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	firmwarehotplug
GH_TAGNAME=	${PORTVERSION}

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${MKDIR} ${STAGEDIR}${PREFIX}/share/fxload/m-audio/
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/devd
	${INSTALL_DATA} ${WRKSRC}/original/ezusbmidi1x1.ihx ${STAGEDIR}${PREFIX}/share/fxload/m-audio/
	${INSTALL_DATA} ${WRKSRC}/original/ezusbmidi2x2.ihx ${STAGEDIR}${PREFIX}/share/fxload/m-audio/
	${INSTALL_DATA} ${WRKSRC}/original/freebsd.conf ${STAGEDIR}${PREFIX}/etc/devd/m-audio.conf
	${INSTALL_DATA} ${WRKSRC}/original/freebsd.conf ${STAGEDIR}${PREFIX}/share/fxload/m-audio/m-audio-original.conf
	${INSTALL_DATA} ${WRKSRC}/unified/ezusbmidi.ihx ${STAGEDIR}${PREFIX}/share/fxload/m-audio/
	${INSTALL_DATA} ${WRKSRC}/unified/freebsd.conf ${STAGEDIR}${PREFIX}/share/fxload/m-audio/m-audio-unified.conf
	${INSTALL_DATA} ${WRKSRC}/original/AUTHORS ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/original/ChangeLog ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/original/COPYING ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/original/README ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}

.include <bsd.port.mk>
