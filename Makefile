# 
# $Id$
#
PACKAGES=	as31 \
		db5 \
		dvm1200 \
		firmwarehotplug \
		kconfig-frontends \
		libsamplerate \
		minipro \
		mmm \
		noizebox \
		py-kwalify \
		smart-psu \
		spectro450 \
		jackit \
		jack_umidi \
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

