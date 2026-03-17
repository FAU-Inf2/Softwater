#include "graph_matcher.hpp"
#include <llvm/Analysis/CallGraph.h>
#include <llvm/IR/Attributes.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Transforms/Utils/Cloning.h>
#include <queue>
#include <stdexcept>
#include <unordered_set>
using namespace std;
using namespace llvm;
vector<Function *> GraphMatcher::match(CallGraph &cg, RPG &rpg) {
  // we can only add nodes in the call graph, so a rpg node R can ONLY be
  // assigned to a function F that has only edges to functions whichs
  // corresponding rpg nodes are reachable from R.
  vector<Function *> ass(rpg.adjacency.size(), nullptr);
  unordered_set<Function *>
      already_assigned; // s.t. we dont assign a function 2 times
  vector<unsigned int> indeg(rpg.adjacency.size());  // in-degree
  vector<unsigned int> outdeg(rpg.adjacency.size()); // in-degree
  for (int i = 0; i < rpg.adjacency.size(); i++) {
    int ind = 0, outd = 0;
    for (int j = 0; j < rpg.adjacency.size(); j++) {
      if (rpg.adjacency[i][j])
        outd++;
      if (rpg.adjacency[j][i])
        ind++;
    }
    indeg[i] = ind;
    outdeg[i] = outd;
  }
  // heuristic: map functions with least in-degree first.
  auto cmp = [&indeg](int a, int b) { return indeg[a] > indeg[b]; };
  priority_queue<int, vector<int>, decltype(cmp)> queue(cmp);
  for (int i = 0; i < rpg.adjacency.size(); i++)
    queue.push(i);
  while (!queue.empty()) {
    // choose next node and try to map it to a function with as many incoming
    // edges already present as possible
    int curr = queue.top();
    queue.pop();
    // find already set incoming edges (incoming nodes that already have a
    // function assigned to them)
    std::unordered_set<Function *> incoming_cur;
    // find already set outgoing edges (outgoing nodes that already have a
    // function assigned to them)
    std::unordered_set<Function *> outgoing_cur;
    for (int j = 0; j < rpg.adjacency.size(); j++) {
      if (rpg.adjacency[j][curr] && ass[j])
        incoming_cur.insert(ass[j]);
      if (rpg.adjacency[curr][j] && ass[j])
        outgoing_cur.insert(ass[j]);
    }
    // find function that shares most of these edges
    int min_wrong_in = 0,
        min_wrong_out =
            0; // sums of most missing or extranous ingoing and outgoing edges
    Function *minimum = nullptr;
    for (Function &f : cg.getModule()) {
      if (f.hasExactDefinition() &&
          already_assigned.find(&f) == already_assigned.end()) {
        if (f.hasFnAttribute(Attribute::AlwaysInline)) {
          f.removeFnAttr(Attribute::AlwaysInline);
        }
        f.addFnAttr(Attribute::NoInline);
        int wrong_in = 0, wrong_out = 0;
        CallGraphNode *node = cg[&f];
        unordered_set<Function *> incoming_func;
        unordered_set<Function *> outgoing_func;
        for (auto [_, succ] : *node) {
          outgoing_func.insert(succ->getFunction());
        }
        for (Function &p : cg.getModule()) {
          if (p.hasFnAttribute(Attribute::AlwaysInline)) {
            p.removeFnAttr(Attribute::AlwaysInline);
          }
          p.addFnAttr(Attribute::NoInline);
          for (auto [_, p_succ] : *cg[&p]) {
            if (p_succ->getFunction() == &f)
              incoming_func.insert(&p);
          }
        }
        for (Function *in : incoming_cur)
          if (incoming_func.find(in) == incoming_func.end())
            wrong_in++;
        for (Function *in : incoming_func)
          if (incoming_cur.find(in) == incoming_cur.end())
            wrong_in++;
        for (Function *out : outgoing_cur)
          if (outgoing_func.find(out) == outgoing_func.end())
            wrong_out++;
        for (Function *out : outgoing_func)
          if (outgoing_cur.find(out) == outgoing_cur.end())
            wrong_out++;
        if (!minimum || min_wrong_in > wrong_in ||
            (min_wrong_in == wrong_in && min_wrong_out > wrong_out)) {
          minimum = &f;
          min_wrong_in = wrong_in;
          min_wrong_out = wrong_out;
        }
      }
    }
    if (minimum)
      already_assigned.insert(minimum);
    ass[curr] = minimum;
  }
  return ass;
}
void GraphMatcher::createMissingFunctions(
    llvm::Module &m, std::vector<llvm::Function *> &match) {
  for (int i = 0; i < match.size(); i++) {
    if (!match[i]) {
      // select a random function
      Function *toclone = nullptr;
      while (true) {
        int selind = rand() % m.size();
        auto it = m.begin();
        for (int i = 1; i < selind; i++)
          it++;
        toclone = &*it;
        if (toclone->hasExactDefinition())
          break;
      }
      ValueToValueMapTy v2vm;
      Function *cloned = llvm::CloneFunction(toclone, v2vm, nullptr);
      if (cloned->hasFnAttribute(Attribute::AlwaysInline)) {
        cloned->removeFnAttr(Attribute::AlwaysInline);
      }
      cloned->addFnAttr(Attribute::NoInline);
      match[i] = cloned;
    }
  }
}

/** Creates a call to callee in a random basic block in caller, protected by a
 * opaque predicate on time */
void GraphMatcher::insertOpaqueCall(Function *caller, Function *callee) {
  // choose random basic block with normal jump
  BasicBlock *orig = &*caller->begin();
  {
    int bbi = rand() % caller->size();
    auto it = caller->begin();
    for (int i = 0; i < bbi; i++) {
      orig = &*(++it);
    }
  }
  // add new block with original instructions (split)
  BasicBlock *split = BasicBlock::Create(caller->getContext(), "split");
  caller->insert(caller->end(), split);
  orig->replaceSuccessorsPhiUsesWith(split);
  {
    // keep phis in original block (orig), split afterwards (to split)
    auto it = orig->begin();
    for (; it != orig->end(); it++) {
      if (!isa<PHINode>(&*it) && !isa<LandingPadInst>(&*it)) {
        break;
      }
    }
    split->splice(split->end(), orig, it, orig->end());
  }
  // add new block with opaque call (opaque)
  BasicBlock *opaque = BasicBlock::Create(caller->getContext(), "opaque");
  caller->insert(caller->end(), opaque);
  {
    IRBuilder<> opaqueBuild(opaque);
    // think of some params
    vector<Value *> opaqueCallParams;
    for (Argument &arg : callee->args()) {
      Type *at = arg.getType();
      opaqueCallParams.push_back(Constant::getNullValue(at));
    }
    opaqueBuild.CreateCall(callee, opaqueCallParams);
    // branch to split
    opaqueBuild.CreateBr(split);
  }
  // add condition for branch in orig
  {
    IRBuilder<> origBuild(orig);
    Module *mod = caller->getParent();
    Type *params[1] = {
        PointerType::get(IntegerType::getInt64Ty(mod->getContext()), 0)};
    FunctionType *fType =
        FunctionType::get(Type::getInt64Ty(mod->getContext()), params, false);
    FunctionCallee timeFunc = mod->getOrInsertFunction("time", fType);
    Value *timeVal =
        origBuild.CreateCall(timeFunc, {Constant::getNullValue(params[0])});
    Value *pred = origBuild.CreateCmp(
        CmpInst::Predicate::ICMP_SGT, timeVal,
        ConstantInt::get(Type::getInt64Ty(mod->getContext()), rand() % 10000));
    origBuild.CreateCondBr(pred, split, opaque);
  }
  if (verifyFunction(*caller, &errs()))
    throw std::runtime_error("");
}

void GraphMatcher::createMissingEdges(llvm::Module &m, CallGraph &cg, RPG &rpg,
                                      std::vector<llvm::Function *> &match) {
  for (int i = 0; i < rpg.adjacency.size(); i++) {
    for (int j = 0; j < rpg.adjacency.size(); j++) {
      if (rpg.adjacency[i][j]) {
        // expect: call from i to j
        Function *fi = match[i];
        Function *fj = match[j];
        bool found = false;
        for (auto &succ_fi : *cg[fi]) {
          if (succ_fi.second->getFunction() == fj) {
            found = true;
            break;
          }
        }
        if (!found) {
          // insert opaque predicate with call to fj in fi
          insertOpaqueCall(fi, fj);
        }
      }
    }
  }
  if (verifyModule(m, &errs()))
    throw std::runtime_error("");
}
