# Created by: Hondareyte
# $FreeBSD$

PORTNAME=	spectro450
PORTVERSION=	0.1
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@yopmail.com
COMMENT=	Spectro450 Appliance base

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	spectro450-core
GH_TAGNAME=	427e2c1

do-build:

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/rc.d
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/devd
	${MKDIR} ${STAGEDIR}${PREFIX}/libexec/${PORTNAME}
	${MKDIR} ${STAGEDIR}${PREFIX}/share/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/devd/spectro450.conf ${STAGEDIR}${PREFIX}/etc/devd/
	${INSTALL_SCRIPT} ${WRKSRC}/rc.d/spectro450 ${STAGEDIR}${PREFIX}/etc/rc.d
	${INSTALL_SCRIPT} ${WRKSRC}/rc.d/firstboot ${STAGEDIR}${PREFIX}/libexec/${PORTNAME}
	# ${INSTALL_SCRIPT} ${WRKSRC}/spectro450.sh ${STAGEDIR}${PREFIX}/libexec/${PORTNAME}
.include <bsd.port.mk>
