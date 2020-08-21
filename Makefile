include config.mk

TARGETS := \
	abseil-cpp \
	arrow \
	c-ares \
	crc32c \
	gflags \
	grpc \
	leveldb \
	protobuf \
	re2 \
	snappy

all: $(TARGETS)

arrow: grpc gflags
grpc: abseil-cpp protobuf re2 c-ares
leveldb: crc32c snappy

$(TARGETS):
	$(MAKE) -C $@ update install clean

clean:
	rm -rf */$(BUILDDIR)

.PHONY: $(TARGETS)
