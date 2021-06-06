#!/bin/bash

mkdir -p build/debug;
cmake -D CMAKE_BUILD_TYPE=Debug -S . -B build/debug
