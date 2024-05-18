# Created by: Luc Hondareyte

PORTNAME=	noizebox
PORTVERSION=	1.2
PORTREVISION=	3
CATEGORIES=	audio

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	SF2 synthesizer based on Fluidsynth and curses

LICENSE=	BSD2CLAUSE

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TAGNAME=	13b7ea4
GH_TUPLE=	FluidSynth:fluidsynth:v2.3.4:fluidsynth

#PKG_DEPENDS=	spectro450:sysutils/spectro450

BUNDLE_LIBS=    no
USE_LDCONFIG=   no

PLIST_FILES=    Noizebox/noizebox  \
		Noizebox/Contents/FreeBSD/$(ARCH)/noizebox \
		Noizebox/Resources/etc/devd/noizebox-usb.conf \
		Noizebox/Resources/etc/noizebox.conf \
		Noizebox/Resources/soundfont.conf \
		Noizebox/Resources/mksf2db.sh \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libsqlite3.so.0 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libncursesw.so.9 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libtinfow.so.9 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libthr.so.3 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libc.so.7 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libz.so.6 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libm.so.5 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libfluidsynth.so.3 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libomp.so \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libglib-2.0.so.0 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libgthread-2.0.so.0 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libintl.so.8 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libc++.so.1 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libcxxrt.so.1 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libgcc_s.so.1 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libiconv.so.2 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libpcre2-8.so.0 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libutil.so.9 \
		Noizebox/Frameworks/FreeBSD/${ARCH}/libfluidsynth.so.3.2.2 \

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
	@cd $(WRKSRC) && ${MAKE} bintree
	@cd $(WRKSRC) && ${COPYTREE_BIN} ./Noizebox  $(STAGEDIR)$(PREFIX)
	@${CHMOD} 644  $(STAGEDIR)$(PREFIX)/Noizebox/Resources/*.conf
	@${CHMOD} 644  $(STAGEDIR)$(PREFIX)/Noizebox/Resources/etc/*.conf
	@${CHMOD} 644  $(STAGEDIR)$(PREFIX)/Noizebox/Resources/etc/devd/*.conf

stage-qa:

.include <bsd.port.mk>
