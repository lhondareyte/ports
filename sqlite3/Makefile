# Created by: Ying-Chieh Liao <ijliao@FreeBSD.org>

PORTNAME=	sqlite3
DISTVERSION=	3.49.2
PORTEPOCH=      1
CATEGORIES=	databases
YEAR=		2025
MASTER_SITES=   https://www.sqlite.org/${YEAR}/ https://www2.sqlite.org/${YEAR}/ https://www3.sqlite.org/${YEAR}/
DISTNAME=       sqlite-autoconf-${PORTVERSION:C/\.([[:digit:]])[[:>:]]/0\1/g:S/.//g}00

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	SQL database engine in a C library
WWW=		https://www.sqlite.org/

LICENSE=	PD

USES=		libtool pathfix
GNU_CONFIGURE=	yes
#INSTALL_TARGET=	install-strip
USE_LDCONFIG=	yes

CONFIGURE_ARGS=	--disable-static \
		--disable-editline \
		--disable-readline \
		--disable-fts3 \
		--disable-fts4 \
		--disable-fts5 \
		--disable-json
MAKE_JOBS_UNSAFE=	yes

PLIST_FILES=    bin/sqlite3 \
		include/sqlite3.h \
		include/sqlite3ext.h \
		lib/libsqlite3.so \
		lib/libsqlite3.so.0 \
		lib/libsqlite3.so.${DISTVERSION} \
		libdata/pkgconfig/sqlite3.pc

post-install:
	${STRIP_CMD} "${STAGEDIR}${PREFIX}/bin/${PORTNAME}" "${STAGEDIR}${PREFIX}/lib/lib${PORTNAME}.so.${DISTVERSION}"

.include <bsd.port.mk>
