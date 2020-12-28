include ../config.mk

PROJECT := openssl
ROOTDIR := openssl
SRCDIR  := openssl

INSTALLCMD := $(MAKE) -C $(BUILDDIR) install
BUILDCMD   := $(MAKE) -C $(BUILDDIR)
CONFIGCMD  := \
	mkdir -p $(BUILDDIR); cd $(BUILDDIR); ../$(SRCDIR)/config \
		--prefix=$(INSTALLDIR) --openssldir=$(INSTALLDIR) shared -Wl,-rpath,$(INSTALLDIR)/lib

include ../build.mk
