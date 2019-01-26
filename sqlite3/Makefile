# Created by: Ying-Chieh Liao <ijliao@FreeBSD.org>
# $FreeBSD: head/databases/sqlite3/Makefile 486622 2018-12-04 18:02:14Z swills $

PORTNAME=	sqlite3
DISTVERSION=	3.26.0
CATEGORIES=	databases
MASTER_SITES=	https://www.sqlite.org/2018/ http://www2.sqlite.org/2018/ http://www3.sqlite.org/2018/
DISTNAME=	sqlite-autoconf-${PORTVERSION:C/\.([[:digit:]])[[:>:]]/0\1/g:S/.//g}00

MAINTAINER=	lhondareyte@laposte.net
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

# If not specified, the default is 0644 which means that the files is globally
# readable but only writable by the creator.
.ifdef DEFAULT_FILE_PERMISSIONS
CPPFLAGS+=		-DSQLITE_DEFAULT_FILE_PERMISSIONS=${DEFAULT_FILE_PERMISSIONS}
.endif
.include <bsd.port.mk>
