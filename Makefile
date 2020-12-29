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
	thrift \
	# leave this here

all: $(TARGETS)
	cp env.sh $(INSTALLROOTDIR)

arrow: grpc gflags snappy thrift
grpc: abseil-cpp protobuf re2 c-ares openssl
leveldb: crc32c snappy
mlpack: armadillo ensmallen cereal
ensmallen: armadillo
cereal: boost

$(TARGETS):
	$(MAKE) -C $@ install

clean:
	for t in $(TARGETS); do $(MAKE) -C $$t clean; done

.PHONY: $(TARGETS)
