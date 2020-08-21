SHELL := /bin/sh

# Directory specifiers
BUILDDIR       := build
INSTALLROOTDIR := $(HOME)/opt
INSTALLDIR      = $(INSTALLROOTDIR)/$(PROJECT)

# Misc build configuration
GENERATOR := Ninja
BUILDTYPE := Release
LIBS      != find $(INSTALLROOTDIR) -type d -depth 1
