# Created by: Luc Hondareyte
# $FreeBSD$

PORTNAME=	noizebox
PORTVERSION=	1.2
PORTREVISION=	1
CATEGORIES=	audio

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	SF2 synthesizer based on Fluidsynth and curses

LICENSE=	BSD2CLAUSE

USES=		gmake

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TAGNAME=	9e12693
GH_TUPLE=	FluidSynth:fluidsynth:v2.1.0:fluidsynth
PKG_DEPENDS=	spectro450:sysutils/spectro450
BUNDLE_LIBS=    yes
USE_LDCONFIG=   no
PLIST_FILES=    Noizebox/Contents/FreeBSD/$(ARCH)/noizebox \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libsqlite3.so.0 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libncurses.so.8 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libthr.so.3 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libc.so.7 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libz.so.6 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libm.so.5 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libgthread-2.0.so.0 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libglib-2.0.so.0 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libintl.so.8 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libiconv.so.2 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libpcre.so.1 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libfluidsynth.so.2 \
		Noizebox/Frameworks/FreeBSD/$(ARCH)/libfluidsynth.so.2.3.0 \
		Noizebox/Resources/etc/devd/noizebox-usb.conf \
		Noizebox/Resources/etc/noizebox.conf \
		Noizebox/Resources/soundfont.conf \
		Noizebox/Resources/mksf2db.sh \
		Noizebox/noizebox

PREFIX=		/Applications

NO_LICENSES_INSTALL=   yes

GIT_YEAR=	2019
MAKE_ARGS+=	GIT_YEAR="$(GIT_YEAR)"
MAKE_ARGS+=	GIT_VERSION="$(DISTVERSION)"
MAKE_JOBS_UNSAFE=yes

post-extract:
	@${MKDIR} $(WRKSRC)/fluidsynth
	@$(MV) $(WRKSRC_fluidsynth)/* $(WRKSRC)/fluidsynth/

do-install:
	@cd $(WRKSRC) && ${GMAKE} bintree
	@cd $(WRKSRC) && ${COPYTREE_BIN} ./Noizebox  $(STAGEDIR)$(PREFIX)
	@${CHMOD} 644  $(STAGEDIR)$(PREFIX)/Noizebox/Resources/*.conf
	@${CHMOD} 644  $(STAGEDIR)$(PREFIX)/Noizebox/Resources/etc/*.conf
	@${CHMOD} 644  $(STAGEDIR)$(PREFIX)/Noizebox/Resources/etc/devd/*.conf

.include <bsd.port.mk>
