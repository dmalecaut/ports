include ../config.mk

PROJECT := boost
ROOTDIR := boost
SRCDIR  := boost

UPDATECMD  := git submodule update --init --recursive $(ROOTDIR)
CONFIGCMD  := cd $(SRCDIR) && ./bootstrap.sh --prefix=$(INSTALLDIR)
BUILDCMD   := cd $(SRCDIR) && ./b2
INSTALLCMD := \
	mkdir -p $(INSTALLDIR) && mkdir -p $(INSTALLDIR)/include \
	&& cp -r $(SRCDIR)/stage/lib $(INSTALLDIR) \
	&& cp -r $(SRCDIR)/$(PROJECT) $(INSTALLDIR)/include

include ../build.mk
