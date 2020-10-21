include ../config.mk

PROJECT := catch2
ROOTDIR := Catch2
SRCDIR  := Catch2

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DCATCH_INSTALL_DOCS=OFF \
		-DCATCH_INSTALL_EXTRAS=OFF

include ../build.mk
