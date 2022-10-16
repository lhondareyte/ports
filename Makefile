# 
# $Id$
#
PACKAGES=	as31 \
		beatrix \
		dvm1200 \
		fxload \
		firmwarehotplug \
		jack2 \
		jack_umidi \
		kconfig-frontends \
		libsamplerate \
		mailsend \
		minipro \
		mmm \
		noizebox \
		py-kwalify \
		smart-psu \
		spectro450 \
		sqlite3

package:
	@for dir in $(PACKAGES); do \
		(cd $$dir; $(MAKE) $@); done

fetch:
	@for dir in $(PACKAGES); do \
		(cd $$dir; $(MAKE) $@); done

clean:
	@for dir in $(PACKAGES); do \
		(cd $$dir; $(MAKE) $@); done

