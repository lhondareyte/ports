# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	spectro450
PORTVERSION=	1.0
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@laposte.net
WWW=		http://lhondareyte.free.fr/Noizebox
COMMENT=	Spectro450 Generic Appliance

LICENSE=	BSD2CLAUSE
NO_LICENSES_INSTALL=yes

RUN_DEPENDS=	spectro-utils:sysutils/spectro-utils

NO_ARCH=	yes
USES=		pkgconfig

clean:
	@rm -rf pkg-plist

build:
	@mkdir -p ${STAGEDIR}${PREFIX}/share/${PORTNAME}
	@printf "share/${PORTNAME}/${PORTNAME}.release" > pkg-plist
	
extract:
	@mkdir -p ${STAGEDIR}
	
do-install:
	@echo "VERSION=${PORTVERSION}" > ${STAGEDIR}${PREFIX}/share/${PORTNAME}/${PORTNAME}.release

.include <bsd.port.mk>
