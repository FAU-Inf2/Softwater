// File: WatermarkEmbedderPass.cpp
// This file handles the complete Watermarking process.
// It outsources code for different functionalities in the following files:
// LoopAnalysis.cpp: for obtaining analysis and and Loop Information (i.e.
// obtaining suitable loops) LoopInsertion: for handling all insertion processes
// and IR-building WatermarkGenerator: help for generating the watermark
// (calculations CRT)

//  Function: createKeyTxt
// Generates the watermark key (.txt file) out of the generation/insertion
// results

//  Function: run
// Entry point of the program/pass
// - gets suitable loops
// - selects a subset of loops for use
// - generates Watermark (CRT)
// - inserts Watermark in each selected loop
// - creates Watermark-Key out of the results

#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "includes/LoopAnalysis.cpp"
#include "includes/LoopInsertion.cpp"
#include "includes/WatermarkGenerator.cpp"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionAliasAnalysis.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/Path.h"
#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <ctime>
#include <fstream>
#include <iostream>
#include <llvm/IR/PassManager.h>
#include <llvm/Transforms/Scalar/LoopRotation.h>
#include <set>
#include <string>
#include <vector>

using namespace llvm;
using namespace std;

namespace {

/**
 * @brief Writes key.txt file from the obtaines watermark-embedding results
 * @param keys vector of insertion-points <line1, column1, iterations, wm_name,
 * expected_wm_value, line2, column2>
 */
void createKeyTxt(
    std::vector<std::tuple<int, int, int, std::string, int>> keys) {

  std::ofstream outFile("key.txt");

  if (outFile.is_open()) {
    for (const auto &key : keys) {
      outFile << std::get<0>(key) << ' ' << std::get<1>(key) << ' '
              << std::get<2>(key) << ' ' << std::get<3>(key) << ' '
              << std::get<4>(key) << '\n';
    }
    outFile.close();
    errs() << "Data written to key.txt successfully." << endl << endl;
  } else {
    errs() << "ABORT: Unable to open file for writing." << endl;
    exit(1);
  }
}

/**
 * @brief generate x different random strings of the form "{letter}{digit}"
 * @param x amount of strings to generate
 * @return vector of generated strings
 */
std::vector<std::string> generateRandomStrings(int x) {
  std::set<std::string> uniqueStrings;
  std::vector<std::string> strings;

  // Seed the random number generator
  std::srand(std::time(0));

  while (uniqueStrings.size() < x) {
    char letter = 'a' + std::rand() % 26; // Random letter from 'a' to 'z'
    char digit = '0' + std::rand() % 10;  // Random digit from '0' to '9'
    std::string str = std::string(1, letter) + digit;

    // Insert the string into the set to ensure uniqueness
    if (uniqueStrings.insert(str).second) {
      strings.push_back(str);
    }
  }

  return strings;
}

/*
 Pass that handles the complete embedding process of the Watermark into Loops of
 the given Module (LLVM IR file)
*/
struct WatermarkEmbedderPass : public PassInfoMixin<WatermarkEmbedderPass> {

  /**
   * @brief Runs the Pass: handles the complete process of watermark embedding
   * @param M Module for embedding (LLVM IR file)
   * @param MAM LLVM's ModuleAnalysisManager
   * @return Success: PreservedAnalyses::none() to indicate that some or all
   * analyses are potentially invalidated Failure: PreservedAnalyses::all()
   */
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM) {

    // Get Function Analysis Manager (to obtain LoopInfo and ScalarEvolution)
    FunctionAnalysisManager &FAM =
        MAM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();

    // Print source file name
    for (DICompileUnit *CU : M.debug_compile_units()) {
      // Extract the filename from the full path
      SmallString<128> FilePath(CU->getFilename());
      sys::path::remove_dots(FilePath, true);
      StringRef FileName = sys::path::filename(FilePath);

      // Print the filename
      errs() << "Source file: " << FileName << "\n";
    }

    // Get suitable Loops (from LoopAnalysis.cpp)
    map<Loop *, Function *> suitable_loops = getSuitableLoops(M, FAM);

    // Check if suitable loops exist else abort
    if (suitable_loops.empty()) {
      errs() << "Module has no Loops! Watermark not embeddable!" << endl;
      // End Program with no change to LLVM IR
      return PreservedAnalyses::all();
    } else {
      printSuitableLoops(suitable_loops, FAM);
    }

    // Sort Loops first by inner/outer and then seperately by trip ount
    // ascending Convert map to vector of pairs
    vector<pair<Loop *, Function *>> sorted_loops(suitable_loops.begin(),
                                                  suitable_loops.end());
    // Sort the vector b
    std::sort(sorted_loops.begin(), sorted_loops.end(),
              [&](const std::pair<Loop *, Function *> &a,
                  const std::pair<Loop *, Function *> &b) {
                bool isOuterA = isOuterLoop(a.first);
                bool isOuterB = isOuterLoop(b.first);
                if (isOuterA != isOuterB) {
                  return isOuterA > isOuterB; // Outer loops first
                }
                // Both loops are in the same category (both outer or both
                // subloops), sort by trip count
                return getLoopIterations(a.first, a.second, FAM) <
                       getLoopIterations(b.first, b.second, FAM);
              });

    // Calculate number of insertion points
    int max_insertions = suitable_loops.size();
    // Set limit of 10 insertion points
    if (max_insertions > 10) {
      max_insertions = 10;
    }
    errs() << max_insertions << " insertion point(s)" << endl << endl;
    ;

    // Generate Watermark Variables
    Watermark watermark = generateWatermark(max_insertions);

    // get the first [max_insertions] loops of sorted_loops
    vector<Loop *> selected_loops;
    for (int i = 0; i < max_insertions && i < sorted_loops.size(); ++i) {
      selected_loops.push_back(sorted_loops[i].first);
    }
    // Select first [max_insertions] loops as a map
    map<Loop *, Function *> loops;
    for (Loop *loop : selected_loops) {
      auto it = suitable_loops.find(loop);
      if (it != suitable_loops.end()) {
        loops.insert(*it);
      }
    }

    // generate random variable names of the form {letter}{digit} (e.g. a2, w3,
    // z9, ...)
    vector<string> wm_names = generateRandomStrings(max_insertions);
    errs() << "Generated variables: ";
    for (const string &str : wm_names) {
      errs() << str << " ";
    }
    errs() << endl;

    // Insert the watermark parts
    std::vector<std::tuple<int, int, int, std::string, int>> keys;
    int wm_counter = 0;
    for (const auto &pair : loops) {
      Loop *loop = pair.first;
      Function *func = pair.second;

      string wm_name = wm_names[wm_counter];

      int b = 0;
      // Check if the wm_counter is within the bounds of the map n_to_b
      if (wm_counter >= 0 && wm_counter < watermark.n_to_b.size()) {
        // Use an iterator to access the element at the given position
        auto it = watermark.n_to_b.begin();
        std::advance(it, wm_counter);

        // Now 'it' points to the map entry at the desired position
        b = it->second;
      } else {
        std::cout << "Position out of bounds. Couldn't get b." << std::endl;
      }

      // get total Loop iterations
      int loop_iterations = getLoopIterations(loop, func, FAM);

      // get iteration of final watermark result/value
      int iterations = getIntSmallerOrEqual(loop_iterations);

      // Insert Watermark at Insertion Point
      DILocation *breakpoint_location = insertWMInLoop(
          b, iterations, loop, *func, FAM, M, wm_counter, wm_name);

      keys.push_back(std::make_tuple(breakpoint_location->getLine(),
                                     breakpoint_location->getColumn(),
                                     iterations, wm_name, b));

      wm_counter = wm_counter + 1;
    } // END for loop in loops

    // write key.txt file
    createKeyTxt(keys);

    // changes to the IR -> Analyses are potentially invalidated -> none()
    return PreservedAnalyses::none();
  }; // END run(Module)
}; // END STRUCT ForLoopAnalysis
} // END namespace

// Add Pass to OPT
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "WatermarkEmbedderPass", "v0.1",
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "wm-embedder") {
                    MPM.addPass(WatermarkEmbedderPass());
                    return true;
                  }
                  return false;
                });
            PB.registerPipelineEarlySimplificationEPCallback(
                [](ModulePassManager &MPM, auto, auto) {
                  MPM.addPass(
                      createModuleToFunctionPassAdaptor(LoopSimplifyPass()));
                  MPM.addPass(createModuleToFunctionPassAdaptor(
                      createFunctionToLoopPassAdaptor(LoopRotatePass())));
                  MPM.addPass(WatermarkEmbedderPass());
                  return true;
                });
          }};
}
