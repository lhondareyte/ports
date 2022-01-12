# Created by: Hondareyte
# $FreeBSD$

PORTNAME=	spectro450
PORTVERSION=	0.1
PORTREVISION=	3
CATEGORIES=	sysutils
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Spectro450 Core Appliance

LICENSE=	BSD

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	spectro450-core
GH_TAGNAME=	95b74be

PLIST_FILES=    etc/rc.d/spectro450 \
		etc/devd/spectro450.conf \
		lib/libspectro.so \
		lib/libspectro.so.1 \
		libexec/spectro450/dialog \
		libexec/spectro450/firstboot \
		libexec/spectro450/pkgmgt \
		libexec/spectro450/libapp.sh \
		bin/openapp \
		bin/closeapp 

do-build:

.include <bsd.port.mk>
