include ../config.mk

PROJECT := gflags
ROOTDIR := gflags
SRCDIR  := gflags

MODULES != printf '%s;' $(LIBS)

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_PREFIX_PATH="$(MODULES)" \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DBUILD_SHARED_LIBS=TRUE

include ../build.mk
