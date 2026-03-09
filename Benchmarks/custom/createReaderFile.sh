#!/bin/bash

clang++ -std="c++98" -O1 -lm -w -o iowriter_high ./iowriter_high.cpp
./iowriter_high
rm iowriter_high
mv iowriterfile.txt ioreaderfile.txt