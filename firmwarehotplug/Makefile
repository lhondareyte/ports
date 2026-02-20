# Created by: Hondareyte

PORTNAME=	firmwarehotplug
PORTVERSION=	0.1d
PORTREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Firmwares for M-AUDIO MIDI usb interfaces
WWW=		http://sourceforge.net/projects/linux-hotplug/

LICENSE=	GPLv2

BUILD_DEPENDS= 	sdcc:lang/sdcc
RUN_DEPENDS=	fxload:misc/fxload

MAKE_JOBS_UNSAFE=yes

NO_ARCH=	yes

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	firmwarehotplug
GH_TAGNAME=	b2a9d87
PLIST_FILES=	etc/devd/m-audio.conf \
		share/fxload/m-audio/ezusbmidi.ihx \
		share/fxload/m-audio/ezusbmidi1x1.ihx \
		share/fxload/m-audio/ezusbmidi2x2.ihx \
		share/fxload/m-audio/m-audio-unified.conf \
		share/fxload/m-audio/m-audio-original.conf \
		share/doc/${PORTNAME}/AUTHORS \
		share/doc/${PORTNAME}/ChangeLog \
		share/doc/${PORTNAME}/COPYING \
		share/doc/${PORTNAME}/README

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
