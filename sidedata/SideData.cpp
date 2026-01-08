#include "SideData.hpp"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Value.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/CommandLine.h"
#include <unordered_set>
// only so the plugin may be build and loaded
using namespace llvm;
using namespace std;

llvm::PassPluginLibraryInfo getSideDataPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "sidedata-watermark", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](auto, ModulePassManager &MPM, auto) {
                  MPM.addPass(
                      createModuleToFunctionPassAdaptor(SidedataWatermark()));
                  return true;
                });
            // this one is needed for clang
            PB.registerPipelineEarlySimplificationEPCallback(
                [](ModulePassManager &MPM, auto) {
                  MPM.addPass(
                      createModuleToFunctionPassAdaptor(SidedataWatermark()));
                });
          }};
}

llvm::cl::opt<std::string> SidedataWatermark::SidedataKey(
    "sidedata-key",
    llvm::cl::desc("Specify watermark that has to be passed to a "
                   "function to yield the watermark value"),
    llvm::cl::value_desc("sidedata-watermark-key"));
llvm::cl::opt<std::string> SidedataWatermark::SidedataVal(
    "sidedata-val",
    llvm::cl::desc(
        "Specify watermark value that is generated once the key is present"),
    llvm::cl::value_desc("sidedata-watermark-val"));
std::string SidedataWatermark::sidedataVal;
std::string SidedataWatermark::sidedataKey;
#ifndef LLVM_BYE_LINK_INTO_TOOLS
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getSideDataPluginInfo();
}
#endif
