# Created by: Luc Hondareyte

PORTNAME=	memsim2
DISTVERSION=    g20230902
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Tool for memSIM2 EPROM emulator
WWW= 		http://github.com/nils-eilers/memSIM2.git

LICENSE=	GPLv2

USE_GITHUB=	yes
GH_ACCOUNT=	nils-eilers
GH_PROJECT=	memSIM2
GH_TAGNAME=	dfdd8e5

PLIST_FILES=    bin/memsim2

post-patch:
	${CP} ${FILESDIR}/Makefile ${WRKSRC}

.include <bsd.port.mk>
