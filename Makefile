# 
# $Id$
#
PACKAGES=	as31 \
		dvm1200 \
		firmwarehotplug \
		kconfig-frontends \
		minipro \
		mmm \
		noizebox \
		py-kwalify \
		smart-psu \
		spectro450 \
		jack \
		jack_umidi \
		sqlite3

default:
	@for dir in $(PACKAGES); do \
		(cd $$dir; $(MAKE) package); \
        done

fetch:
	@for dir in $(PACKAGES); do \
		(cd $$dir; $(MAKE) fetch); \
        done

clean:
	@for dir in $(PACKAGES); do \
		(cd $$dir; $(MAKE) clean); \
        done

