include ../config.mk

PROJECT := boost
ROOTDIR := boost
SRCDIR  := boost

UPDATECMD  := git submodule update --init --recursive $(SRCDIR)
CONFIGCMD  := cd $(SRCDIR) && ./bootstrap.sh --prefix=$(INSTALLDIR)
BUILDCMD   := cd $(SRCDIR) && ./b2 link=shared cxxstd=$(CXXVER)
INSTALLCMD := cd $(SRCDIR) && ./b2 install
CLEANCMD   := cd $(SRCDIR) && ./b2 --clean-all -n

include ../build.mk
