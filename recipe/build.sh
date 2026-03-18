#!/bin/bash

cmake -S . -B build -G Ninja \
  -DCMAKE_BUILD_TYPE:STRING=Release \
  -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX \
  -DCMAKE_PREFIX_PATH:PATH=$PREFIX \
  -DCMAKE_INSTALL_LIBDIR:PATH=lib \
  -DCMAKE_INSTALL_INCLUDEDIR:PATH=include
cmake --build build
cmake --install build
