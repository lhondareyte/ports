# Created by: Luc Hondareyte

PORTNAME=	memsimctl
DISTVERSION=    g20241117
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Another tool for memSIM2 EPROM emulator
WWW= 		http://github.com/ra1fh/memsimctl.git

LICENSE=	ISCL

ALL_TARGET=	$(PORTNAME)

USE_GITHUB=	yes
GH_ACCOUNT=	ra1fh
GH_PROJECT=	memsimctl
GH_TAGNAME=	4e92e97

PLIST_FILES=    bin/memsimctl

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
