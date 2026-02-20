# Created by: Hondareyte

PORTNAME=	spectro450
DISTVERSION=	g20260220
CATEGORIES=	sysutils
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	Spectro450 Core Appliance

LICENSE=	BSD2CLAUSE

USE_DEPENDS=	sqlite3
USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	spectro450-core
GH_TAGNAME=	01d5ef9

USE_LDCONFIG=	yes
USE=		sqlite3

PLIST_FILES=    etc/rc.d/spectro450 \
		etc/devd/spectro450.conf \
		lib/libspectro.so \
		lib/libspectro.so.1 \
		libexec/spectro450/dialog \
		libexec/spectro450/firstboot \
		libexec/spectro450/pkgmgt \
		libexec/spectro450/midimgt \
		libexec/spectro450/libapp.sh \
		libexec/spectro450/libsql.sh \
		bin/openapp \
		bin/closeapp

do-build:

.include <bsd.port.mk>
