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
GH_TAGNAME=	da22d56
GH_TUPLE=	FluidSynth:fluidsynth:v2.4.7:fluidsynth

ALL_TARGET=	modules

BUNDLE_LIBS=    no

PLIST_FILES=    Noizebox/noizebox  \
		Noizebox/Contents/$(OPSYS)/$(ARCH)/noizebox \
		Noizebox/Resources/etc/devd/noizebox-usb.conf \
		Noizebox/Resources/etc/noizebox.conf \
		Noizebox/Resources/soundfont.conf \
		Noizebox/Resources/mksf2db.sh \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libsqlite3.so.0 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libncursesw.so.9 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libtinfow.so.9 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libthr.so.3 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libc.so.7 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libz.so.6 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libm.so.5 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libfluidsynth.so.3 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libomp.so \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libglib-2.0.so.0 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libgthread-2.0.so.0 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libintl.so.8 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libc++.so.1 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libcxxrt.so.1 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libgcc_s.so.1 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libiconv.so.2 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libpcre2-8.so.0 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libutil.so.9 \
		Noizebox/Frameworks/$(OPSYS)/${ARCH}/libfluidsynth.so.3.3.7

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
