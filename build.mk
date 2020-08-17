# Step commands
NSTALLCMD    ?=
BUILDCMD     ?=
CONFIGCMD    ?=
UPDATECMD    ?= git submodule update --remote $(SRCDIR)
DEINSTALLCMD ?= rm -rf $(INSTALLDIR)
CLEANCMD     ?= rm -rf $(BUILDDIR)

# Step definitions
INSTALLSTEP   = $(PROJECT)_install
BUILDSTEP     = $(PROJECT)_build
CONFIGSTEP    = $(PROJECT)_config
UPDATESTEP    = $(PROJECT)_update
DEINSTALLSTEP = $(PROJECT)_deinstall
CLEANSTEP     = $(PROJECT)_clean

DEPENDS ?=

all:

install: $(INSTALLSTEP)

build: $(BUILDSTEP)

config: $(CONFIGSTEP)

update: $(UPDATESTEP)

deinstall: $(DEINSTALLSTEP)

depends: $(DEPENDS)

clean: $(CLEANSTEP)

$(PROJECT): $(DEPENDS) $(INSTALLSTEP)

$(INSTALLSTEP): $(BUILDSTEP)
	$(INSTALLCMD)

$(BUILDSTEP): $(CONFIGSTEP)
	$(BUILDCMD)

$(CONFIGSTEP):
	$(CONFIGCMD)

$(DEINSTALLSTEP):
	$(DEINSTALLCMD)

$(CLEANSTEP):
	$(CLEANCMD)
