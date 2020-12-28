include ../config.mk

PROJECT := boost
ROOTDIR := boost
SRCDIR  := boost

UPDATECMD  := git submodule update --init --recursive $(SRCDIR)
CONFIGCMD  := cd $(SRCDIR) && ./bootstrap.sh --prefix=$(INSTALLDIR)
BUILDCMD   := cd $(SRCDIR) && ./b2 link=shared
INSTALLCMD := cd $(SRCDIR) && ./b2 install

include ../build.mk
