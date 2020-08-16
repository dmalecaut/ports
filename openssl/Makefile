PROJECT=openssl
PROJDIR=openssl
BUILDDIR=build
INSTALLDIR=/usr/local/opt/$(PROJECT)

all:

install: build
	$(MAKE) -C $(BUILDDIR) install

build: config
	$(MAKE) -C $(BUILDDIR)

config:
	mkdir -p $(BUILDDIR); cd $(BUILDDIR); ../$(PROJDIR)/config \
		--prefix=$(INSTALLDIR) --openssldir=$(INSTALLDIR) shared -Wl,-rpath,$(INSTALLDIR)/lib

clean:
	rm -rf $(BUILDDIR)
