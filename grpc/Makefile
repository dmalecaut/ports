include ../config.mk

PROJECT := grpc
ROOTDIR := grpc
SRCDIR  := grpc

MODULES != printf '%s;' $(LIBS)

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_NAME_DIR="$(INSTALLDIR)/lib" \
		-DCMAKE_PREFIX_PATH="$(MODULES)" \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DBUILD_SHARED_LIBS=TRUE \
		-DgRPC_BUILD_TESTS=OFF \
		-DgRPC_BUILD_CODEGEN=ON \
		-DgRPC_BUILD_CSHARP_EXT=OFF \
		-DgRPC_BACKWARDS_COMPATIBILITY_MODE=OFF \
		-DgRPC_ABSL_PROVIDER=package \
		-DgRPC_PROTOBUF_PROVIDER=package \
		-DgRPC_RE2_PROVIDER=package \
		-DgRPC_CARES_PROVIDER=package \
		-DgRPC_SSL_PROVIDER=package \
		-DgRPC_ZLIB_PROVIDER=package

include ../build.mk
