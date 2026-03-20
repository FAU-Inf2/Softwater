# execute in Tests directory
python test.py --c-compiler "clang -Wno-implicit-int -Wno-implicit-function-declaration -emit-llvm -O1 -g -c [input] -o [output]" --cpp-compiler "clang++ --std=c++2a -Wno-narrowing -emit-llvm -O1 -g -c [input] -o [output]" --embed "opt -load-pass-plugin=./build/number-theory/libNumberTheory.so -O1 [file] -o [file] -S -nt-signature=42" -t 
