include ../config.mk

PROJECT := re2
ROOTDIR := re2
SRCDIR  := re2

INSTALLCMD = cmake --install $(BUILDDIR)
BUILDCMD   = cmake --build $(BUILDDIR)
CONFIGCMD  = \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DBUILD_SHARED_LIBS=TRUE \
		-DRE2_BUILD_TESTING=OFF

include ../build.mk
