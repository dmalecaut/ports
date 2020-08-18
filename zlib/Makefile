include ../config.mk

PROJECT := zlib
SRCDIR  := zlib

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DCMAKE_C_COMPILER=$(CC) \
		-DBUILD_SHARED_LIBS=TRUE

include ../build.mk
