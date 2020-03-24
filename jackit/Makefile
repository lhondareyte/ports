# Created by: Tilman Linneweh <arved@FreeBSD.org>
# $FreeBSD: head/audio/jack/Makefile 507372 2019-07-26 20:46:53Z gerald $

PORTNAME=	jackit
PORTVERSION=	0.125.0
PORTREVISION=	9
CATEGORIES=	audio

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	Low latency audio server

LICENSE=	GPLv2 LGPL21
LICENSE_COMB=	multi

BROKEN_mips=		fails to link: undefined reference to '__sync_add_and_fetch_4'
BROKEN_mips64=		fails to link: undefined reference to '__sync_add_and_fetch_4'

USES=		autoreconf compiler:c11 gmake pathfix pkgconfig libtool localbase bdb
USE_GITHUB=	yes

GH_ACCOUNT=	jackaudio
GH_PROJECT=	jack1
GH_TAGNAME=	90f9dd3
GH_TUPLE=	jackaudio:headers:07f1ecf:h/jack
GH_TUPLE+=	jackaudio:tools:8d13c31:t/tools
GH_TUPLE+=	jackaudio:example-clients:7fa0890:e/example-clients
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
USE_RC_SUBR=	jackd

CONFIGURE_ARGS=	--disable-portaudio \
		--enable-optimize \
		--disable-sndfile \
		--disable-celt \
		--disable-alsa \
		--disable-sndio \
		--enable-force-install \
		--with-default-tmpdir=/tmp

CFLAGS+=		-I${BDB_INCLUDE_DIR} -DOPTION_COOKEDMODE
LIBS+=			-L${BDB_LIB_DIR}
INSTALL_TARGET=		install-strip

post-patch:
	@${RM} ${WRKSRC}/doc/reference/html/*

post-build:
	@${RM} ${WRKSRC}/doc/reference/html/dir__2F*

.include <bsd.port.mk>
