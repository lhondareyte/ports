# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	as31
PORTVERSION=	2.3.1
CATEGORIES=	devel

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	8031/8051 Assembler from Paul Stoffregen and Martin Langer

LICENSE=	BSD

USES=		gmake
GNU_CONFIGURE=  yes

USE_GITHUB=     yes
GH_ACCOUNT=     lhondareyte
GH_PROJECT=     as31
GH_TAGNAME=     ${PORTVERSION}
PLIST_FILES=	bin/as31 \
		man/man1/as31.1.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}/${PORTNAME}.1 ${STAGEDIR}${PREFIX}/man/man1

post-install:
	@${GZIP_CMD} ${STAGEDIR}${PREFIX}/man/man1/${PORTNAME}.1
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
