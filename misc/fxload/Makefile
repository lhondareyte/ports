# Created by: Wojciech A. Koszek <wkoszek@FreeBSD.org>

PORTNAME=	fxload
PORTVERSION=	20140224
PORTREVISION=	1
CATEGORIES=	misc

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Firmware download for Cypress EZ-USB devices
WWW=		https://bitbucket.org/DJOConnor/fxload

LICENSE=	GPLv2+
LICENSE_FILE=	${WRKSRC}/COPYING

USE_GITHUB=     yes
GH_ACCOUNT=     lhondareyte
GH_PROJECT=     fxload
GH_TAGNAME=     8d4597d

SUB_FILES=	pkg-message

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fxload ${STAGEDIR}${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/fxload.8 ${STAGEDIR}${PREFIX}/share/man/man8
	@${MKDIR} ${STAGEDIR}${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/a3load.hex ${STAGEDIR}${DATADIR}
	${INSTALL_DATA} ${FILESDIR}/xilinx.conf ${STAGEDIR}${PREFIX}/etc/devd

.include <bsd.port.mk>
