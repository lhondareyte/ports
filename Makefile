# 
# $Id$
#
PACKAGES=	as31 \
		firmwarehotplug \
		kconfig-frontends \
		minipro \
		mmm \
		noizebox \
		py-kwalify \
		spectro450 \
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

