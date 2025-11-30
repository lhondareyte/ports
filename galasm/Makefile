# Created by: Luc Hondareyte

PORTNAME=	galasm
PORTVERSION=	2.1
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Portable GAL Assembler
WWW= 		http://github.com/ra1fh/memsimctl.git

LICENSE=	UNKNOWN
LICENSE_NAME=	unknown
LICENSE_FILE=	files/license.txt
LICENSE_PERMS=  dist-mirror no-dist-sell pkg-mirror no-pkg-sell auto-accept

ALL_TARGET=	$(PORTNAME)

USE_GITHUB=	yes
GH_ACCOUNT=	daveho
GH_PROJECT=	GALasm
GH_TAGNAME=	c376d56

PLIST_FILES=    bin/galasm \
		share/doc/galasm/README \
		share/doc/galasm/README2

WRKSRC_SUBDIR=	src

do-configure:
	@${SED} -i -e 's|gcc|cc|' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	${MKDIR} ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL} ${WRKSRC}/../README ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}
	${INSTALL} ${WRKSRC}/../README2 ${STAGEDIR}${PREFIX}/share/doc/${PORTNAME}

.include <bsd.port.mk>
