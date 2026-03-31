#!/bin/bash
# execute in Tests directory
python test.py \
  --c-compiler "clang -Wno-implicit-int -Wno-implicit-function-declaration -emit-llvm -O0 -c [input] -o [output]" \
  --cpp-compiler "clang++ --std=c++2a -Wno-narrowing -emit-llvm -O0 -c [input] -o [output]" \
  --embed "opt -load-pass-plugin=./build/path-based/libWMBranchFunction.so -passes=wm-branch-function [file] -o [file] -S --pathbased-message=FAU" \
  -t
