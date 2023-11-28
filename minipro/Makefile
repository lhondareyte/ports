# Created by: Hondareyte

PORTNAME=	minipro
PORTVERSION=	0.3
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	CLI for MiniPRO TL866xx chip programmers
WWW=		https://gitlab.com/DavidGriffith/minipro

LICENSE=	GPLv3

RUN_DEPENDS=	bash:shells/bash

USES=		gmake pkgconfig shebangfix
USE_GITLAB=	yes

GL_ACCOUNT=	DavidGriffith
GL_COMMIT=	bd24d32dd9de20d6c1c3fdf827767ac391f3f864
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
