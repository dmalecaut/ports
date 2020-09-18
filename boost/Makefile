include ../config.mk

PROJECT := boost
ROOTDIR := boost
SRCDIR  := boost

INSTALLCMD := \
	git submodule update --init --recursive --remote $(SRCDIR) \
	&& ./$(SRCDIR)/bootstrap.sh --prefix=$(INSTALLDIR)

include ../build.mk
