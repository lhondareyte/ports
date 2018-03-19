# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	spectro450
PORTVERSION=	1.0
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@laposte.net
WWW=		http://lhondareyte.free.fr/Noizebox
COMMENT=	Spectro450 Generic Appliance meta-port
MASTER_SITES=	# none
DISTFILES=	# none

#RUN_DEPENDS=	spectro-utils:sysutils/spectro-utils

NO_ARCH=	yes

PLIST_FILES=	share/${PORTNAME}
NO_BUILD=	yes
NO_FETCH=	yes

do-install:

package:
	@rm -rf ${STAGEDIR}/*
	@mkdir -p  ${STAGEDIR}${PREFIX}/share
	@${ECHO_CMD} "Placeholder file" ${PORTVERSION} > ${STAGEDIR}${PREFIX}/${PLIST_FILES}
	@${INSTALL_DATA} files/MANIFEST ${STAGEDIR}/+MANIFEST
	@${INSTALL_DATA} files/COMPACT_MANIFEST ${STAGEDIR}/+COMPACT_MANIFEST
	@touch -t 197001010100.00 ${STAGEDIR}/*MANIFEST
	@mkdir -p ${STAGEDIR}/../pkg
	@cd ${STAGEDIR} &&  chown -R root:wheel *
	@cd ${STAGEDIR} && tar cJf ../pkg/${PORTNAME}-${PORTVERSION}.txz +MANIFEST +COMPACT_MANIFEST \
                      usr/local/share/${PORTNAME}
	
.include <bsd.port.mk>
