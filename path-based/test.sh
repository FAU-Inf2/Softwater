#!/bin/bash
# execute in Tests directory

# =============================================================================
# PATH-BASED SOFTWARE WATERMARK - TEST SCRIPT
# =============================================================================
#
# CRITICAL LIMITATION - IMPLEMENTATION IS INCOMPLETE:
# ----------------------------------------------------
# The current LLVM pass implementation does NOT produce working binaries.
# The jump table (.zero 16384) is created but NEVER populated with addresses.
# Result: All watermarked binaries will segfault at runtime.
#
# This implementation requires additional post-processing to:
# 1. Compile IR to assembly
# 2. Extract addresses using objdump
# 3. Generate and embed the jump table
# 4. Reassemble the final binary
#
# This workflow is not currently integrated. See WMBranchFunctionEmbed.cpp
# for the incomplete post-processing code.
#
# REQUIREMENTS:
# - At least 2 unconditional jumps (non-fall-through) in the LLVM IR
# - Unoptimized code (-O0) works best
# - x86_64 target architecture
#
# CURRENT STATUS:
# - ✓ LLVM pass runs without crashing
# - ✓ Inserts branch function and calls correctly
# - ✗ Jump table not populated (binaries segfault)
# - ✗ No working extraction method
#
# This script runs the pass for testing the embedding phase only.
# Do NOT expect functional binaries.
# =============================================================================

echo "WARNING: Path-based watermark implementation is INCOMPLETE."
echo "Watermarked binaries will segfault. Running for embedding test only."
echo ""

# Run with unoptimized code to maximize unconditional jumps
python test.py \
  --c-compiler "clang -Wno-implicit-int -Wno-implicit-function-declaration -emit-llvm -O0 -c [input] -o [output]" \
  --cpp-compiler "clang++ --std=c++2a -Wno-narrowing -emit-llvm -O0 -c [input] -o [output]" \
  --embed "opt -load-pass-plugin=./build/path-based/libWMBranchFunction.so -passes=wm-branch-function [file] -o [file] -S" \
  -t
