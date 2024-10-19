# Created by: Hondareyte

PORTNAME=	as31
PORTVERSION=	2.3.1
PORTREVISION=	1
CATEGORIES=	devel

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Assembler for the Intel 8031/8051
WWW=		https://www.pjrc.com/tech/8051/tools/as31_old.html

LICENSE=	BSD4CLAUSE

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
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}/${PORTNAME}.1 ${STAGEDIR}${PREFIX}/share/man/man1

post-install:
	@${GZIP_CMD} ${STAGEDIR}${PREFIX}/share/man/man1/${PORTNAME}.1
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
