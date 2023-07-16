#!/bin/bash

BASE_DIR="$(pwd)"
SCRIPT_DIR="$BASE_DIR/$(dirname "$0")"

cd $SCRIPT_DIR

# 64-bit
BUILD_DIR_64="$SCRIPT_DIR/build_dir_64"
make clean
./configure --prefix=$BUILD_DIR_64
make linux -j10

make clean
./configure --prefix=$BUILD_DIR_64
make -j10

# 32-bit
BUILD_DIR_32="$SCRIPT_DIR/build_dir_32"
make clean
./configure --prefix=$BUILD_DIR_32 --with-arch=rv32gc --with-abi=ilp32d
make linux -j10

make clean
./configure --prefix=$BUILD_DIR_32 --with-arch=rv32gc --with-abi=ilp32d
make -j10

cd $BASE_DIR