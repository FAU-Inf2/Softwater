// File: LoopAnalysis.cpp
// For determining suitable loops for watermakr insertion and additional
// necessary Loop-information A loop is suitable, if its number of iterations is
// fixed and obtainable

#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionAliasAnalysis.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include <map>

using namespace llvm;
using namespace std;

namespace {

/**
 * @brief Calculates the number of iterations (= SmallConstantTripCount) of a
 * given loop using ScalarEvolution
 * @param L Loop
 * @param F Function that contains L
 * @param FAM LLVM's FunctionAnalysisManager
 * @return number of iterations, if fixed and obtainable > 0
 *         else: 0
 */
int getLoopIterations(Loop *L, Function *F, FunctionAnalysisManager &FAM) {
  ScalarEvolution &SE = FAM.getResult<ScalarEvolutionAnalysis>(*F);
  unsigned int sctc = SE.getSmallConstantTripCount(L);
  return sctc;
}

/**
 * @brief Checks if the given Loop is an outermost Loop
 * @param L Loop
 * @return true if L is an outermost loop, else false
 */
bool isOuterLoop(Loop *L) { return L->getParentLoop() == nullptr; }

/**
 * @brief Get the Debug Location of the Beginning of the Loop
 * @param L Loop
 * @return line number of beginning of loop L
 *         else: 0
 */
unsigned int getLoopBeginLine(Loop *L) {
  for (const BasicBlock *BB : L->getBlocks()) {
    for (const Instruction &I : *BB) {
      if (auto *LoopID = I.getMetadata("llvm.loop")) {
        if (const DebugLoc DL = I.getDebugLoc()) {
          // If loop metadata is available, obtain the line number of the loop
          // begin.
          return DL->getLine();
        }
      }
    }
  }
  errs() << "Loop Begin not found...\n";
  return 0; // Return 0 if loop metadata or debug info is not found.
}

/**
 * @brief Goes through Each loop in the given Module and returns it, if it is
 * suitable for watermark insertion
 * @param M Module
 * @param FAM LLVM's FunctionAnalysisManager
 * @return map of all suitable Loops and thit corresponding Function
 */
map<Loop *, Function *> getSuitableLoops(Module &M,
                                         FunctionAnalysisManager &FAM) {

  vector<MDNode *> loop_ids;
  map<Loop *, Function *> suitable_loops;

  for (auto &F : M) {

    // Skip Function declarations (printf, rand, etc.)
    auto isDeclaration = F.isDeclaration();
    if (isDeclaration) {
      continue;
    }

    LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);

    if (not LI.empty()) {

      for (auto &L : LI.getLoopsInPreorder()) {

        // Check if Loop is Rotated -> necessary for obtaining
        // SmallConstantTripCount Pass LoopRotate executes LoopSimplify (should
        // be executed in clang -O1)
        bool rotated = L->isRotatedForm();
        if (not rotated) {
          errs() << "Loop not in Rotated Form -> skipping loop...\n";
          continue;
        }

        /*
         Get Trip Count == The number of times the loop iterates before it
         terminates. The variable that counts iterations is the trip counter.
         '0' is used to represent an unknown or non-constant trip count.
         Note that a trip count is simply one more than the backedge taken count
         for the loop. Calculation of the Trip Count is conservative: if breaks
         or continues etc. inside of a loop can not be calculated by
         ScalarEvolution, it will not return the Trip Count.
        */
        unsigned int sctc = getLoopIterations(L, &F, FAM);
        // skip loop if no trip count obtainable
        if (sctc == 0) {
          continue;
        }

        // Use MDNode for identifying loops that are called multiple times
        MDNode *loop_id = L->getLoopID();
        // Count the occurrences of the target value in list_ids
        int cnt = count(loop_ids.begin(), loop_ids.end(), loop_id);
        // Only add new loops
        if (cnt == 0) {
          loop_ids.push_back(loop_id);
          suitable_loops[L] = &F;
        }
      } // END FOR Loop in LI
    } // END IF LI.empty()
  } // END FOR F in M

  return suitable_loops;
}

/**
 * @brief Prints all found suitable loops with their corresponding itertions and
 * containing function
 * @param suitable_loops possible loops for watermark insertion
 * @param FAM LLVM's FunctionAnalysisManager
 */
void printSuitableLoops(map<Loop *, Function *> suitable_loops,
                        FunctionAnalysisManager &FAM) {
  errs() << suitable_loops.size()
         << " loop(s) found for embedding Watermark:\n";
  map<Loop *, Function *>::iterator it = suitable_loops.begin();
  while (it != suitable_loops.end()) {
    auto &L = it->first;
    auto &F = it->second;
    ScalarEvolution &SE = FAM.getResult<ScalarEvolutionAnalysis>(*F);
    errs() << " -> Loop " << L->getLoopID() << " in Function " << F->getName()
           << " has " << SE.getSmallConstantTripCount(L) << " iterations\n";
    ++it;
  }
  errs() << "\n";
}

} // END Namespace
