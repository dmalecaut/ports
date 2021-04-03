include config.mk

TARGETS := \
	abseil-cpp \
	arrow \
	c-ares \
	crc32c \
	gflags \
	leveldb \
	protobuf \
	re2 \
	snappy \
	boost \
	spdlog \
	rapidjson \
	taskflow \
	armadillo \
	ensmallen \
	cereal \
	mlpack \
	catch2 \
	grpc \
	date \
	fmt \
	openssl \
	caf \
	caf_incubator \
	thrift \
	utf8proc \
	# leave this here

all: $(TARGETS)
	cp env.sh $(INSTALLROOTDIR)

arrow: grpc gflags snappy thrift utf8proc
grpc: abseil-cpp protobuf re2 c-ares openssl
leveldb: crc32c snappy
mlpack: armadillo ensmallen cereal
ensmallen: armadillo
cereal: boost
thrift: boost
caf_incubator: caf

$(TARGETS):
	$(MAKE) -C $@ install

clean:
	for t in $(TARGETS); do $(MAKE) -C $$t clean; done

.PHONY: $(TARGETS)
