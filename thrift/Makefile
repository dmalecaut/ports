include ../config.mk

PROJECT := thrift
ROOTDIR := thrift
SRCDIR  := thrift

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DBUILD_TESTING=OFF \
		-DBUILD_TUTORIALS=OFF \
		-DBUILD_COMPILER=ON \
		-DBUILD_CPP=ON \
		-DBUILD_AS3=OFF \
		-DBUILD_C_GLIB=OFF \
		-DBUILD_JAVA=OFF \
		-DBUILD_JAVASCRIPT=OFF \
		-DBUILD_NODEJS=OFF \
		-DBUILD_PYTHON=OFF \
		-DBUILD_HASKELL=OFF

include ../build.mk