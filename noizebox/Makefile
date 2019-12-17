# Created by: Luc Hondareyte
# $FreeBSD$

PORTNAME=	noizebox
PORTVERSION=	1.2
CATEGORIES=	audio
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	SF2 synthesizer based on Fluidsynth and curses

LICENSE=	BSD2CLAUSE

USES=		gmake

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TUPLE=	FluidSynth:fluidsynth:v2.1.0:fluidsynth
PKG_DEPENDS=	spectro450:sysutils/spectro450
PLIST_FILES=    Noizebox/Contents/FreeBSD/amd64/noizebox \
		Noizebox/Frameworks/FreeBSD/amd64/libsqlite3.so.0 \
		Noizebox/Frameworks/FreeBSD/amd64/libncurses.so.8 \
		Noizebox/Frameworks/FreeBSD/amd64/libthr.so.3 \
		Noizebox/Frameworks/FreeBSD/amd64/libc.so.7 \
		Noizebox/Frameworks/FreeBSD/amd64/libz.so.6 \
		Noizebox/Frameworks/FreeBSD/amd64/libm.so.5 \
		Noizebox/Frameworks/FreeBSD/amd64/libgthread-2.0.so.0 \
		Noizebox/Frameworks/FreeBSD/amd64/libglib-2.0.so.0 \
		Noizebox/Frameworks/FreeBSD/amd64/libintl.so.8 \
		Noizebox/Frameworks/FreeBSD/amd64/libiconv.so.2 \
		Noizebox/Frameworks/FreeBSD/amd64/libpcre.so.1 \
		Noizebox/Frameworks/FreeBSD/amd64/libfluidsynth.so.2 \
		Noizebox/Frameworks/FreeBSD/amd64/libfluidsynth.so.2.3.0 \
		Noizebox/Resources/etc/devd/noizebox-usb.conf \
		Noizebox/Resources/etc/noizebox.conf \
		Noizebox/Resources/soundfont.conf \
		Noizebox/Resources/mksf2db.sh \
		Noizebox/noizebox

PREFIX=		/Applications

GIT_YEAR=	2019
MAKE_ARGS+=	GIT_YEAR="$(GIT_YEAR)"
MAKE_ARGS+=	GIT_VERSION="$(PORTVERSION)"
MAKE_JOBS_UNSAFE=yes

post-extract:
	@${MKDIR} $(WRKSRC)/fluidsynth
	@$(MV) $(WRKSRC_fluidsynth)/* $(WRKSRC)/fluidsynth/

do-install:
	@cd $(WRKSRC) && ${GMAKE} install
	@cd $(WRKSRC) && ${COPYTREE_BIN} ./Noizebox  $(STAGEDIR)$(PREFIX)
	@${CHMOD} 644  $(STAGEDIR)$(PREFIX)/Noizebox/Resources/*.conf
	@${CHMOD} 644  $(STAGEDIR)$(PREFIX)/Noizebox/Resources/etc/*.conf
	@${CHMOD} 644  $(STAGEDIR)$(PREFIX)/Noizebox/Resources/etc/devd/*.conf

.include <bsd.port.mk>
