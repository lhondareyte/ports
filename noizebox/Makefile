# Created by: Luc Hondareyte
# $FreeBSD$

PORTNAME=	noizebox
PORTVERSION=	1.2
CATEGORIES=	audio
MASTER_SITES=	GH

MAINTAINER=	lhondareyte@laposte.net
COMMENT=	SF2 synthesizer based on Fluidsynth and curses

LICENSE=	BSD2CLAUSE

USES=		pkgconfig gmake

USE_GITHUB=	yes
GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TUPLE=	FluidSynth:fluidsynth:v2.1.0:fluidsynth
PKG_DEPENDS=	spectro450:sysutils/spectro450

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
