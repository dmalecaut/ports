SHELL := /bin/sh

# Directory specifiers
BUILDDIR       := build
INSTALLROOTDIR := $(HOME)/opt
INSTALLDIR      = $(INSTALLROOTDIR)/$(PROJECT)

# Misc build configuration
CC        := clang
CXX       := clang++
CXXFLAGS  := -stdlib=libc++
LDFLAGS   := -lc++ -lc++abi
AR        := $(INSTALLROOTDIR)/llvm/bin/llvm-ar
STRIP     := $(INSTALLROOTDIR)/llvm/bin/llvm-strip
LD        := $(INSTALLROOTDIR)/llvm/bin/lld
RANLIB    := $(INSTALLROOTDIR)/llvm/bin/llvm-ranlib
OBJCOPY   := $(INSTALLROOTDIR)/llvm/bin/llvm-objcopy
GENERATOR := Ninja
BUILDTYPE := Release
LIBS      != find $(INSTALLROOTDIR) -type d -depth 1
