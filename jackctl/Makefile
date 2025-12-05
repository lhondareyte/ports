# Created by: Luc Hondareyte

PORTNAME=	jackctl
PORTVERSION=	1.0
CATEGORIES=	audio

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	CLI for jackd
WWW= 		http://github.com/lhondareyte/jackctl

LICENSE=	GPLv2

LIB_DEPENDS+=	libjack.so:audio/jack

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TAGNAME=	c3a63f6

PLIST_FILES=    bin/jackctl \
		share/man/man1/jackctl.1.gz
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
