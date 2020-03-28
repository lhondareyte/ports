# Created by: Hans Petter Selasky <hselasky@FreeBSD.org>
# $FreeBSD: head/audio/jack_umidi/Makefile 475237 2018-07-24 09:49:48Z hselasky $

PORTNAME=	jack_umidi
PORTVERSION=	1.0.9
CATEGORIES=	audio
MASTER_SITES=	http://www.selasky.org/hans_petter/distfiles/ \
		http://home.selasky.org:8192/distfiles/

MAINTAINER=	hselasky@FreeBSD.org
COMMENT=	Daemon that converts a raw MIDI device into a JACK MIDI device

LICENSE=	BSD2CLAUSE

LIB_DEPENDS=	libjack.so:audio/jack

USES=		tar:bzip2 uidfix
PLIST_FILES=	sbin/jack_umidi \
		etc/devd/jack_umidi.conf \
		man/man8/jack_umidi.8.gz 
SUB_FILES=	jack_umidi.conf

MAKE_ARGS+=     HAVE_MAN="YES"
MAKE_ARGS+=     PTHREAD_LIBS="-lpthread"

USE_GITHUB=	yes
GH_ACCOUNT=	hselasky
GH_PROJECT=	jack_umidi
GH_TAGNAME=	596adbc

post-install::
	@${MKDIR} ${STAGEDIR}${PREFIX}/etc/devd
	${INSTALL_DATA} ${WRKDIR}/jack_umidi.conf \
		 ${STAGEDIR}${PREFIX}/etc/devd

.include <bsd.port.mk>
