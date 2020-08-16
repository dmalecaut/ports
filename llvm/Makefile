LLVMDIR=llvm-project/llvm
BUILDDIR=build
INSTALLDIR=/usr/local/opt/llvm
BUILDTYPE=Release
CMGENERATOR=Ninja
LLVMMODULES= \
	clang \
	clang-tools-extra \
	libcxx \
	libcxxabi \
	libunwind \
	lldb \
	compiler-rt \
	lld \
	polly
LLVMMODLIST!=echo $(LLVMMODULES) | sed -e 's/ /;/g'

install: build
	cmake --install $(BUILDDIR)

build: config
	cmake --build $(BUILDDIR)

config:
	cmake -G$(CMGENERATOR) -B$(BUILDDIR) -S$(LLVMDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DLLVM_ENABLE_PROJECTS="$(LLVMMODLIST)"

clean:
	rm -rf $(BUILDDIR)
