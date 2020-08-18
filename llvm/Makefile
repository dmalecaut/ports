include ../config.mk

PROJECT := llvm
ROOTDIR := llvm-project
SRCDIR  := $(ROOTDIR)/llvm

LLVMMODULES := \
	clang \
	clang-tools-extra \
	libcxx \
	libcxxabi \
	libunwind \
	lldb \
	compiler-rt \
	lld \
	polly
LLVMMODLIST != echo $(LLVMMODULES) | sed -e 's/ /;/g'

INSTALLCMD := cmake --install $(BUILDDIR)
BUILDCMD   := cmake --build $(BUILDDIR)
CONFIGCMD  := \
	cmake -Wno-dev -G$(GENERATOR) -B$(BUILDDIR) -S$(SRCDIR) \
		-DCMAKE_INSTALL_PREFIX=$(INSTALLDIR) \
		-DCMAKE_BUILD_TYPE=$(BUILDTYPE) \
		-DLLVM_ENABLE_PROJECTS="$(LLVMMODLIST)"

include ../build.mk
