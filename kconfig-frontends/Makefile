# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	kconfig-frontends
PORTVERSION=	4.11.0.1
CATEGORIES=	devel
MASTER_SITES=	http://ymorin.is-a-geek.org/download/$(PORTNAME)/

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	Linux kernel configuration (aka kconfig) parser and frontends

LICENSE=	GPLv2
LICENSE_FILE=   ${WRKSRC}/COPYING

RUN_DEPENDS=	bash:shells/bash

USES=		pkgconfig gmake libtool autoreconf tar:bzip2

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
