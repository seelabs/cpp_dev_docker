#!/usr/bin/env bash

set -ex

version=${1}

curl -Lf https://github.com/Kitware/CMake/releases/download/v${version}/cmake-${version}.tar.gz -o cmake.tar.gz
tar xf cmake.tar.gz
rm cmake.tar.gz
pushd cmake-${version}
./bootstrap
make -j4
make install
popd # cmake-${version}
rm -fr cmake-${version}
