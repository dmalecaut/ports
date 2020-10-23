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
		-DSPDLOG_BUILD_SHARED=ON \
		-DSPDLOG_ENABLE_PCH=ON \
		-DSPDLOG_BUILD_EXAMPLE=OFF

include ../build.mk
