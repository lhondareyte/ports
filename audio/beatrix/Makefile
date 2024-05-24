# Created by: Hondareyte

PORTNAME=	beatrix
PORTVERSION=	0.41
#PORTREVISION=	1
CATEGORIES=	audio
MASTER_SITES=	https://github.com/lhondareyte/beatrix.git/

MAINTAINER=	lhondareyte@isp.net.invalid
COMMENT=	B3 organ simulator
WWW= 		https://people.dsv.su.se/~fk/beatrix_home.html

ALL_TARGET=	$(PORTNAME)

GH_ACCOUNT=	lhondareyte
GH_PROJECT=	$(PORTNAME)
GH_TAGNAME=	7f544a4

PREFIX=		/Applications

NO_LICENSES_INSTALL=	yes

PLIST_FILES=    Beatrix/Contents/$(OPSYS)/$(ARCH)/beatrix \
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
do-extract:
	$(RM)r $(PORTNAME)-$(PORTVERSION) && \
	git clone  git@github.com:$(GH_ACCOUNT)/$(GH_PROJECT).git \
	$(WRKSRC)

checksum:
do-patch:

.include <bsd.port.mk>
