# Created by: Hondareyte
# $FreeBSD$

PORTNAME=	mailsend
PORTVERSION=	1.19
CATEGORIES=	misc

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	simple command line mail sender

LICENSE=	BSD

GNU_CONFIGURE=  yes
CONFIGURE_ARGS= --with-openssl=/usr

USE_GITHUB=     yes
GH_ACCOUNT=     muquit
GH_PROJECT=     ${PORTNAME}
GH_TAGNAME=     06da014
PLIST_FILES=	bin/mailsend \
		man/man1/mailsend.1.gz

do-install:
	echo "${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin"
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	echo "${INSTALL_MAN} ${WRKSRC}/doc/${PORTNAME}.1.gz ${STAGEDIR}${PREFIX}/man/man1"
	${INSTALL_MAN} ${WRKSRC}/doc/${PORTNAME}.1.gz ${STAGEDIR}${PREFIX}/man/man1

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
