#include "graph_matcher.hpp"
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
void GraphMatcher::createMissingFunctions(llvm::Module& m, std::vector<llvm::Function *>& match) {
  for (int i = 0; i < match.size(); i++) {
    if (!match[i]) {
      // select a random function
      int selind = rand() % m.size();
      auto it = m.begin();
      for (int i = 0; i < selind; i++) it++;
      Function& toclone = *it;
      ValueToValueMapTy v2vm;
      Function* cloned = llvm::CloneFunction(&toclone, v2vm, nullptr);
      match[i] = cloned;
    }
  }
}

