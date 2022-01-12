# Created by: <dmagda+libsamplerate@ee.ryerson.ca>

PORTNAME=	libsamplerate
DISTVERSION=	0.2.2
CATEGORIES=	audio
MASTER_SITES=	https://github.com/libsndfile/${PORTNAME}/releases/download/${DISTVERSION}/

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	Secret Rabbit Code: a Sample Rate Converter for audio

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		cmake cpe pkgconfig tar:xz

CPE_VENDOR=	${CPE_PRODUCT}_project

USE_LDCONFIG=	yes

CMAKE_ON=	BUILD_SHARED_LIBS LIBSAMPLERATE_INSTALL

.include <bsd.port.mk>
