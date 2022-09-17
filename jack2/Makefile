PORTNAME=	jackit
DISTVERSIONPREFIX=	v
DISTVERSION=	1.9.21
CATEGORIES=	audio

MAINTAINER=	dev@submerge.ch
COMMENT=	Low latency audio server

LICENSE=	GPLv2 LGPL21
LICENSE_COMB=	multi

LIB_DEPENDS=	libsamplerate.so:audio/libsamplerate \
		libsysinfo.so:devel/libsysinfo

USES=		compiler:c11 pkgconfig python:3.4+ shebangfix waf
USE_LDCONFIG=	yes
USE_RC_SUBR=	jackd

USE_GITHUB=	yes
GH_ACCOUNT=	jackaudio
GH_PROJECT=	jack2

CFLAGS+=	-fPIC
CPPFLAGS+=	-I${LOCALBASE}/include

SHEBANG_FILES=	dbus/jack_control
SHEBANG_LANG=	python3

CONFIGURE_ARGS=	--celt=no --sndfile=no --samplerate=yes \
		--readline=no --example-tools=no \
		--alsa=no

OPTIONS_DEFINE=
OPTIONS_SUB=	yes

.include <bsd.port.pre.mk>

post-install:
	@cd ${STAGEDIR}${PREFIX} && ${STRIP_CMD} \
		lib/libjack*.so \
		lib/jack/*.so \
		$$(ls bin/* | ${GREP} -v jack_control)

.include <bsd.port.post.mk>
