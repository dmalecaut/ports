include ../config.mk

PROJECT := jemalloc
ROOTDIR := jemalloc
SRCDIR  := jemalloc

INSTALLCMD := $(MAKE) -C $(BUILDDIR) install
BUILDCMD   := $(MAKE) -C $(BUILDDIR)
CONFIGCMD  := \
	cd $(SRCDIR) && ./autogen.sh \
		--srcdir=../$(BUILDDIR) \
		--prefix=$(INSTALLDIR) \
		--enable-shared

include ../build.mk
