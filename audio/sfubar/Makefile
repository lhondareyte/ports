# Created by: Luc Hondareyte

PORTNAME=	sfubar
PORTVERSION=	g20261016
PORTREVISION=	1
CATEGORIES=	misc

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Old tool for SF2 processing
WWW= 		http://github.com/freepats/old-tools.git

LICENSE=	PD

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	old-tools
GH_TAGNAME=	2761b0c

WRKSRC_SUBDIR=	sfubar-9
MAKE_JOBS_UNSAFE=yes

PLIST_FILES=    bin/sfubar

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sfubar ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
