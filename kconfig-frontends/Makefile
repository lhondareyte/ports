# Created by: Hondareyte <lhondareyte@laposte.net>
# $FreeBSD$

PORTNAME=	kconfig-frontends
PORTVERSION=	4.11.0.1
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	Linux kernel configuration (aka kconfig) parser and frontends

LICENSE=	GPLv2
LICENSE_FILE=   ${WRKSRC}/COPYING

RUN_DEPENDS=	bash:shells/bash

USES=		pkgconfig gmake libtool autoreconf tar:bzip2

USE_GITLAB=	yes
GL_ACCOUNT=	ymorin
GL_PROJECT=	$(PORTNAME)
GL_COMMIT=	df6a283f24aa146ab862950503db9542a12dab7a

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
