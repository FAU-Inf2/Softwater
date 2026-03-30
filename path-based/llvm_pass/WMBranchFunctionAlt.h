//
// Created by papus on 11.11.20.
//

#ifndef LLVM_PASSES_WMBRANCHFUNCTIONALT_H
#define LLVM_PASSES_WMBRANCHFUNCTIONALT_H

#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Verifier.h"
#include "llvm/InitializePasses.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/Analysis.h>

#define DEBUG_TYPE "watermark"

namespace llvm {
void initializeWatermarkPass(PassRegistry &);
}

using namespace llvm;

//------------------------------------------------------------------------------
// Legacy PM interface
//------------------------------------------------------------------------------
namespace {
struct WMBranchFunctionAlt : public llvm::PassInfoMixin<WMBranchFunctionAlt> {
  static char ID;
  WMBranchFunctionAlt() {
    errs() << "Constructing Watermark pass...\n";
    // initializeWatermarkPass(*PassRegistry::getPassRegistry());
  }

  llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);
};
} // namespace

#endif // LLVM_PASSES_WMBRANCHFUNCTIONALT_H
