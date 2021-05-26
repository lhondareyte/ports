# Created by: Ying-Chieh Liao <ijliao@FreeBSD.org>
# $FreeBSD: head/databases/sqlite3/Makefile 486622 2018-12-04 18:02:14Z swills $

PORTNAME=	sqlite3
DISTVERSION=	3.35.5
PORTREVISION=   0
PORTEPOCH=      1
CATEGORIES=	databases
MASTER_SITES=   https://www.sqlite.org/2021/ https://www2.sqlite.org/2021/ https://www3.sqlite.org/2021/
DISTNAME=       sqlite-autoconf-${PORTVERSION:C/\.([[:digit:]])[[:>:]]/0\1/g:S/.//g}00

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	SQL database engine in a C library

LICENSE=	PD

USES=		libtool ncurses pathfix 
USE_LDCONFIG=	yes

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-static \
		--enable-editline \
		--disable-readline \
		--disable-fts3 \
		--disable-fts4 \
		--disable-fts5 \
		--disable-json1
MAKE_JOBS_UNSAFE=	yes
INSTALL_TARGET=	install-strip

PLIST_FILES=    bin/sqlite3 include/sqlite3.h include/sqlite3ext.h \
		lib/libsqlite3.so lib/libsqlite3.so.0 \
		lib/libsqlite3.so.0.8.6 libdata/pkgconfig/sqlite3.pc \
		man/man1/sqlite3.1.gz

# If not specified, the default is 0644 which means that the files is globally
# readable but only writable by the creator.
.ifdef DEFAULT_FILE_PERMISSIONS
CPPFLAGS+=		-DSQLITE_DEFAULT_FILE_PERMISSIONS=${DEFAULT_FILE_PERMISSIONS}
.endif
.include <bsd.port.mk>
