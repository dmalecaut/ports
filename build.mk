# Step commands
INSTALLCMD   ?=
BUILDCMD     ?=
CONFIGCMD    ?=
UPDATECMD    ?= git submodule update --init --remote $(ROOTDIR)
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
LIBS            != find $(INSTALLROOTDIR) -type d -depth 1
LIBSBIN         != printf '%s/bin:' $(LIBS)
LIBSLIB         != printf '%s/lib:' $(LIBS)
LIBSINCLUDE     != printf '%s/include:' $(LIBS)
PATH            := $(LIBSBIN)$(PATH)
LD_LIBRARY_PATH := $(LIBSLIB)$(LD_LIBRARY_PATH)
LIBRARY_PATH    := $(LIBSLIB)$(LIBRARY_PATH)
CPATH           := $(LIBSINCLUDE)$(CPATH)

ENVPREFIX = \
	PATH=$(PATH) \
	LD_LIBRARY_PATH=$(LD_LIBRARY_PATH) \
	LIBRARY_PATH=$(LIBRARY_PATH) \
	CPATH=$(CPATH)

install: $(INSTALLSTEP)

build: $(BUILDSTEP)

config: $(CONFIGSTEP)

update: $(UPDATESTEP)

deinstall: $(DEINSTALLSTEP)

clean: $(CLEANSTEP)

$(PROJECT): $(INSTALLSTEP)

$(INSTALLSTEP): $(BUILDSTEP)
	$(INSTALLCMD)

$(BUILDSTEP): $(CONFIGSTEP)
	$(ENVPREFIX) $(BUILDCMD)

$(CONFIGSTEP):
	$(ENVPREFIX) $(CONFIGCMD)

$(UPDATESTEP):
	$(UPDATECMD)

$(DEINSTALLSTEP):
	$(DEINSTALLCMD)

$(CLEANSTEP):
	$(CLEANCMD)
