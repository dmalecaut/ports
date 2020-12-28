SHELL := /bin/sh

# Directory specifiers
BUILDDIR       := build
INSTALLROOTDIR := $(HOME)/portstrap
INSTALLDIR      = $(INSTALLROOTDIR)/$(PROJECT)

# Misc build configuration
GENERATOR := Ninja
BUILDTYPE := Release
LIBS      != find $(INSTALLROOTDIR) -maxdepth 1 -mindepth 1 -type d
