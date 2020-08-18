SHELL = /bin/tcsh

# Directory specifiers
BUILDDIR       := build
INSTALLROOTDIR := $(HOME)/opt
INSTALLDIR     = $(INSTALLROOTDIR)/$(PROJECT)

# Misc build configuration
CC        := clang
CXX       := clang++
CXXFLAGS  := -stdlib=libc++
LDFLAGS   := -lc++ -lc++abi
GENERATOR := Ninja
BUILDTYPE := Release
