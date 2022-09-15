# Created by: Hondareyte
# $FreeBSD$

PORTNAME=	beatrix
PORTVERSION=	0.41
#PORTREVISION=	1
CATEGORIES=	audio

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	B3 organ simulator

ALL_TARGET=	$(PORTNAME)

GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TAGNAME=	f0b9e75

PREFIX=		/Applications

NO_LICENSES_INSTALL=	yes

PLIST_FILES=    Beatrix/Contents/FreeBSD/$(ARCH)/beatrix \
		Beatrix/Resources/etc/default.cfg \
		Beatrix/Resources/etc/fartybass.cfg \
		Beatrix/Resources/etc/osc-bassy.cfg \
		Beatrix/Resources/etc/osc-middy.cfg \
		Beatrix/Resources/etc/osc-noxtalk.cfg \
		Beatrix/Resources/etc/osc-sawtooth.cfg \
		Beatrix/Resources/etc/osc-scoop.cfg \
		Beatrix/Resources/etc/osc-square.cfg \
		Beatrix/Resources/etc/osc-trebly.cfg \
		Beatrix/Resources/etc/osc-triangle.cfg \
		Beatrix/Resources/etc/osc-xwave.cfg \
		Beatrix/Resources/etc/whirl-mellow.cfg \
		Beatrix/Resources/etc/whirl-sharp.cfg \
		Beatrix/Resources/etc/whirl-x100.cfg 

do-fetch:
	$(RM)r $(PORTNAME)-$(PORTVERSION) && \
	git clone  git@github.com:$(GH_ACCOUNT)/$(GH_PROJECT).git $(PORTNAME)-$(PORTVERSION)

checksum: 
do-extract: 
	$(MV) $(PORTNAME)-$(PORTVERSION) work
do-patch:

.include <bsd.port.mk>
