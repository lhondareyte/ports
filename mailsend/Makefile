# Created by: Hondareyte

PORTNAME=	mailsend
PORTVERSION=	1.19
PORTREVISION=	1
CATEGORIES=	misc

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Simple command line mail sender
WWW=		https://github.com/muquit/mailsend

LICENSE=	BSD3CLAUSE

GNU_CONFIGURE=  yes
CONFIGURE_ARGS= --with-openssl=/usr

USE_GITHUB=     yes
GH_ACCOUNT=     muquit
GH_PROJECT=     ${PORTNAME}
GH_TAGNAME=     06da014
PLIST_FILES=	bin/mailsend \
		share/man/man1/mailsend.1.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/${PORTNAME}.1.gz ${STAGEDIR}${PREFIX}/share/man/man1

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
