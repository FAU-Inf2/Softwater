#include "graph_matcher.hpp"
#include "rpg.hpp"
#include "sip.hpp"
#include <fstream>
#include <llvm/Analysis/CallGraph.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/PassManager.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Passes/PassBuilder.h>
#include <llvm/Passes/PassPlugin.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/raw_ostream.h>
#include <unordered_set>
using namespace llvm;
using namespace std;
cl::opt<std::string> message(
    "rpg-message",
    cl::desc("Specify the watermark that RPGMark embeds into the call graph"),
    cl::value_desc("rpg-watermark-message"));
cl::opt<std::string>
    keyfile("rpg-keyfile",
            cl::desc("Specify the path to the keyfile RPGMark should generate"),
            cl::value_desc("rpg-watermark-keyfile-path"));
struct RPGMark : public PassInfoMixin<RPGMark> {
  static bool isRequired() { return true; }
  static void exportKeyFile(string file, vector<Function *> &mapping) {
    std::ofstream sigfile(file);
    for (Function *f : mapping) {
      sigfile << f->getName().str() << "\n";
    }
    sigfile.close();
  }
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
    RPG rpg = RPG::from_sip(SIP::encode(message.getValue()));
    CallGraph *cg = new CallGraph(M); // we update it later
    {
      vector<Function *> mapping = GraphMatcher::match(*cg, rpg);
      int num_nonnull = 0;
      for (Function *f : mapping)
        if (f)
          num_nonnull++;
      int total_funs = 0;
      for (Function &f : M)
        if (f.hasExactDefinition())
          total_funs++;
      GraphMatcher::createMissingFunctions(M, mapping);
      delete cg;
      cg = new CallGraph(M);
      GraphMatcher::createMissingEdges(M, *cg, rpg, mapping);
      llvm::errs() << "Mapped " << num_nonnull << " / " << mapping.size()
                   << " with " << total_funs << " functions\n";
      llvm::errs() << "embedded watermark 1 times\n";
      if (!keyfile.empty())
        exportKeyFile(keyfile, mapping);
    }
    // as additional calls don't hurt we collect all never-called functions and
    // call them in a reachable function s.t. they are not removed
    {
      Function *main = M.getFunction("main");
      unordered_set<Function *> reachable;
      reachable.insert(main);
      list<Function *> to_visit{main};
      while (!to_visit.empty()) {
        Function *f = to_visit.front();
        to_visit.pop_front();
        for (auto &[_, o] : *(*cg)[f]) {
          Function *callee = o->getFunction();
          if (reachable.find(callee) == reachable.end()) {
            to_visit.push_back(callee);
            reachable.insert(callee);
          }
        }
      }
      for (Function &f : M) {
        if (f.hasExactDefinition() && reachable.find(&f) == reachable.end()) {
          // random reachable
          Function *caller = nullptr;
          while (true) {
            auto rit = reachable.begin();
            int ridx = rand() % reachable.size();
            for (int i = 0; i < ridx; i++)
              rit++;
            caller = *rit;
            if (caller && caller->hasExactDefinition())
              break;
          }
          // add opaque call
          GraphMatcher::insertOpaqueCall(caller, &f);
          // update Call Graph
          delete cg;
          cg = new CallGraph(M);
        }
      }
    }
    delete cg;
    verifyModule(M, &errs());
    return PreservedAnalyses::none();
  }
};

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "rpgmark-watermark", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerOptimizerLastEPCallback(
                [](ModulePassManager &MPM, auto, auto) {
                  MPM.addPass(RPGMark());
                  return true;
                });
            // this one is needed for clang
          }};
}
