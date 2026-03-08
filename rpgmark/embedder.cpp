#include <llvm/IR/PassManager.h>
#include <llvm/Passes/PassBuilder.h>
#include <llvm/Passes/PassPlugin.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/raw_ostream.h>
using namespace llvm;
using namespace std;
struct RPGMark : public PassInfoMixin<RPGMark> {
  static bool isRequired() { return true; }

  PreservedAnalyses run(Function &F, FunctionAnalysisManager &) {
    llvm::errs() << "Hello " << F.getName() << "\n";
    return PreservedAnalyses::none();
  }
};

cl::opt<std::string> message(
    "rpg-message",
    cl::desc("Specify the watermark that RPGMark embeds into the call graph"),
    cl::value_desc("rpg-watermark-message"));

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "semacall-watermark", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](auto, ModulePassManager &MPM, auto) {
                  MPM.addPass(createModuleToFunctionPassAdaptor(RPGMark()));
                  return true;
                });
            // this one is needed for clang
            PB.registerPipelineEarlySimplificationEPCallback(
                [](ModulePassManager &MPM, auto, auto) {
                  MPM.addPass(createModuleToFunctionPassAdaptor(RPGMark()));
                });
          }};
}
