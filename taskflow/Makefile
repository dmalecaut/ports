include ../config.mk

PROJECT := taskflow
ROOTDIR := taskflow
SRCDIR  := taskflow

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
	  -DTF_BUILD_TESTS=OFF \
	  -DTF_BUILD_EXAMPLES=OFF

include ../build.mk
