ZLIBDIR=zlib
BUILDDIR=build
INSTALLDIR=/usr/local/opt/zlib
BUILDTYPE=Release
CMGENERATOR=Ninja

CC=clang

all:

install: build
	cmake --install $(BUILDDIR)

build: config
	cmake --build $(BUILDDIR)

config:
	cmake -G$(CMGENERATOR) -B$(BUILDDIR) -S$(ZLIBDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DCMAKE_C_COMPILER=$(CC) \
		-DBUILD_SHARED_LIBS=TRUE

clean:
	rm -rf $(BUILDDIR)
