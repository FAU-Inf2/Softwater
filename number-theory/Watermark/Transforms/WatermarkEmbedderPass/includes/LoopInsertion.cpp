// FILE: LoopInsertion.cpp
// Handles all IR Building for inserting the watermark(-parts) into the LLVM
// Code
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionAliasAnalysis.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DIBuilder.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/MDBuilder.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include <cassert>
#include <iostream>
#include <random>

using namespace llvm;

namespace {
auto endl = "\n";
/**
 * @brief Generate a dummy value for each LLVM Data-Type
 * @param Ty Data-Type
 * @param Context LLVM Context
 * @return Value for the specified type
 */
Value *getDummyValue(Type *Ty, LLVMContext &Context) {
  if (Ty->isIntegerTy()) {
    return ConstantInt::get(Ty, 0); // Dummy integer value
  } else if (Ty->isFloatingPointTy()) {
    return ConstantFP::get(Ty, 0.0); // Dummy floating point value
  } else if (Ty->isPointerTy()) {
    return ConstantPointerNull::get(
        cast<PointerType>(Ty)); // Dummy null pointer
  } else if (Ty->isVectorTy()) {
    return UndefValue::get(Ty); // Dummy vector value
  } else if (Ty->isStructTy()) {
    return UndefValue::get(Ty); // Dummy struct value
  } else if (Ty->isArrayTy()) {
    return UndefValue::get(Ty); // Dummy array value
  } else {
    // Default case for unsupported types
    return UndefValue::get(Ty);
  }
}

// Generate an int smaller or equal to i, but greater than 0
int getIntSmallerOrEqual(int i) {
  std::random_device rd;
  std::mt19937 gen(rd());
  std::uniform_int_distribution<int> dist(1, i);
  return dist(gen);
}

DIScope *getScopeOfInstruction(Instruction *I) {
  // Iterate over instructions in the basic block.
  if (auto DebugLoc = I->getDebugLoc()) {
    // If debug information is available for the instruction,
    // return the scope.
    return DebugLoc->getScope();
  }
  return nullptr; // Return nullptr if debug info is not found.
}

DIFile *getDIFileFromScope(DIScope *Scope) {
  if (auto *File = dyn_cast_or_null<DIFile>(Scope))
    return File;
  // If the scope is not a file, traverse the scope chain upwards
  // until a file is found.
  while (Scope) {
    if (auto *Subprogram = dyn_cast<DISubprogram>(Scope)) {
      // If the scope is a subprogram, check its file.
      return Subprogram->getFile();
    }
    // Move to the parent scope.
    Scope = Scope->getScope();
  }
  return nullptr; // Return nullptr if debug info is not found.
}

/*
 Inserts a int variable at the beginning of a BasicBloc
 Alloc & Store
 */
Instruction *insertIntVar(int val, int counter, DIBuilder &DIB, Function *F,
                          std::string name) {

  // Get the first block (entry block) of the function
  BasicBlock &EntryBlockFunc = F->getEntryBlock();
  // Never add anything before phi nodes
  // Get first non PHI instruction of the entry block
  Instruction *beginFunc = nullptr;
  for (auto &I : EntryBlockFunc) {
    if (!isa<PHINode>(&I)) {
      beginFunc = &I;
      break;
    }
  }

  Type *intType = Type::getInt32Ty(EntryBlockFunc.getContext());
  errs() << "Insert alloc %WM" << " before instruction: ";
  beginFunc->print(errs());
  errs() << "\n";

  auto *allo = new AllocaInst(intType, 0, "", beginFunc);

  LLVMContext &Context = F->getContext();
  DIType *Int32Type = DIB.createBasicType("int", 32, dwarf::DW_ATE_signed);
  DILocalVariable *Var =
      DIB.createAutoVariable(F->getSubprogram(),            // Scope
                             name,                          // Variable name
                             F->getSubprogram()->getFile(), // File
                             F->getSubprogram()->getLine(), // Line
                             Int32Type                      // Type
      );
  DILocation *DebugLoc = DILocation::get(Context, F->getSubprogram()->getLine(),
                                         0, F->getSubprogram());

  // Create the dbg.declare intrinsic
  Metadata *Expr = DIB.createExpression();
  DIB.insertDeclare(allo, Var, cast<DIExpression>(Expr), DebugLoc,
                    allo->getNextNode());

  // Finalize the DIBuilder
  DIB.finalize();

  // Insert store after alloc
  IRBuilder<> builder(&EntryBlockFunc);
  Value *constant = builder.getInt32(val);
  errs() << "Insert Store %WM = " << val << " after alloc" << endl << endl;
  auto *store = new StoreInst(constant, allo, allo->getNextNode());

  return allo;
}

/*
 Insert a Add Instruction of a variable + value before an instruction
 */
Instruction *insertAdd(Instruction *var, int val, Instruction *I, int counter) {
  IRBuilder<> builder(I);
  Type *intType = Type::getInt32Ty(I->getContext());
  Value *constant = builder.getInt32(val);

  errs() << "Insert Load WM in Latch" << endl;
  auto *load = builder.CreateLoad(intType, var, "");

  errs() << "Insert Add WM += " << val << " after Load WM" << endl;
  Instruction *Add =
      BinaryOperator::Create(Instruction::Add, load, constant, "");
  Add->insertBefore(I);

  errs() << "Insert Store after Add" << endl;
  auto *store = new StoreInst(Add, var, I);

  return store;
}

/*
 Insert a Sub Instruction of a variable + value before an instruction
 */
Instruction *insertSub(Instruction *var, int val, Instruction *I, int counter) {
  IRBuilder<> builder(I);
  Type *intType = Type::getInt32Ty(I->getContext());
  Value *constant = builder.getInt32(val);

  errs() << "Insert Load WM in Latch" << endl;
  auto *load = builder.CreateLoad(intType, var, "");

  errs() << "Insert SUB WM -= " << val << " after Load WM" << endl;
  Instruction *Sub =
      BinaryOperator::Create(Instruction::Sub, load, constant, "");
  Sub->insertBefore(I);

  errs() << "Insert Store after Sub" << endl;
  auto *store = new StoreInst(Sub, var, I);

  return store;
}

int divideWithRoundToLower(int dividend, int divisor) {
  if (divisor == 0) {
    std::cerr << "Error: Division by zero" << std::endl;
    return 0;
  }

  // Calculate the division result
  int result = dividend / divisor;

  // If the result is negative and there's a remainder, decrement the result by
  // 1
  if ((dividend < 0 || divisor < 0) && (dividend % divisor != 0))
    result--;

  return result;
}

// Handles the process of adding the watermark into the loop
// Insertion of Variable (Preheader)
// Insertion of erithmetic (Latch)
// Insertion of debugging information
// Insertion of opaque predicate
DILocation *insertWMInLoop(int b, int iteration, Loop *L, Function &F,
                           FunctionAnalysisManager &FAM, Module &M, int counter,
                           std::string var_name) {

  errs() << "INSERTION:" << endl;
  errs() << "---------------------------" << endl;
  errs() << "b=" << b << " in loop: " << L->getLoopID() << " at the "
         << iteration << "th iteration" << endl;

  int r = 0;
  int x0 = 0;
  bool add_method = true;
  // if b < k: r can be randomly big, lets say <= 94
  if (b < iteration) {
    add_method = false;
    errs() << "Method: -=  :  ";
    r = getIntSmallerOrEqual(100);
    x0 = b + (r * iteration);
    errs() << "Start value = " << x0 << endl;
  } else {
    errs() << "Method: +=  :  ";
    int x = divideWithRoundToLower(b, iteration);
    r = getIntSmallerOrEqual(x);
    // Select r such that r * iterations <= b
    x0 = b - (r * iteration);
    errs() << "Start value = " << x0 << endl;
  }

  errs() << "WM = " << x0 << endl;
  errs() << "b = " << b << endl;
  errs() << "iteration = " << iteration << endl << endl;

  LLVMContext &C = L->getHeader()->getContext();
  // Create the new metadata node for "llvm.loop.vectorize.enable"
  Metadata *DisableVectorizeMD[] = {
      MDString::get(C, "llvm.loop.vectorize.enable"),
      ConstantAsMetadata::get(ConstantInt::get(Type::getInt1Ty(C), 0))};
  MDNode *DisableVectorizeNode = MDNode::get(C, DisableVectorizeMD);
  // Get existing loop metadata
  MDNode *LoopID = L->getLoopID();
  SmallVector<Metadata *, 4> MDs;

  // If there is existing metadata, collect it
  if (LoopID) {
    for (unsigned i = 0, e = LoopID->getNumOperands(); i < e; ++i) {
      MDs.push_back(LoopID->getOperand(i));
    }
  }
  // Add the new metadata to the list
  MDs.push_back(DisableVectorizeNode);
  // Create the new LoopID with the new metadata
  MDNode *NewLoopID = MDNode::get(C, MDs);
  L->setLoopID(NewLoopID);

  LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);

  // Get Loop Predecessor
  static LLVMContext Context;

  // Get Breakpoint Locarion from !dbg of branch instruction in loop latch
  auto latch = L->getLoopLatch();
  Instruction *LastInst = &latch->back();
  DILocation *loop_location = nullptr;
  if (BranchInst *Branch = dyn_cast<BranchInst>(LastInst)) {
    loop_location = Branch->getDebugLoc();
    errs() << "Using Loop location from br: " << loop_location << endl;
    if (loop_location == nullptr) {
      errs() << "br instruction has no Debug Location... Abort! ";
      Branch->print(errs());
      errs() << endl;
      exit(1);
    }
  } else {
    errs() << "ERROR: Last instruction of Loop Latch is not a br instruction."
           << endl;
    exit(1);
  }

  // Insert watermark variable at beginning of Predecessor
  Function *ParentFunction = L->getHeader()->getParent();
  DIBuilder DIB(M);
  Instruction *allo = insertIntVar(x0, counter, DIB, ParentFunction, var_name);

  // Insert bi calculation instructions in loop latch/body
  Instruction *store = 0;
  if (b < iteration) {
    // Insert SUB instruction in latch after phi nodes
    errs() << "Insert '-=' before: ";
    latch->getFirstNonPHI()->print(errs());
    errs() << endl;
    store = insertSub(allo, r, latch->getFirstNonPHI(), counter);
    errs() << endl;
  } else {
    // Insert ADD instruction in latch after phi nodes
    errs() << "Insert '+=' before: ";
    latch->getFirstNonPHI()->print(errs());
    errs() << endl;
    store = insertAdd(allo, r, latch->getFirstNonPHI(), counter);
    errs() << endl;
  }

  errs() << "Create Opaque Predicate..." << endl;

  // Load
  LLVMContext &context = F.getContext();
  IRBuilder<> builder(context);
  builder.SetInsertPoint(store->getNextNonDebugInstruction());
  Type *intType = Type::getInt32Ty(context);
  auto *load = builder.CreateLoad(intType, allo, "");
  errs() << "Insert load after store" << endl;

  // Get the parent basic block of the instruction
  BasicBlock *parentBB = load->getParent();

  // Add Debug Location to load -> thats where the wm-variable will be found in
  // the debugger! Location = Loop begin
  load->setDebugLoc(loop_location);
  errs() << "Add DBG Location to load" << endl;

  // Create a new basic block
  BasicBlock *newBB = BasicBlock::Create(context, "", &F);
  BasicBlock *continueBB = parentBB->splitBasicBlock(load->getNextNode(), "");
  // Insert comparison and conditional branch
  IRBuilder<> builder_bb(parentBB);
  builder_bb.SetInsertPoint(load->getNextNode());

  Value *cmp;
  // Compare the loaded value to a value that b never reaches
  if (add_method) {
    // += -> b never gets smaller than starting value x0
    cmp = builder_bb.CreateICmpEQ(
        load, ConstantInt::get(Type::getInt32Ty(context), (x0 - 1)));
  } else {
    // -= -> b never gets bigger than starting value x0
    cmp = builder_bb.CreateICmpEQ(
        load, ConstantInt::get(Type::getInt32Ty(context), (x0 + 1)));
  }

  builder_bb.CreateCondBr(cmp, newBB, continueBB);

  // auto *cnd = builder_bb.CreateCondBr(cmp, newBB, continueBB);
  // cnd->setDebugLoc(Loc);
  IRBuilder<> newBuilder(newBB);
  auto *br = newBuilder.CreateBr(parentBB);

  // This sets the DILoc in the opaque BB not in the original BB -> Not
  // necessary?
  br->setDebugLoc(loop_location);
  errs() << "Branch instruction: ";
  br->print(errs());
  errs() << endl;
  errs() << "Line: " << br->getDebugLoc()->getLine() << endl;

  // update ALL phi nodes of loop-latch to contain the newly added block
  for (auto &I : *parentBB) {
    if (PHINode *phi = dyn_cast<PHINode>(&I)) {
      errs() << "Updating Phi-Node: ";
      phi->print(errs());
      errs() << endl;

      // Adding new branch to phi nodes:
      // Add dummy data to each phi node of corresponding phi-node-type
      auto phi_type = phi->getType();
      Value *DummyValue = getDummyValue(phi_type, context);
      phi->addIncoming(DummyValue, newBB);
      errs() << "Updated Phi-node with dummy of type: " << phi_type << endl;
    }
  }
  // Remove the unconditional branch automatically added by splitBasicBlock
  parentBB->getTerminator()->eraseFromParent();

  // Set last br of old BB to DILoc loop_location
  Instruction &lastBrInst = parentBB->back();
  // Check if the last instruction is a branch instruction
  if (isa<BranchInst>(lastBrInst)) {
    lastBrInst.setDebugLoc(loop_location);
    errs() << "*Branch instruction: ";
    lastBrInst.print(errs());
    errs() << endl;
    errs() << "*Line: " << lastBrInst.getDebugLoc()->getLine() << endl;
  } else {
    errs() << "The last instruction is not a branch instruction.\n";
  }

  /*
  //INSERT PRINT IN NEW OPAQUE BB
  //Type *intType = Type::getInt32Ty(context);
  // Create globl pritf func
  Function* func_printf = M.getFunction("printf");
  if(func_printf == nullptr) {
      FunctionType* functionType =
  FunctionType::get(IntegerType::get(M.getContext(), 64), true);

      func_printf = Function::Create(functionType, GlobalValue::ExternalLinkage,
  "printf", M); func_printf->setCallingConv(CallingConv::C);
  }
  // Load
  //builder_bb.SetInsertPoint(br);
  //auto *load = builder.CreateLoad(intType, allo, "");
  std::string txt = "";
  Value* str = builder_bb.CreateGlobalStringPtr(txt, "");
  std::vector<Value*> int32_call_params;
  int32_call_params.push_back(str);
  builder_bb.SetInsertPoint(br);
  builder_bb.CreateCall(func_printf, int32_call_params);
  */

  errs() << "---------------------------" << endl << endl;
  return loop_location;

} // END insertWMInLoop
} // namespace
