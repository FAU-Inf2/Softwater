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

### Number-Theory
Number-Theory is an implementation from Mila Dalla Preda and Michele Ianni's 2024 paper "Exploiting Number Theory for Dynamic Software Watermarking". 
[doi:10.1007/s11416-023-00489-8](https://doi.org/10.1007/s11416-023-00489-8).
The technique splits a secret signature S into residues bi = S mod ni for
pairwise coprime moduli ni and embeds each bi as the value of an integer variable at a chosen iteration of a loop along an execution trace.
The implementation chooses the ni and bi automatically.
This implementation uses LLVM's loop analyses to automatically choose suitable loops to embed the watermark
without the need of symbolic execution.

### RPGMark
RPG-Mark is an implementation from Maria Chroni and Stavros D. Nikolopoulos's 2012 paper "An Embedding Graph-based Model for
Software Watermarking" [doi:10.1109/IIH-MSP.2012.69](https://doi.org/10.1109/IIH-MSP.2012.69).
It constructs the static call-graph from a function.
The watermark message is encoded in a self-inverting permutation.
The domination relation in this permutation allows to construct a reducible permutation graph (RPG).
The RPG is introduced as an subgraph of the call-graph. The nodes are mapped to specific functions.
Missing edges are inserted by introducing synthetic calls as opaque-predicates.
Our implementation constructs the following types of opaque-predicates:
- semantic call predicates that adapt the idea of SemaCall to use semantic knowledge of library functions to construct an "always true"
  or "always false" expression. e.g. `if time() == 0 then ... fi`.
- CLI argument number predicate that checks for an unrealistic value of the `argn` parameter passed as a first parameter to the main function
  of a program.
The extraction proves the presence of a message by constructing its RPG and showing that it is a subgraph of the given program.
This differs from the WaterRPG approach of Novac et al. that use a dynamic call-graph as a trace of the program execution.
While one can argue that this approach is more resilient, it requires program execution to embed the watermark, rendering
automatic embedding and extraction more difficult.
