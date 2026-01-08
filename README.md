# Softwater
Softwater is a collection of Software Watermarks developed as LLVM Transformation Passes.
They embed a signature (the watermark message) invisibly into programs.
The program still works as expected but by providing a key the hidden message can be extracted again.
This can be used for fingerprinting, copyrighting, and prove of ownership to deter software piracy.

## Building
To build all watermark techniques and tools you need a installed LLVM 19, CMake and Make.
Export the LLVM install direction (e.g., `export LLVM_HOME=/usr/`), run `cmake -B build -S .`, and `make` in the build folder.

## Usage
The built `.so` libraries can be loaded into `opt` by invoking:
```
opt --load-pass-plugin=/path/to/plugin.so -S -o test.wm.ll test.ll -O1
```
and into `clang` by invoking:
```
clang -fpass-plugin=/path/to/plugin.so test.c -O1
```
Special CLI arguments needed for the watermark techniques are listed below.

## Watermark Techniques
### SemaCall
SemaCall uses semantically known function calls to embed the watermark as a key-to-value function.
These known functions are usually library functions that interact with the user.
The user then provides a secret key that the embedded instructions from SemaCall, when detected, transform into the
watermark message that is printed on stdout as an easter-egg. For every other input, no easter-egg is triggered.

CLI arguments:
- `-atoi-key` and `-atoi-val`: secret key and watermark message for the `atoi` function (libc)
- `-gets-key` and `-gets-val`: secret key and watermark message for the `gets`, `fgets`, and `getline` functions (libc)
- `-time-key` and `-time-val`: secret key and watermark message for the `time` and `gettimeofday` functions (libc)

### Sidedata
Sidedata uses memory allocation functions to embed the watermark as key-to-value functions (just as SemaCall).
The Watermark assumes that the secret key is placed in the allocated data during the usages. At the End of Life
of the data (before a free for dynamic data or end of the lifetime of static data), it is checked if it contains
the key. If it does, the easter-egg is triggered, the message computed and printed.

CLI arguments:
- `-sidedata-key` secret key for Sidedata
- `-sidedata-val` watermark message for Sidedata
