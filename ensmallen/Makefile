include ../config.mk

PROJECT := ensmallen
ROOTDIR := ensmallen
SRCDIR  := ensmallen

MODULES != printf '%s;' $(LIBS)

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_PREFIX_PATH="$(MODULES)" \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DBUILD_TESTS=OFF

include ../build.mk
