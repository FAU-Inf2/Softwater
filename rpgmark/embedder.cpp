#include "graph_matcher.hpp"
#include "rpg.hpp"
#include "sip.hpp"
#include <llvm/Analysis/CallGraph.h>
#include <llvm/IR/PassManager.h>
#include <llvm/Passes/PassBuilder.h>
#include <llvm/Passes/PassPlugin.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/raw_ostream.h>
using namespace llvm;
using namespace std;
cl::opt<std::string> message(
    "rpg-message",
    cl::desc("Specify the watermark that RPGMark embeds into the call graph"),
    cl::value_desc("rpg-watermark-message"));
struct RPGMark : public PassInfoMixin<RPGMark> {
  static bool isRequired() { return true; }

  PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
    RPG rpg = RPG::from_sip(SIP::encode(message.getValue()));
    CallGraph cg(M);
    vector<Function *> mapping = GraphMatcher::match(cg, rpg);
    int num_nonnull = 0;
    for (Function *f : mapping)
      if (f)
        num_nonnull++;
    int total_funs = 0;
    for (Function &f : M)
      if (f.hasExactDefinition())
        total_funs++;
    GraphMatcher::createMissingFunctions(M, mapping);
    // TODO add missing nodes
    llvm::errs() << "Mapped " << num_nonnull << " / " << mapping.size()
                 << " with " << total_funs << " functions\n";
    return PreservedAnalyses::none();
  }
};

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return {
      LLVM_PLUGIN_API_VERSION, "semacall-watermark", LLVM_VERSION_STRING,
      [](PassBuilder &PB) {
        PB.registerPipelineParsingCallback(
            [](auto, ModulePassManager &MPM, auto) {
              MPM.addPass(RPGMark());
              return true;
            });
        // this one is needed for clang
        PB.registerPipelineEarlySimplificationEPCallback(
            [](ModulePassManager &MPM, auto, auto) { MPM.addPass(RPGMark()); });
      }};
}
