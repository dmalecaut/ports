# Step commands
NSTALLCMD    ?=
BUILDCMD     ?=
CONFIGCMD    ?=
UPDATECMD    ?= git submodule update --remote $(ROOTDIR)
DEINSTALLCMD ?= rm -rf $(INSTALLDIR)
CLEANCMD     ?= rm -rf $(BUILDDIR)

# Step definitions
INSTALLSTEP   = $(PROJECT)_install
BUILDSTEP     = $(PROJECT)_build
CONFIGSTEP    = $(PROJECT)_config
UPDATESTEP    = $(PROJECT)_update
DEINSTALLSTEP = $(PROJECT)_deinstall
CLEANSTEP     = $(PROJECT)_clean

# Environment
PATH            := $(INSTALLROOTDIR)/*/bin:$(PATH)
LD_LIBRARY_PATH := $(INSTALLROOTDIR)/*/lib:$(LD_LIBRARY_PATH)
LIBRARY_PATH    := $(INSTALLROOTDIR)/*/lib:$(LIBRARY_PATH)
CPATH       		:= $(INSTALLROOTDIR)/*/include:$(CPATH)

all:

install: $(INSTALLSTEP)

build: $(BUILDSTEP)

config: $(CONFIGSTEP)

update: $(UPDATESTEP)

deinstall: $(DEINSTALLSTEP)

clean: $(CLEANSTEP)

env: $(PROJECT)_env

$(PROJECT): $(INSTALLSTEP)

$(INSTALLSTEP): $(BUILDSTEP)
	$(INSTALLCMD)

$(BUILDSTEP): $(CONFIGSTEP)
	$(BUILDCMD)

$(CONFIGSTEP):
	$(CONFIGCMD)

$(UPDATESTEP):
	$(UPDATECMD)

$(DEINSTALLSTEP):
	$(DEINSTALLCMD)

$(CLEANSTEP):
	$(CLEANCMD)

$(PROJECT)_env:
	@echo "PATH = $(PATH)"
	@echo "LD_LIBRARY_PATH = $(LD_LIBRARY_PATH)"
	@echo "LIBRARY_PATH = $(LIBRARY_PATH)"
	@echo "CPATH = $(CPATH)"
