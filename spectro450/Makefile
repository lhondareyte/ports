# Created by: Hondareyte
# $FreeBSD$

PORTNAME=	spectro450
PORTVERSION=	0.1
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Spectro450 Appliance base

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	spectro450-core
GH_TAGNAME=	8c455a6

PLIST_FILES=    etc/rc.d/spectro450 \
		etc/devd/spectro450.conf \
		libexec/spectro450/firstboot \
		libexec/spectro450/libapp.sh \
		bin/openapp \
		bin/closeapp 

do-build:

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/rc.d
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/devd
	${MKDIR} ${STAGEDIR}${PREFIX}/bin
	${MKDIR} ${STAGEDIR}${PREFIX}/libexec/${PORTNAME}
	${MKDIR} ${STAGEDIR}${PREFIX}/share/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/devd/spectro450.conf ${STAGEDIR}${PREFIX}/etc/devd/
	${INSTALL_SCRIPT} ${WRKSRC}/rc.d/spectro450 ${STAGEDIR}${PREFIX}/etc/rc.d
	${INSTALL_SCRIPT} ${WRKSRC}/libexec/firstboot ${STAGEDIR}${PREFIX}/libexec/${PORTNAME}
	${INSTALL_SCRIPT} ${WRKSRC}/libexec/libapp.sh ${STAGEDIR}${PREFIX}/libexec/${PORTNAME}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/openapp ${STAGEDIR}${PREFIX}/bin
	${RLN} ${STAGEDIR}${PREFIX}/bin/openapp ${STAGEDIR}${PREFIX}/bin/closeapp
.include <bsd.port.mk>
