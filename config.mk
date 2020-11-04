SHELL := /bin/sh

# Directory specifiers
BUILDDIR       := build
INSTALLROOTDIR := $(HOME)/opt
INSTALLDIR      = $(INSTALLROOTDIR)/$(PROJECT)

# Misc build configuration
GENERATOR := Ninja
BUILDTYPE := Release
LIBS      != find $(INSTALLROOTDIR) -maxdepth 1 -type d
