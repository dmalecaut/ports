include ../config.mk

PROJECT := spdlog
ROOTDIR := spdlog
SRCDIR  := spdlog

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DSPDLOG_BUILD_EXAMPLE=OFF \
		-DSPDLOG_BUILD_TESTING=OFF

include ../build.mk
