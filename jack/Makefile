PORTNAME=	jackit
DISTVERSIONPREFIX=	v
DISTVERSION=	1.9.22
CATEGORIES=	audio

MAINTAINER=	dev@submerge.ch
COMMENT=	Low latency audio server
WWW=		https://jackaudio.org/

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

PKG_IGNORE_DEPENDS= lang/python311

CONFIGURE_ARGS=	--celt=no --samplerate=yes \
		--alsa=no --opus=no

.include <bsd.port.pre.mk>

post-install:
	@cd ${STAGEDIR}${PREFIX} && ${STRIP_CMD} \
		lib/libjack*.so \
		lib/jack/*.so \
		$$(ls bin/* | ${GREP} -v jack_control) && \
		$(RM) bin/jack_control

.include <bsd.port.post.mk>
