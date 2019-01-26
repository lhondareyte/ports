# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	spectro450
PORTVERSION=	1.0
CATEGORIES=	sysutils
MASTER_SITES=	http://lhondareyte.free.fr/spectro450/
DISTFILES=	#none

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	Spectro450 Generic Appliance meta-port

NO_ARCH=	yes

PLIST_FILES=	share/${PORTNAME}
NO_BUILD=	yes
NO_FETCH=	yes

do-install:

package:
	${RM} -rf ${STAGEDIR}/*
	${MKDIR} ${STAGEDIR}${PREFIX}/share
	${ECHO_CMD} "Placeholder file" ${PORTVERSION} > ${STAGEDIR}${PREFIX}/${PLIST_FILES}
	${INSTALL_DATA} files/MANIFEST ${STAGEDIR}/+MANIFEST
	${INSTALL_DATA} files/COMPACT_MANIFEST ${STAGEDIR}/+COMPACT_MANIFEST
	${TOUCH} -t 197001010100.00 ${STAGEDIR}/*MANIFEST
	${MKDIR} ${STAGEDIR}/../pkg
	cd ${STAGEDIR} &&  ${CHOWN} -R root:wheel *
	cd ${STAGEDIR} && tar cJf ../pkg/${PORTNAME}-${PORTVERSION}.txz +MANIFEST +COMPACT_MANIFEST \
		usr/local/share/${PORTNAME}

.include <bsd.port.mk>
