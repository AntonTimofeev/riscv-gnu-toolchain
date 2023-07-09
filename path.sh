#!/bin/bash

BIN_DIR="$(pwd)/$(dirname $BASH_SOURCE)/build_dir_64/bin:$(pwd)/$(dirname $BASH_SOURCE)/build_dir_32/bin"
export PATH="$BIN_DIR:$PATH"