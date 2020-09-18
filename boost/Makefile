include ../config.mk

PROJECT := boost
ROOTDIR := boost
SRCDIR  := boost

INSTALLCMD := \
	git submodule update --init --recursive $(SRCDIR) \
	&& cd $(SRCDIR) && ./bootstrap.sh --prefix=$(INSTALLDIR) && ./b2

include ../build.mk
