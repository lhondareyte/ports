# Created by: Luc Hondareyte

PORTNAME=	usb-sniffer
DISTVERSION=    g20251115
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Low-cost USB Sniffer (LS/FS/HS) with Wireshark interface
WWW= 		https://github.com/ataradov/usb-sniffer

LICENSE=	BSD3CLAUSE
LICENSE_FILE=   ${WRKSRC}/../LICENSE

USES=           gmake

USE_GITHUB=	yes
GH_ACCOUNT=	ataradov
GH_PROJECT=	usb-sniffer
GH_TAGNAME=	0d26e7e

WRKSRC_SUBDIR=	software

PLIST_FILES=    bin/usb_sniffer \
		share/doc/${PORTNAME}/README.md

do-patch:
	${CP} ${FILESDIR}/Makefile ${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/usb_sniffer ${STAGEDIR}${PREFIX}/bin
	${MKDIR} ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL} ${WRKSRC}/../README.md ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}

.include <bsd.port.mk>
