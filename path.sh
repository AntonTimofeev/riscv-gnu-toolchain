#!/bin/bash

case $BASH_SOURCE in
  /*) export PATH="$(dirname $BASH_SOURCE)/build_dir_64/bin:$(dirname $BASH_SOURCE)/build_dir_32/bin:$PATH" ;;
  *) export PATH="$(pwd)/$(dirname $BASH_SOURCE)/build_dir_64/bin:$(pwd)/$(dirname $BASH_SOURCE)/build_dir_32/bin:$PATH" ;;
esac
