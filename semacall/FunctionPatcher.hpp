#ifndef PATCHING_LIBC_FUNCTION_PATCHER_HPP
#define PATCHING_LIBC_FUNCTION_PATCHER_HPP
#include "Polynoms.hpp"
#include <llvm/IR/Constants.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Module.h>
struct FunctionPatcher {
  // dispatched when a function with fitting name is found, parameter type
  // checking still has to be done
  virtual void patchInstruction(llvm::Function &F, llvm::CallInst &call) = 0;
  // gets or declares printf with one parameter
  static llvm::FunctionCallee getPrintf(llvm::Module *m) {
    using namespace llvm;
    using namespace std;
    Type *params[1] = {PointerType::get(Type::getInt8Ty(m->getContext()), 0)};
    FunctionType *fType =
        FunctionType::get(Type::getInt32Ty(m->getContext()), params, true);
    return m->getOrInsertFunction("printf", fType);
  }
  // gets or declares printf with one parameter
  static llvm::FunctionCallee getStrlen(llvm::Module *m) {
    using namespace llvm;
    using namespace std;
    Type *params[1] = {PointerType::get(Type::getInt8Ty(m->getContext()), 0)};
    FunctionType *fType =
        FunctionType::get(Type::getInt64Ty(m->getContext()), params, false);
    return m->getOrInsertFunction("strlen", fType);
  }
  /**
   * For when the instruction from a basic block is transplanted from the
   * original block `orig` to a new block `jump`. Adapts the PHI nodes for all
   * other basic blocks s.t. they point to the new `jump` block if they had
   * `orig` as predecessor.
   */
  static void adaptPHINodes(llvm::Instruction *lastInstr,
                            llvm::BasicBlock *orig, llvm::BasicBlock *jump) {
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
  /**
   * The tailor algorithm.
   * Emits instructions after `before` that receive `keyVal`, assume it
   * contains `key` and generate `value` from it.
   */
  static llvm::Instruction *transformKeyToValue(llvm::Instruction *before,
                                                llvm::Value *keyVal, long key,
                                                long value) {
    using namespace llvm;
    IntegerType *type = keyVal->getType()->isIntegerTy(32)
                            ? Type::getInt32Ty(before->getContext())
                            : Type::getInt64Ty(before->getContext());
    long currentVal = key;
    // inserts a random multiplication
    int mulVal1 = rand() % 20 + 1;
    Constant *mulConstant1 = ConstantInt::get(type, mulVal1);
    Instruction *lastInst =
        BinaryOperator::CreateMul(keyVal, mulConstant1, {}, before);
    currentVal *= mulVal1;
    int modVal1 = (rand() % 5000) + 1000;
    Constant *modConstant1 = ConstantInt::get(type, modVal1);
    lastInst =
        llvm::BinaryOperator::CreateSRem(lastInst, modConstant1, {}, before);
    currentVal %= modVal1;

    // by chance divides it by a random value
    int divVal1 = rand() % 15 + 1;
    if ((rand() % 10) >= 3) {
      Constant *divConstant1 = ConstantInt::get(type, divVal1);
      lastInst = BinaryOperator::CreateSDiv(lastInst, divConstant1, {}, before);
      currentVal /= divVal1;
    }
    // add difference to value
    Constant *difference = ConstantInt::get(type, value - currentVal);
    return BinaryOperator::CreateAdd(lastInst, difference, {}, before);
  }
  /**
   * The tailor algorithm.
   * Emits instructions into the builder that receive `keyVal`, assume it
   * contains `key` and generate `value` from it.
   */
  static llvm::Value *transformKeyToValue(llvm::IRBuilder<> &builder,
                                          llvm::Value *keyVal, long key,
                                          long value) {
    using namespace llvm;
    IntegerType *type = keyVal->getType()->isIntegerTy(32)
                            ? Type::getInt32Ty(keyVal->getContext())
                            : Type::getInt64Ty(keyVal->getContext());
    long currentVal = key;
    // inserts a random addition
    int addVal1 = rand() % 10 + 1;
    Constant *addConstant1 = ConstantInt::get(type, addVal1);
    Value *lastInst = builder.CreateMul(keyVal, addConstant1);
    currentVal *= addVal1;
    int modVal1 = (rand() % 5000) + 1000;
    Constant *modConstant1 = ConstantInt::get(type, modVal1);
    lastInst = builder.CreateSRem(lastInst, modConstant1);
    currentVal %= modVal1;
    // by chance divides it by a random value
    int divVal1 = rand() % 5 + 1;
    if ((rand() % 10) >= 3) {
      Constant *divConstant1 = ConstantInt::get(type, divVal1);
      lastInst = builder.CreateSDiv(lastInst, divConstant1);
      currentVal /= divVal1;
    }
    // add difference to value
    Constant *difference = ConstantInt::get(type, value - currentVal);
    return builder.CreateAdd(lastInst, difference);
  }
  /**
   * The tailor algorithm.
   * Emits instructions into the builder that receive `keyVal`, assume it
   * contains `key` and generate `value` from it.
   */
  static llvm::Value *transformKeyToValue(llvm::IRBuilder<> &builder,
                                          llvm::Value *keyVal, signed char key,
                                          signed char value) {
    using namespace llvm;
    IntegerType *type = Type::getInt8Ty(keyVal->getContext());
    signed char currentVal = key;
    // inserts a random addition
    int addVal1 = rand() % 50;
    Constant *addConstant1 = ConstantInt::get(type, addVal1);
    Value *lastInst = builder.CreateMul(keyVal, addConstant1);
    currentVal *= addVal1;
    signed char modVal1 = (rand() % 5000) + 100;
    Constant *modConstant1 = ConstantInt::get(type, modVal1);
    lastInst = builder.CreateSRem(lastInst, modConstant1);
    currentVal %= modVal1;
    // by chance divides it by a random value
    signed char divVal1 = rand() % 8 + 1;
    if ((rand() % 10) >= 3) {
      Constant *divConstant1 = ConstantInt::get(type, divVal1);
      lastInst = builder.CreateSDiv(lastInst, divConstant1);
      currentVal /= divVal1;
    }
    // add difference to value
    Constant *difference = ConstantInt::get(type, value - currentVal);
    return builder.CreateAdd(lastInst, difference);
  }
  static llvm::Function *getHashFunction(llvm::Module *m) {
    using namespace llvm;
    Type *i8pt = PointerType::get(Type::getInt8Ty(m->getContext()), 0);
    IntegerType *i8t = Type::getInt8Ty(m->getContext());
    IntegerType *i32t = Type::getInt32Ty(m->getContext());
    IntegerType *i64t = Type::getInt64Ty(m->getContext());
    Function *hashfct = m->getFunction("watermark_gets_hash");
    if (!hashfct) {
      Type *params[1] = {PointerType::get(Type::getInt8Ty(m->getContext()), 0)};
      FunctionType *fType =
          FunctionType::get(Type::getInt64Ty(m->getContext()), params, false);
      hashfct =
          Function::Create(fType, GlobalValue::LinkageTypes::InternalLinkage,
                           "watermark_gets_hash", m);
      BasicBlock *entryBlock = BasicBlock::Create(m->getContext());
      IRBuilder<> entryBuilder(m->getContext());
      entryBuilder.SetInsertPoint(entryBlock);
      Value *stringarg = hashfct->args().begin();
      BasicBlock *testBlock = BasicBlock::Create(m->getContext());
      entryBuilder.CreateBr(testBlock);
      BasicBlock *forBody = BasicBlock::Create(m->getContext());
      BasicBlock *returnBlock = BasicBlock::Create(m->getContext());
      hashfct->insert(hashfct->begin(), entryBlock);
      hashfct->insert(hashfct->end(), testBlock);
      hashfct->insert(hashfct->end(), forBody);
      hashfct->insert(hashfct->end(), returnBlock);
      IRBuilder<> testBuilder(m->getContext());
      testBuilder.SetInsertPoint(testBlock);
      PHINode *i = testBuilder.CreatePHI(i8pt, 2);
      i->addIncoming(stringarg, &hashfct->getEntryBlock());
      PHINode *res = testBuilder.CreatePHI(i64t, 2);
      res->addIncoming(ConstantInt::get(i64t, 7), &hashfct->getEntryBlock());
      Value *c = testBuilder.CreateLoad(i8t, i);
      Value *cmp1 =
          ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE, c,
                           ConstantInt::get(i8t, '\0'));
      testBuilder.Insert(cmp1);

      Value *cmp2 =
          ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE, c,
                           ConstantInt::get(i8t, '\n'));
      testBuilder.Insert(cmp2);
      testBuilder.CreateCondBr(testBuilder.CreateAnd(cmp1, cmp2), forBody,
                               returnBlock);
      // create for body
      IRBuilder<> forBuilder(m->getContext());
      forBuilder.SetInsertPoint(forBody);
      // load char from string
      Value *cc = forBuilder.CreateCast(Instruction::CastOps::SExt, c, i64t);

      Value *newres = forBuilder.CreateShl(res, ConstantInt::get(i64t, 5));
      newres = forBuilder.CreateAdd(
          newres, forBuilder.CreateLShr(res, ConstantInt::get(i64t, 2)));
      newres = forBuilder.CreateAdd(newres, cc);
      newres = forBuilder.CreateXor(res, newres);

      Value *indexList[1] = {ConstantInt::get(i64t, 1)};
      Value *newi = forBuilder.CreateGEP(i8t, i, indexList);
      forBuilder.CreateBr(testBlock);
      res->addIncoming(newres, forBody);
      i->addIncoming(newi, forBody);
      ReturnInst::Create(m->getContext(), res, returnBlock);
    }
    return hashfct;
  }
  /**
   * Simple rounding function
   */
  static llvm::Function *getRound(llvm::Module *m) {
    using namespace llvm;
    using namespace std;
    Function *f = m->getFunction("watermark_sidedata_round");
    if (!f) {
#ifdef DEBUG_PRINTS
      errs() << "generate round\n";
#endif
      IntegerType *i8t = Type::getInt8Ty(m->getContext());
      IntegerType *i32t = Type::getInt32Ty(m->getContext());
      Type *f64t = Type::getDoubleTy(m->getContext());
      Type *params[1] = {Type::getDoubleTy(m->getContext())};
      FunctionType *fType = FunctionType::get(i8t, params, false);
      f = Function::Create(fType, GlobalValue::LinkageTypes::InternalLinkage,
                           "watermark_sidedata_round", m);
      IRBuilder<> builder(m->getContext());
      BasicBlock *entryBlock = BasicBlock::Create(m->getContext());
      f->insert(f->end(), entryBlock);
      builder.SetInsertPoint(entryBlock);
      auto arg = f->args().begin();
      Value *plushalf = builder.CreateFAdd(arg, ConstantFP::get(f64t, 0.5));
      Value *trunc = builder.CreateFPToSI(plushalf, i8t);
      builder.CreateRet(trunc);
#ifdef DEBUG_PRINTS
      errs() << *f << "\n";
#endif
    }
    return f;
  }
  static llvm::Function *generatePolynom(llvm::Module *m, long key,
                                         std::string val) {
    using namespace llvm;
    using namespace std;
    Function *fct = m->getFunction("_watermark_polynom");
    if (!fct) {
#ifdef DEBUG_PRINTS
      errs() << "generate poly\n";
#endif
      IntegerType *i8t = Type::getInt8Ty(m->getContext());
      vector<double> x(val.length());
      vector<double> y(val.length());
      for (unsigned int i = 0; i < val.size(); i++) {
        x[i] = key + i * 0xFF;
        y[i] = val[i];
      }
      Lagrange::Operation *op = Lagrange::build_polynomial(x, y);
      // translate to llvm ir
      Type *params[1] = {Type::getInt32Ty(m->getContext())};
      FunctionType *fType =
          FunctionType::get(Type::getInt8Ty(m->getContext()), params, false);
      fct = Function::Create(fType, GlobalValue::LinkageTypes::InternalLinkage,
                             "_watermark_polynom", m);
      IRBuilder<> builder(m->getContext());
      BasicBlock *entryBlock = BasicBlock::Create(m->getContext());
      fct->insert(fct->end(), entryBlock);
      builder.SetInsertPoint(entryBlock);
      Type *f64t = Type::getDoubleTy(m->getContext());
      auto arg = builder.CreateSIToFP(fct->args().begin(), f64t);
      Value *v = nullptr;
      for (Lagrange::Equation *sumOp : op->operands) {
        Lagrange::Operation *prodTerm = (Lagrange::Operation *)sumOp;
        Value *term = nullptr;
        for (Lagrange::Equation *eq : prodTerm->operands) {
          if (eq->eq_type() == Lagrange::VARIABLE) {
            if (!term)
              term = arg;
            else
              term = builder.CreateFMul(term, arg);
          } else {
            Lagrange::Constant *c = (Lagrange::Constant *)eq;
            if (!term)
              term = ConstantFP::get(f64t, c->value);
            else
              term = builder.CreateFMul(term, ConstantFP::get(f64t, c->value));
          }
        }
        if (!v)
          v = term;
        else
          v = builder.CreateFAdd(v, term);
      }
      delete op;
      if (!v) {
        errs() << "PANIC v is null: " << op->operands.size() << "\n"
               << "key: " << key << "val: " << val << "\n"
               << op->type << "\n";
      }
      Value *rounded = builder.CreateCall(getRound(m), {v});
      builder.CreateRet(rounded);
#ifdef DEBUG_PRINTS
      errs() << *fct << "\n";
#endif
    }
    return fct;
  }
  /**
   * Generates a polynom that maps the positional encoded values in key to val
   */
  static llvm::Function *generatePolynom(llvm::Module *m, std::string key,
                                         std::string val) {
    using namespace llvm;
    using namespace std;
    Function *fct = m->getFunction("_watermark_polynom_fitting");
    if (!fct) {
#ifdef DEBUG_PRINTS
      errs() << "generate poly\n";
#endif
      IntegerType *i8t = Type::getInt8Ty(m->getContext());
      vector<double> x(key.length());
      vector<double> y(val.length());
      for (unsigned int i = 0; i < key.size(); i++) {
        x[i] = key[i] + i * 0xFF;
        y[i] = val[i];
      }
      Lagrange::Operation *op = Lagrange::build_polynomial(x, y);
      // translate to llvm ir
      Type *params[1] = {Type::getInt32Ty(m->getContext())};
      FunctionType *fType =
          FunctionType::get(Type::getInt8Ty(m->getContext()), params, false);
      fct = Function::Create(fType, GlobalValue::LinkageTypes::InternalLinkage,
                             "_watermark_polynom_fitting", m);
      IRBuilder<> builder(m->getContext());
      BasicBlock *entryBlock = BasicBlock::Create(m->getContext());
      fct->insert(fct->end(), entryBlock);
      builder.SetInsertPoint(entryBlock);
      Type *f64t = Type::getDoubleTy(m->getContext());
      auto arg = builder.CreateSIToFP(fct->args().begin(), f64t);
      Value *v = nullptr;
      for (Lagrange::Equation *sumOp : op->operands) {
        Lagrange::Operation *prodTerm = (Lagrange::Operation *)sumOp;
        Value *term = nullptr;
        for (Lagrange::Equation *eq : prodTerm->operands) {
          if (eq->eq_type() == Lagrange::VARIABLE) {
            if (!term)
              term = arg;
            else
              term = builder.CreateFMul(term, arg);
          } else {
            Lagrange::Constant *c = (Lagrange::Constant *)eq;
            if (!term)
              term = ConstantFP::get(f64t, c->value);
            else
              term = builder.CreateFMul(term, ConstantFP::get(f64t, c->value));
          }
        }
        if (!v)
          v = term;
        else
          v = builder.CreateFAdd(v, term);
      }
      delete op;
      if (!v) {
        errs() << "PANIC v is null: " << op->operands.size() << "\n"
               << "key: " << key << "val: " << val << "\n"
               << op->type << "\n";
      }
      Value *rounded = builder.CreateCall(getRound(m), {v});
      builder.CreateRet(rounded);
#ifdef DEBUG_PRINTS
      errs() << *fct << "\n";
#endif
    }
    return fct;
  }
};
#endif
