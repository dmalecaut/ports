include ../config.mk

PROJECT := boost
ROOTDIR := boost
SRCDIR  := boost

CONFIGCMD  := \
	git submodule update --init --recursive $(SRCDIR) \
	&& cd $(SRCDIR) && ./bootstrap.sh --prefix=$(INSTALLDIR)

BUILDCMD := \
	cd $(SRCDIR) && ./b2

INSTALLCMD := \
	mkdir -p $(INSTALLDIR) && mkdir -p $(INSTALLDIR)/include \
	&& cp -r $(SRCDIR)/stage/lib $(INSTALLDIR) \
	&& cp -r $(SRCDIR)/$(PROJECT) $(INSTALLDIR)/include

include ../build.mk
