# Created by: Hondareyte

PORTNAME=	dvm1200
PORTVERSION=	1.0
#PORTREVISION=	2
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	CLI for VELLEMAN DVM1200
WWW= 		http://github.com/lhondareyte/dvm1200.git

LICENSE=	MIT

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TAGNAME=	c99a720
PLIST_FILES=    bin/dvm1200 \
		man/man1/dvm1200.1.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/$(PORTNAME) ${STAGEDIR}${PREFIX}/bin
	${GZIP_CMD} ${WRKSRC}/$(PORTNAME).1
	${INSTALL_MAN} ${WRKSRC}/$(PORTNAME).1.gz ${STAGEDIR}${MANPREFIX}/man/man1
.include <bsd.port.mk>
