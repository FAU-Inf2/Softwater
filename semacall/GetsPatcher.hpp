#define DONT_USE_POLYNOM
#include "FunctionPatcher.hpp"
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Value.h>
#include <llvm/Passes/PassBuilder.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Transforms/Utils/PredicateInfo.h>
struct GetsPatcher : public FunctionPatcher {
  static llvm::cl::opt<std::string> GetsWaterMarkKey;
  static llvm::cl::opt<std::string> GetsWaterMarkVal;
  static std::string getsWaterMarkKey;
  static std::string getsWaterMarkVal;
  GetsPatcher() {
    getsWaterMarkKey = GetsWaterMarkKey.getValue();
    getsWaterMarkVal = GetsWaterMarkVal.getValue();
    if (getsWaterMarkKey.empty()) {
      char *env = std::getenv("GETS_KEY");
      if (env)
        getsWaterMarkKey = env;
      env = std::getenv("GETS_VAL");
      if (env)
        getsWaterMarkVal = env;
    }
    if (GetsWaterMarkKey.size() != GetsWaterMarkVal.size()) {
      llvm::errs() << "Key is not as long as Value!\n";
    }
  }
  void patchInstruction(llvm::Function &F, llvm::CallInst &call) override {
    using namespace llvm;
    if (getsWaterMarkVal.empty() || getsWaterMarkKey.empty()) {
      return;
    }
    // 0 gets and fgets, 1 getline
    const bool callType =
        call.getCalledFunction()->getName() == "getline" ? 1 : 0;
    Module *m = F.getParent();
    Type *i8pt = PointerType::get(Type::getInt8Ty(m->getContext()), 0);
    IntegerType *i8t = Type::getInt8Ty(F.getContext());
    IntegerType *i32t = Type::getInt32Ty(F.getContext());
    IntegerType *i64t = Type::getInt64Ty(F.getContext());
    // string operand
    Value *strop = call.getOperand(0);
    IRBuilder<> origBuilder(F.getContext());
    origBuilder.SetInsertPoint(call.getParent());
    // generate hash function if not already present in module
    // generate jump block
    BasicBlock *jumpBlock = BasicBlock::Create(F.getContext());
    jumpBlock->splice(jumpBlock->begin(), call.getParent(),
                      --(call.getParent()->end()));
    adaptPHINodes(&*jumpBlock->begin(), call.getParent(), jumpBlock);
    // create easter block which contains the easter egg code
    BasicBlock *easterBlock = BasicBlock::Create(F.getContext());
    BasicBlock *hashCheckBlock = BasicBlock::Create(F.getContext());
    // add basic blocks
    for (auto it = F.begin(); it != F.end(); it++) {
      if (&*it == call.getParent()) {
        F.insert(++it, jumpBlock);
        easterBlock->insertInto(&F, jumpBlock);
        hashCheckBlock->insertInto(&F, jumpBlock);
        break;
      }
    }
    // dont mind me, reusing strlen for the hash checking and doing the string
    // length check in the original block
    IRBuilder<> hashCheckBuilder(F.getContext());
    hashCheckBuilder.SetInsertPoint(hashCheckBlock);
    // derference line ptr if necessary
    if (callType == 1) {
      strop = hashCheckBuilder.CreateLoad(i8pt, strop);
    }
    // generate hash jump
    Value *paramList[1] = {strop};
    Function *hashfct = getHashFunction(m);
    Value *hash = hashCheckBuilder.CreateCall(hashfct, paramList);
    long keyHash = hashimpl(getsWaterMarkKey.c_str());
    long testValue = rand() % 1711922400l;
    hash = transformKeyToValue(hashCheckBuilder, hash, keyHash, testValue);
    Value *cmp =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_EQ, hash,
                         ConstantInt::get(i64t, testValue));
    hashCheckBuilder.Insert(cmp);
    hashCheckBuilder.CreateCondBr(cmp, easterBlock, jumpBlock);
    // check string length
    Value *strlenRes;
    if (callType == 0) {
      strlenRes = origBuilder.CreateCall(getStrlen(m), paramList);
    } else {
      strlenRes = &call;
    }
    Value *strlenCond = origBuilder.CreateICmpEQ(
        strlenRes, ConstantInt::get(i64t, getsWaterMarkKey.size() + 1));
    origBuilder.CreateCondBr(strlenCond, hashCheckBlock, jumpBlock);
    // generate easter block with transformation
    IRBuilder<> easterBuilder(F.getContext());
    easterBuilder.SetInsertPoint(easterBlock);
    // generate easter egg that transforms the key to the value
    //    char by char with transformKeyToValue
    AllocaInst *easterString = easterBuilder.CreateAlloca(
        i8t, ConstantInt::get(i32t, getsWaterMarkVal.size() + 1));
#ifndef DONT_USE_POLYNOM
    BasicBlock *easterEventBlock = BasicBlock::Create(F.getContext());
    F.insert(F.end(), easterEventBlock);
    Function *pol = FunctionPatcher::generatePolynom(
        F.getParent(), getsWaterMarkKey, getsWaterMarkVal);
    BasicBlock *testBlock = BasicBlock::Create(F.getContext());
    BasicBlock *loopBlock = BasicBlock::Create(F.getContext());
    F.insert(F.end(), testBlock);
    F.insert(F.end(), loopBlock);
    easterBuilder.CreateBr(testBlock);
    IRBuilder<> testBuilder(F.getContext());
    testBuilder.SetInsertPoint(testBlock);
    PHINode *i = testBuilder.CreatePHI(i64t, 2);
    IRBuilder<> loopBuilder(F.getContext());
    loopBuilder.SetInsertPoint(loopBlock);
    i->addIncoming(ConstantInt::get(i64t, 0), easterBlock);
    // load character
    Value *character =
        testBuilder.CreateLoad(i8t, testBuilder.CreateGEP(i8t, strop, i));
    // test it
    Value *cmp1 =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE,
                         character, ConstantInt::get(i8t, '\0'));
    Value *cmp2 =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE,
                         character, ConstantInt::get(i8t, '\n'));
    testBuilder.Insert(cmp1);
    testBuilder.Insert(cmp2);
    testBuilder.CreateCondBr(testBuilder.CreateAnd(cmp1, cmp2), loopBlock,
                             easterEventBlock);

    // create for loop
    //  positional encoding
    Value *lowi = loopBuilder.CreateCast(Instruction::CastOps::Trunc, i, i32t);
    Value *pos = loopBuilder.CreateMul(lowi, ConstantInt::get(i32t, 0xFF));
    Value *enc =
        loopBuilder.CreateAdd(loopBuilder.CreateZExt(character, i32t), pos);
    //  evaluate polynom
    Value *y = loopBuilder.CreateCall(pol, enc);
    //  store in target
    loopBuilder.CreateStore(y, loopBuilder.CreateGEP(i8t, easterString, i));
    //  increment index
    Value *newi = loopBuilder.CreateAdd(i, ConstantInt::get(i64t, 1));
    i->addIncoming(newi, loopBlock);
    //  jump to test
    loopBuilder.CreateBr(testBlock);
    // create easter event
    IRBuilder<> eventBuilder(F.getContext());
    eventBuilder.SetInsertPoint(easterEventBlock);
    eventBuilder.CreateStore(ConstantInt::get(i8t, '\0'),
                             eventBuilder.CreateGEP(i8t, easterString, i));
    //  call printf with prepared string
    eventBuilder.CreateCall(FunctionPatcher::getPrintf(F.getParent()),
                            easterString);
    eventBuilder.CreateLifetimeEnd(easterString, nullptr);
    eventBuilder.CreateBr(jumpBlock);
    errs() << "included semacall in " << F.getName() << "\n";
#else
    for (unsigned int c = 0; c < getsWaterMarkVal.size(); c++) {
      ConstantInt *offset = ConstantInt::get(i32t, c);
      Value *indexList[1] = {offset};
      Value *loadAddr = easterBuilder.CreateGEP(i8t, strop, indexList);
      Value *loadChar = easterBuilder.CreateLoad(i8t, loadAddr);
      Value *charValue =
          transformKeyToValue(easterBuilder, loadChar, (signed char) getsWaterMarkKey.at(c),
                              (signed char) getsWaterMarkVal.at(c));
      Value *storeAddr = easterBuilder.CreateGEP(i8t, easterString, indexList);
      easterBuilder.CreateStore(charValue, storeAddr);
    }
    Value *indexList[1] = {ConstantInt::get(i32t, getsWaterMarkVal.size())};
    Value *storeAddr = easterBuilder.CreateGEP(i8t, easterString, indexList);
    easterBuilder.CreateStore(ConstantInt::get(i8t, '\0'), storeAddr);
    Value *printParams[1] = {easterString};
    easterBuilder.CreateCall(getPrintf(m), printParams);
    easterBuilder.CreateBr(jumpBlock);
    errs() << "included semacall in " << F.getName() << ", "
           << F.getParent()->getName() << ", " << getsWaterMarkKey.size()
           << " times\n";
#endif
  }

private:
  long hashimpl(const char *str) {
    long res = 7;
    while (*str != '\0' && *str != '\n') {
      res = res ^ ((res << 5) + (res >> 2) + *str);
      str++;
    }
    return res;
  }
};
