# Created by: Hondareyte

PORTNAME=	smart-psu
PORTVERSION=	1.1
PORTREVISION=   1
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Smart PSU daemon for ARM board
WWW=		https://github.com/lhondareyte/smart-psu

LICENSE=	BSD2CLAUSE

ALL_TARGET=	psud

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TAGNAME=	3557baa
 
PLIST_FILES=    bin/psud \
		etc/rc.d/psud \
		etc/psud.conf.sample

WRKSRC_SUBDIR=	psud

.include <bsd.port.mk>
