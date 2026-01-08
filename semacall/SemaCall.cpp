#include "AtoiPatcher.hpp"
#include "GetsPatcher.hpp"
#include "TimePatcher.hpp"
#include <llvm/IR/PassManager.h>
#include <llvm/Passes/PassPlugin.h>
struct SemaCall : public llvm::PassInfoMixin<SemaCall> {
  std::unordered_map<std::string, FunctionPatcher *> functionPatcher;
  SemaCall()
      : functionPatcher({{"", nullptr},
                         {"atoi", new AtoiPatcher()},
                         {"atol", new AtoiPatcher()},
                         {"strtol", new AtoiPatcher()},
                         {"__isoc23_strtol", new AtoiPatcher()},
                         {"xstrtol", new AtoiPatcher()},
                         {"gets", new GetsPatcher()},
                         {"fgets", new GetsPatcher()},
                         {"fread", new GetsPatcher()},
                         {"getline", new GetsPatcher()},
                         {"time", new TimePatcher()},
                         {"gettimeofday", new TimePatcher()}}) {
    srand((unsigned)time(NULL));
  }

  static bool isRequired() { return true; }

  llvm::PreservedAnalyses run(llvm::Function &F,
                              llvm::FunctionAnalysisManager &) {
    using namespace llvm;
    for (auto &bb : F) {
      for (auto &ins : bb) {
        if (isa<CallInst>(ins)) {
          CallInst &call = (CallInst &)ins;
          Function *f = call.getCalledFunction();
          if (f && functionPatcher.count(f->getName().str()) != 0) {
            functionPatcher[f->getName().str()]->patchInstruction(F, call);
          } else if (f) {
          }
        }
      }
    }
    return PreservedAnalyses::none();
  }
};
using namespace llvm;
using namespace std;

llvm::cl::opt<std::string> AtoiPatcher::AtoiWaterMarkKey(
    "atoi-key",
    llvm::cl::desc(
        "Specify the watermark Key that has to be passed to atoi/atol "
        "invocations to trigger the generation of the atoi-value"),
    llvm::cl::value_desc("atoi-watermark-key"));
llvm::cl::opt<std::string> AtoiPatcher::AtoiWaterMarkVal(
    "atoi-val",
    llvm::cl::desc("Specify the watermark value that will be generated once "
                   "atoi-key is passed to an atoi/atol invocation"),
    llvm::cl::value_desc("atoi-watermark-value"));
llvm::cl::opt<std::string> GetsPatcher::GetsWaterMarkKey(
    "gets-key",
    llvm::cl::desc(
        "Specify the watermark Key that has to be passed to gets/fgets "
        "invocations to trigger the generation of the gets-value"),
    llvm::cl::value_desc("gets-watermark-key"));
llvm::cl::opt<std::string> GetsPatcher::GetsWaterMarkVal(
    "gets-val",
    llvm::cl::desc("Specify the watermark value that will be generated once "
                   "gets-key is passed to an gets/fgets invocation"),
    llvm::cl::value_desc("gets-watermark-value"));
llvm::cl::opt<long> TimePatcher::TimeWaterMarkKey(
    "time-key",
    llvm::cl::desc("Specify the watermark time key in seconds since the epoch "
                   "for which invocations of time() will be tested"),
    llvm::cl::value_desc("time-watermark-key"));
llvm::cl::opt<std::string> TimePatcher::TimeWaterMarkVal(
    "time-val",
    llvm::cl::desc("Specify the watermark value that will be generated once "
                   "a time() invocation returns the expected key."),
    llvm::cl::value_desc("time-watermark-value"));
llvm::PassPluginLibraryInfo getSemaCallPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "semacall-watermark", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](auto, ModulePassManager &MPM, auto) {
                  MPM.addPass(createModuleToFunctionPassAdaptor(SemaCall()));
                  return true;
                });
            // this one is needed for clang
            PB.registerPipelineEarlySimplificationEPCallback(
                [](ModulePassManager &MPM, auto) {
                  MPM.addPass(createModuleToFunctionPassAdaptor(SemaCall()));
                });
          }};
}
std::string AtoiPatcher::atoiWaterMarkVal;
std::string AtoiPatcher::atoiWaterMarkKey;
std::string GetsPatcher::getsWaterMarkVal;
std::string GetsPatcher::getsWaterMarkKey;
std::string TimePatcher::timeWaterMarkVal;
long TimePatcher::timeWaterMarkKey;
#ifndef LLVM_BYE_LINK_INTO_TOOLS
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getSemaCallPluginInfo();
}
#endif
