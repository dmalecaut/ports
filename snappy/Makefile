include ../config.mk

PROJECT := snappy
ROOTDIR := snappy
SRCDIR  := snappy

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DBUILD_SHARED_LIBS=TRUE \
		-DSNAPPY_BUILD_TESTS=OFF \
		-DSNAPPY_INSTALL=$(INSTALLDIR)

include ../build.mk
