# Created by: Hondareyte
# $FreeBSD$

PORTNAME=	spectro450
PORTVERSION=	0.1
CATEGORIES=	sysutils

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Spectro450 Appliance base

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	spectro450-core
GH_TAGNAME=	a7dbfa6

PLIST_FILES=    etc/rc.d/spectro450 \
		etc/devd/spectro450.conf \
		libexec/spectro450/dialog \
		libexec/spectro450/firstboot \
		libexec/spectro450/pkgmgt \
		libexec/spectro450/libapp.sh \
		bin/openapp \
		bin/closeapp 

do-build:

.include <bsd.port.mk>
