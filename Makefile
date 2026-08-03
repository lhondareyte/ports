# 
# $Id$
#
PACKAGES=	audio/beatrix \
		audio/firmwarehotplug \
		audio/jack \
		audio/jack_umidi \
		audio/jackctl \
		audio/libsamplerate \
		audio/noizebox \
		databases/sqlite3 \
		devel/as31 \
		devel/galasm \
		devel/hex2bin \
		misc/dvm1200 \
		misc/fxload \
		misc/mailsend \
		sysutils/memsim2 \
		sysutils/memsimctl \
		sysutils/smart-psu \
		sysutils/spectro450 \
		sysutils/usb-sniffer

package:
	@for dir in $(PACKAGES); do \
		(cd $$dir; $(MAKE) $@); done

fetch:
	@for dir in $(PACKAGES); do \
		(cd $$dir; $(MAKE) $@); done

clean:
	@for dir in $(PACKAGES); do \
		(cd $$dir; $(MAKE) $@); done

