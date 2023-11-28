# Created by: Hondareyte

PORTNAME=	smart-psu
PORTVERSION=	1.1
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Smart PSU daemon for ARM board
WWW=		https://github.com/lhondareyte/smart-psu

LICENSE=	BSD2CLAUSE

ALL_TARGET=	psud

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TAGNAME=	23a0abc
PLIST_FILES=    bin/psud \
		etc/rc.d/psud \
		etc/psud.conf.sample

WRKSRC_SUBDIR=	psud

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/psud ${STAGEDIR}${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/etc/psud ${STAGEDIR}${PREFIX}/etc/rc.d/psud
	${INSTALL_DATA} ${WRKSRC}/etc/psud.conf ${STAGEDIR}${PREFIX}/etc/psud.conf.sample

.include <bsd.port.mk>
