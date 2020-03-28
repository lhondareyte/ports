# Created by: Matthias Andree <mandree@FreeBSD.org>
# $FreeBSD: head/databases/db5/Makefile 523641 2020-01-20 19:27:49Z mat $

PORTNAME=	db5
PORTVERSION=	5.3.28
PORTREVISION=	7
CATEGORIES=	databases java
MASTER_SITES=	https://download.oracle.com/berkeley-db/
PKGNAMEPREFIX?=
#
# the distfiles aren't named db5-* but db-*:
DISTNAME=	db-${PORTVERSION}
DIST_SUBDIR=	bdb

MAINTAINER=	mandree@FreeBSD.org
COMMENT=	Oracle Berkeley DB, revision ${BDBVER}

LICENSE=	SLEEPYCAT
LICENSE_GROUPS=	FSF GPL OSI
LICENSE_NAME=	Sleepycat
LICENSE_FILE=	${WRKSRC}/../LICENSE
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

BDBVER=		${PORTVERSION:R}
BDBMAJ=		${BDBVER:R}
CONFIGURE_ARGS=	--enable-cxx --enable-stl --enable-dbm \
		--enable-compat185 --disable-dump185 \
		--disable-java --disable-sql \
		--disable-jdbc --disable-tcl \
		--disable-localization \
		--disable-sql_codegen \
		--with-cryptography=no \
		--includedir=${PREFIX}/include/${PORTNAME} \
		--libdir=${PREFIX}/lib/${PORTNAME} \
		--bindir=${PREFIX}/bin/${PORTNAME}
CONFIGURE_SCRIPT=	../dist/configure
GNU_CONFIGURE=	yes
USES=		gmake libtool
INSTALL_TARGET=	install_lib  install_include
WRKSRC=		${WRKDIR}/${DISTNAME}/build_unix
PATCH_WRKSRC=	${WRKDIR}/${DISTNAME}
USE_LDCONFIG=	yes
PLIST_SUB=	BDBMAJ=${BDBMAJ} BDBVER=${BDBVER}
MAKE_ARGS+=	docdir=${DOCSDIR}
CFLAGS+=	-Wall -Wextra

DBLIBS=	libdb libdb_cxx libdb_stl

.include <bsd.port.options.mk>

.if ${ARCH} == aarch64 || ${ARCH:Marmv*}
# db5 uses a deprecated instruction for mutexes on ARM, fbsd bug#197227
# and also bug#205001
CONFIGURE_ARGS+=	--enable-posixmutexes
# force POSIX mutexes - the OS supports PTHREAD_PROCESS_SHARED
CONFIGURE_ARGS+=	--with-mutex=POSIX/pthreads
.endif

post-patch:
	${REINPLACE_CMD} -e '/^DOCLIST/{s/csharp//;}' ${WRKSRC}/../dist/Makefile.in
	${REINPLACE_CMD} -Ee 's/[[:<:]]atomic_init[[:>:]]/db_atomic_init/g' ${WRKSRC}/../src/mp/mp* ${WRKSRC}/../src/mutex/mut_*

post-install:
.for i in ${DBLIBS}
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/lib/${PORTNAME}/${i}-${BDBVER}.so.0
	${LN} -s -f ${PORTNAME}/${i}-${BDBVER}.so.0 ${STAGEDIR}${PREFIX}/lib
	${LN} -s -f ${PORTNAME}/${i}-${BDBMAJ}.so ${STAGEDIR}${PREFIX}/lib
	${LN} -s -f ${i}-${BDBVER}.so.0 ${STAGEDIR}${PREFIX}/lib/${i}-${BDBVER}.so
	${LN} -s -f ${i}-${BDBVER}.so.0 ${STAGEDIR}${PREFIX}/lib/${i}-${BDBMAJ}.so.0
	${LN} -s -f ${i}-${BDBVER}.a ${STAGEDIR}${PREFIX}/lib/${PORTNAME}/${i}.a
.endfor
#	cd ${STAGEDIR}${PREFIX}/bin/${PORTNAME}; \
#	for i in *; do ${LN} -s -f ${PORTNAME}/$$i ../$$i-${BDBVER} ; \
#		       ${LN} -s -f ${PORTNAME}/$$i ../$$i-${BDBMAJ} ; done
#
post-install-JAVA-off:
	${RM} -r ${STAGEDIR}${DOCSDIR}/java
.for i in gsg gsg_db_rep gsg_txn
	${RM} -r ${STAGEDIR}${DOCSDIR}/${i}/JAVA
.endfor

post-install-SQL-off:
	${RM} -r ${STAGEDIR}${DOCSDIR}/bdb-sql


.include <bsd.port.mk>
