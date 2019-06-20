# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD: head/sysutils/minipro/Makefile 502749 2019-05-26 19:56:45Z swills $

PORTNAME=	minipro
PORTVERSION=	0.3
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	CLI for MiniPRO TL866xx chip programmers

LICENSE=	GPLv3

RUN_DEPENDS=	bash:shells/bash

USES=		gmake pkgconfig shebangfix
USE_GITLAB=	yes

GL_ACCOUNT=	DavidGriffith
GL_COMMIT=	e6fb06822e6685886a045ae98c3c82d832bd8e9c
GL_PROJECT=	${PORTNAME}
SHEBANG_FILES=	miniprohex
PLIST_FILES=	bin/minipro \
		bin/miniprohex \
		man/man1/minipro.1.gz

post-patch:
	@${REINPLACE_CMD} -e ' s|gcc|clang|g'  \
			-e 's|share/||g' \
		${WRKSRC}/Makefile

post-install:
	@${GZIP_CMD} ${STAGEDIR}${PREFIX}/man/man1/minipro.1
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>