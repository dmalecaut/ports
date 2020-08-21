include ../config.mk

PROJECT := protobuf
ROOTDIR := protobuf
SRCDIR  := $(ROOTDIR)/cmake

MODULES := $(INSTALLROOTDIR)/zlib

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_PREFIX_PATH="$(MODULES)" \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-Dprotobuf_BUILD_TESTS=OFF \
		-DBUILD_SHARED_LIBS=TRUE \
		-DWITH_PROTOC=TRUE

include ../build.mk
