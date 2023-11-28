# Created by: Hondareyt1

PORTNAME=	hex2bin
DISTVERSION=	g20190113
CATEGORIES=	devel
MASTER_SITES=	https://github.com/bradgrantham/hex2bin/

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Get blobs for regions in an Intel HEX
WWW=   		https://github.com/bradgrantham/hex2bin/archive/refs/heads/

USE_GITHUB=	yes
GH_ACCOUNT= 	bradgrantham
GH_PROJECT=	hex2bin
GH_TAGNAME= 	99811a7

PLIST_FILES=	bin/hex2bin \
		bin/hexinfo

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hex2bin ${STAGEDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/hexinfo ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
