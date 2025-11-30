# 
# $Id$
#
PACKAGES=	as31 \
		beatrix \
		dvm1200 \
		fxload \
		firmwarehotplug \
		galasm \
		hex2bin \
		jack \
		jack_umidi \
		libsamplerate \
		mailsend \
		memsim2 \
		memsimctl \
		noizebox \
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

