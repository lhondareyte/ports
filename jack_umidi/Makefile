# Created by: Hans Petter Selasky <hselasky@FreeBSD.org>

PORTNAME=	jack_umidi
PORTVERSION=	v1.1.2
CATEGORIES=	audio

MAINTAINER=	hselasky@FreeBSD.org
COMMENT=	Daemon that converts a raw MIDI device into a JACK MIDI device
WWW=		http://www.selasky.org/hans_petter/midistudio

LICENSE=	BSD2CLAUSE

USE_GITHUB=     yes
GH_ACCOUNT=     hselasky

LIB_DEPENDS=	libjack.so:audio/jack

USES=		tar:bzip2 uidfix
PLIST_FILES=	sbin/jack_umidi \
		man/man8/jack_umidi.8.gz

MAKE_ARGS+=     HAVE_MAN="YES"
MAKE_ARGS+=     PTHREAD_LIBS="-lpthread"

.include <bsd.port.mk>
