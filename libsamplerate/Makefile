# Created by: <dmagda+libsamplerate@ee.ryerson.ca>
# $FreeBSD: head/audio/libsamplerate/Makefile 462779 2018-02-24 09:02:59Z amdmi3 $

PORTNAME=	libsamplerate
PORTVERSION=	0.1.9
CATEGORIES=	audio
MASTER_SITES=	http://www.mega-nerd.com/SRC/

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	Secret Rabbit Code: a Sample Rate Converter for audio

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		cpe libtool pathfix pkgconfig
USE_LDCONFIG=	yes
CPE_VENDOR=	${CPE_PRODUCT}_project
GNU_CONFIGURE=	yes
INSTALL_TARGET=	install-strip
TEST_TARGET=	check

MAKE_ARGS+=	htmldocdir=${PREFIX}/share/doc/libsamplerate
CONFIGURE_ARGS+=	--disable-cpu-clip
CONFIGURE_ARGS+=	--disable-fftw
CONFIGURE_ARGS+=	--disable-sndfile

.include <bsd.port.mk>
