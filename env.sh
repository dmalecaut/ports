#!/usr/bin/env bash

PORTSTRAP_HOME=$(cd $(dirname "${BASH_SOURCE[0]}") >/dev/null 2>&1 && pwd)
PORTSTRAP_BIN=$(printf '%s:' $(find $PORTSTRAP_HOME -maxdepth 2 -type d -name bin))
PORTSTRAP_LIB=$(printf '%s:' $(find $PORTSTRAP_HOME -maxdepth 2 -type d -name lib))
PORTSTRAP_INCLUDE=$(printf '%s:' $(find $PORTSTRAP_HOME -maxdepth 2 -type d -name include))

export PATH=$PORTSTRAP_BIN:$PATH
export LD_LIBRARY_PATH=$PORTSTRAP_LIB:$LD_LIBRARY_PATH
export LD_RUN_PATH=$PORTSTRAP_LIB:$LD_RUN_PATH
export LIBRARY_PATH=$PORTSTRAP_LIB:$LIBRARY_PATH
export CPATH=$PORTSTRAP_INCLUDE:$CPATH
