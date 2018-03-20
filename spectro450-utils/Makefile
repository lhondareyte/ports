# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	spectro450-utils
DISTVERSION=	1.0
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@laposte.net
WWW=		https://github.com/lhondareyte/spectro-450
COMMENT=	SPECTRO-450 audio appliance utilities

LEGAL_PACKAGE=	yes
LICENSE=	BSD2CLAUSE
NO_LICENSES_INSTALL=yes

RUN_DEPENDS=	sqlite3:databases/sqlite3
NO_CHECKSUM=	yes
DISABLE_SIZE=	yes

MASTER_SITES=	GH
USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	spectro450-utils
GH_TAGNAME=	LATEST-1X

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/etc/devd
	@${MKDIR} ${STAGEDIR}${PREFIX}/etc/rc.d
	@${MKDIR} ${STAGEDIR}${PREFIX}/libexec/spectro450
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/spectro450
	@${INSTALL_SCRIPT} ${WRKSRC}/rc.d/firstboot ${STAGEDIR}${PREFIX}/etc/rc.d/
	@${INSTALL_SCRIPT} ${WRKSRC}/rc.d/spectro450 ${STAGEDIR}${PREFIX}/etc/rc.d/
	@${INSTALL_SCRIPT} ${WRKSRC}/utils/saveconfig ${STAGEDIR}${PREFIX}/libexec/spectro450
	@${INSTALL_CMD} ${WRKSRC}/src/spectro450 ${STAGEDIR}${PREFIX}/libexec/spectro450
	@${INSTALL_DATA} ${WRKSRC}/devd/spectro450.conf ${STAGEDIR}${PREFIX}/etc/devd/
	@${INSTALL_DATA} ${WRKSRC}/devd/midi-usb.conf ${STAGEDIR}${PREFIX}/etc/devd/
	@${INSTALL_DATA} ${WRKSRC}/conf/spectro450.conf ${STAGEDIR}${PREFIX}/share/spectro450/

.include <bsd.port.mk>
