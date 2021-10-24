# Created by: Wojciech A. Koszek <wkoszek@FreeBSD.org>

PORTNAME=	fxload
PORTVERSION=	20140224
CATEGORIES=	misc

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Firmware download for Cypress EZ-USB devices

LICENSE=	GPLv2+
LICENSE_FILE=	${WRKSRC}/COPYING

USE_GITHUB=     yes
GH_ACCOUNT=     lhondareyte
GH_PROJECT=     fxload
GH_TAGNAME=     c0ee5b5

USES=		gmake
SUB_FILES=	pkg-message

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fxload ${STAGEDIR}${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/fxload.8 ${STAGEDIR}${PREFIX}/man/man8
	@${MKDIR} ${STAGEDIR}${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/a3load.hex ${STAGEDIR}${DATADIR}
	${INSTALL_DATA} ${FILESDIR}/xilinx.conf ${STAGEDIR}${PREFIX}/etc/devd

.include <bsd.port.mk>
