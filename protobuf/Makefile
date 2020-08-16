PROTOBUFDIR=protobuf/cmake
BUILDDIR=build
INSTALLDIR=/usr/local/opt/protobuf
BUILDTYPE=Release
CMGENERATOR=Ninja

CC=clang
CXX=clang++
CXXFLAGS=-stdlib=libc++
LDFLAGS=-lc++ -lc++abi

all:

install: build
	cmake --install $(BUILDDIR)

build: config
	cmake --build $(BUILDDIR)

config:
	cmake -G$(CMGENERATOR) -B$(BUILDDIR) -S$(PROTOBUFDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DCMAKE_C_COMPILER=$(CC) \
		-DCMAKE_CXX_COMPILER=$(CXX) \
		-DCMAKE_CXX_FLAGS="$(CXXFLAGS)" \
		-DCMAKE_STATIC_LINKER_FLAGS="$(LDFLAGS)" \
		-DCMAKE_SHARED_LINKER_FLAGS="$(LDFLAGS)" \
		-DCMAKE_EXE_LINKER_FLAGS="$(LDFLAGS)" \
		-Dprotobuf_BUILD_TESTS=OFF \
		-DBUILD_SHARED_LIBS=TRUE \
		-DWITH_PROTOC=TRUE

clean:
	rm -rf $(BUILDDIR)
