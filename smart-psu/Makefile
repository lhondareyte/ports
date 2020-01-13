# Created by: Luc Hondareyte
# $FreeBSD$

PORTNAME=	smart-psu
PORTVERSION=	1.0
#PORTREVISION=	1
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	Smart PSU daemon for ARM board

LICENSE=	BSD2CLAUSE

ALL_TARGET=	psud

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TAGNAME=	22f6997
PLIST_FILES=    bin/psud \
		etc/psud.conf.sample

WRKSRC_SUBDIR=	psud

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/psud ${STAGEDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/../etc/psud.conf ${STAGEDIR}${PREFIX}/etc/psud.conf.sample

.include <bsd.port.mk>
