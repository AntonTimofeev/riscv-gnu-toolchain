#!/bin/bash

BASE_DIR="$(pwd)"
SCRIPT_DIR="$BASE_DIR/$(dirname "$0")"
echo $BASE_DIR
echo $SCRIPT_DIR

cd $SCRIPT_DIR

BUILD_DIR="$SCRIPT_DIR/build_dir"
echo $BUILD_DIR
./configure --prefix=$BUILD_DIR
make linux -j10

cd $BASE_DIR