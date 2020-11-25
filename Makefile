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
	#thrift \

all: $(TARGETS)
	cp env.sh $(INSTALLROOTDIR)

arrow: grpc gflags snappy thrift
grpc: abseil-cpp protobuf re2 c-ares
leveldb: crc32c snappy
mlpack: armadillo ensmallen cereal
ensmallen: armadillo
cereal: boost

$(TARGETS):
	$(MAKE) -C $@ update install

clean:
	rm -rf */$(BUILDDIR)

.PHONY: $(TARGETS)
