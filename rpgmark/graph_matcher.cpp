#include "graph_matcher.hpp"
#include <llvm/Analysis/CallGraph.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Module.h>
#include <llvm/Transforms/Utils/Cloning.h>
#include <queue>
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
        int wrong_in = 0, wrong_out = 0;
        CallGraphNode *node = cg[&f];
        unordered_set<Function *> incoming_func;
        unordered_set<Function *> outgoing_func;
        for (auto [_, succ] : *node) {
          outgoing_func.insert(succ->getFunction());
        }
        for (Function &p : cg.getModule()) {
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
      int selind = rand() % m.size();
      auto it = m.begin();
      for (int i = 0; i < selind; i++)
        it++;
      Function &toclone = *it;
      ValueToValueMapTy v2vm;
      Function *cloned = llvm::CloneFunction(&toclone, v2vm, nullptr);
      match[i] = cloned;
    }
  }
}

/**
 * For when the instruction from a basic block is transplanted from the
 * original block `orig` to a new block `jump`. Adapts the PHI nodes for all
 * other basic blocks s.t. they point to the new `jump` block if they had
 * `orig` as predecessor.
 */
static void adaptPHINodes(llvm::Instruction *lastInstr, llvm::BasicBlock *orig,
                          llvm::BasicBlock *jump) {
  using namespace llvm;
  if (isa<BranchInst>(lastInstr)) {
    BranchInst *br = (BranchInst *)lastInstr;
    for (uint i = 0; i < br->getNumSuccessors(); i++) {
      BasicBlock *succ = br->getSuccessor(i);
      for (llvm::Instruction &instr : *succ) {
        if (isa<PHINode>(instr)) {
          PHINode &phi = (PHINode &)(instr);
          for (uint j = 0; j < phi.getNumIncomingValues(); j++) {
            if (phi.getIncomingBlock(j) == orig) {
              phi.setIncomingBlock(j, jump);
            }
          }
        }
      }
    }
  } else if (isa<SwitchInst>(lastInstr)) {
    SwitchInst *sw = (SwitchInst *)lastInstr;
    std::vector<BasicBlock *> targets = {sw->getDefaultDest()};
    for (auto c : sw->cases())
      targets.push_back(c.getCaseSuccessor());
    for (BasicBlock *succ : targets) {
      for (llvm::Instruction &instr : *succ) {
        if (isa<PHINode>(instr)) {
          PHINode &phi = (PHINode &)(instr);
          for (uint j = 0; j < phi.getNumIncomingValues(); j++) {
            if (phi.getIncomingBlock(j) == orig) {
              phi.setIncomingBlock(j, jump);
            }
          }
        }
      }
    }
  }
}
/** Creates a call to callee in a random basic block in caller, protected by a
 * opaque predicate on time */
static void insertOpaqueCall(Function *caller, Function *callee) {
  // choose random basic block
  BasicBlock *orig = &*caller->begin();
  {
    int bbi = rand() % caller->size();
    auto it = caller->begin();
    for (int i = 0; i < bbi; i++) {
      orig = &*(++it);
    }
  }
  // add new block with original instructions (split)
  BasicBlock *split = BasicBlock::Create(caller->getContext());
  {
    // keep phis in original block (orig), split afterwards (to split)
    auto it = orig->begin();
    for (; it != orig->end(); it++) {
      if (!isa<PHINode>(&*it)) {
        break;
      }
    }
    split->splice(split->end(), orig, it);
  }
  // add new block with opaque call (opaque)
  BasicBlock *opaque = BasicBlock::Create(caller->getContext());
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
    Value *timeVal = origBuild.CreateCall(timeFunc, {nullptr});
    Value *pred = origBuild.CreateCmp(
        CmpInst::Predicate::ICMP_SGT, timeVal,
        ConstantInt::get(Type::getInt64Ty(mod->getContext()), rand() % 10000));
    origBuild.CreateCondBr(pred, split, opaque);
  }
  // adapt phi nodes: all original successors of orig have as predecessor now
  // split
  adaptPHINodes(&*--split->end(), orig, split);
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
}
