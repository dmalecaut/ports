FROM ubuntu:21.04
RUN apt-get update && apt-get install -y \
    build-essential \
    autoconf \
    automake \
    zlib1g-dev \
    cmake \
    ninja-build \
    git
ADD . /portstrap-repo
RUN make -C /portstrap-repo PREFIX=/ \
    && rm -rf /portstrap-repo
ENTRYPOINT ["/portstrap/env.sh"]
