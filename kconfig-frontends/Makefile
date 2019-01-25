# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	kconfig-frontends
PORTVERSION=	4.11.0.1
CATEGORIES=	devel

MAINTAINER=	lhondareyte@laposte.net
WWW=		http://ymorin.is-a-geek.org/projects/kconfig-frontends
COMMENT=	Linux kernel configuration (aka kconfig) parser and frontends

LEGAL_PACKAGE=	yes
LICENSE=	GPLv2
LICENSE_FILE=   ${WRKSRC}/COPYING

MASTER_SITES=	http://ymorin.is-a-geek.org/download/$(PORTNAME)/
DISTFILES=	$(PORTNAME)-$(PORTVERSION).tar.bz2

GNU_CONFIGURE=	yes
USES=		pkgconfig gmake libtool autoreconf

.include <bsd.port.mk>
