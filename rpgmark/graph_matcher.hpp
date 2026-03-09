/**
 * Implements a mapping of RPG noes -> Call graph nodes s.t. no distinction
 * between "real calls" and "watermark calls" is necessary, s.t. the number of
 * embedded opaque predicates remains minimal
 */
#include "rpg.hpp"
#include <llvm/Analysis/CallGraph.h>
#include <llvm/IR/Function.h>
#include <vector>
namespace GraphMatcher {
/**
 * Assigns to each rpg node a Function of the CallGraph. A function F at index i
 * in the return vector assigns RPG node i to function F.
 */
std::vector<llvm::Function *> match(llvm::CallGraph &cg, RPG &rpg);
/**
 * For each node which has no function assigned to it, generates a new function by copying an existing one.
 */
void createMissingFunctions(llvm::Module& m, std::vector<llvm::Function *>& match);
} // namespace GraphMatcher
