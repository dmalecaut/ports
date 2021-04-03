include ../config.mk

PROJECT := caf
ROOTDIR := incubator
SRCDIR  := incubator

MODULES != printf '%s;' $(LIBS)

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_NAME_DIR="$(INSTALLDIR)/lib" \
		-DCMAKE_PREFIX_PATH="$(MODULES)" \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DBUILD_SHARED_LIBS=TRUE \
		-DCAF_ENABLE_TESTING=OFF

include ../build.mk
