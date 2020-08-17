TARGETS = \
	abseil-cpp \
	c-ares \
	crc32c \
	grpc \
	leveldb \
	llvm \
	openssl \
	protobuf \
	re2 \
	snappy \
	zlib

all: $(TARGETS)

grpc: llvm abseil-cpp protobuf re2 c-ares openssl
abseil-cpp: llvm
re2: llvm
c-ares: llvm
protobuf: llvm zlib
zlib: llvm
leveldb: llvm crc32c snappy
snappy: llvm
crc32c: llvm
openssl:
llvm:

$(TARGETS):
	$(MAKE) -C $@ update install clean

.PHONY: $(TARGETS)
