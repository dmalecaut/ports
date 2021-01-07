include ../config.mk

PROJECT := utf8proc
ROOTDIR := utf8proc
SRCDIR  := utf8proc

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_CXX_COMPILER=g++ \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DBUILD_SHARED_LIBS=TRUE \
		-DUTF8PROC_INSTALL=$(INSTALLDIR)

include ../build.mk
