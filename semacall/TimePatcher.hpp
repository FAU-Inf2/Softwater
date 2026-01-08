#include "FunctionPatcher.hpp"
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/Value.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Transforms/Utils/PredicateInfo.h>

struct TimePatcher : public FunctionPatcher {
  static llvm::cl::opt<long> TimeWaterMarkKey;
  static llvm::cl::opt<std::string> TimeWaterMarkVal;
  static long timeWaterMarkKey;
  static std::string timeWaterMarkVal;
  TimePatcher() {
    timeWaterMarkKey = TimeWaterMarkKey.getValue();
    timeWaterMarkVal = TimeWaterMarkVal.getValue();
    if (timeWaterMarkVal.empty()) {
      char *env = std::getenv("TIME_KEY");
      if (env)
        timeWaterMarkKey = atol(env);
      env = std::getenv("TIME_VAL");
      if (env)
        timeWaterMarkVal = env;
    }
  }
  void patchInstruction(llvm::Function &F, llvm::CallInst &call) override {
    if (timeWaterMarkVal.empty())
      return;
    using namespace llvm;
    const bool isTimeOfDay =
        call.getCalledFunction()->getName() == "gettimeofday";
    const long waterkey = timeWaterMarkKey / ((time_t)60); // minutes
    IntegerType *i8t = Type::getInt8Ty(F.getContext());
    IntegerType *i32t = Type::getInt32Ty(F.getContext());
    IntegerType *i64t = Type::getInt64Ty(F.getContext());
    // setup blocks and builder
    BasicBlock *jumpBlock = BasicBlock::Create(F.getContext());
    BasicBlock *easterBlock = BasicBlock::Create(F.getContext());
    jumpBlock->insertInto(&F);
    easterBlock->insertInto(&F, jumpBlock);
    IRBuilder<> easterBuilder(F.getContext());
    easterBuilder.SetInsertPoint(easterBlock);
    // get value assumed to contain the key
    Value *timeVar = isTimeOfDay ? call.getOperand(0) : &call;
    // splice jump block
    jumpBlock->splice(jumpBlock->begin(), call.getParent(),
                      --(call.getParent()->end()));
    adaptPHINodes(&*jumpBlock->begin(), call.getParent(), jumpBlock);
    IRBuilder<> origBuilder(F.getContext());
    origBuilder.SetInsertPoint(call.getParent());
    // if time var is pointer, we first have to derference it
    if (isTimeOfDay) {
      timeVar = origBuilder.CreateLoad(i64t, timeVar);
    }
    // calculate the minute
    Instruction *divBy60 = (Instruction *)origBuilder.CreateSDiv(
        timeVar, ConstantInt::get(i64t, 60));
    // create integer hash
    long finalHash = rand() % 0x7FFFFFFF;
    Value *hash =
        transformKeyToValue(origBuilder, divBy60, waterkey, finalHash);
    // easter block
    //	now it is possible to use the time as a seed to generate the value
    AllocaInst *easterString = easterBuilder.CreateAlloca(
        i8t, ConstantInt::get(i32t, timeWaterMarkVal.size() + 1));
#ifndef DONT_USE_POLYNOM
    BasicBlock *easterEventBlock = BasicBlock::Create(F.getContext());
    F.insert(F.end(), easterEventBlock);
    Function *pol = FunctionPatcher::generatePolynom(
        F.getParent(), timeWaterMarkKey,
        timeWaterMarkVal);
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
    // test it
    Value *cmp1 = ICmpInst::Create(
        Instruction::ICmp, ICmpInst::Predicate::ICMP_SLE, i,
        ConstantInt::get(i64t, timeWaterMarkVal.size()));
    testBuilder.Insert(cmp1);
    testBuilder.CreateCondBr(cmp1, loopBlock, easterEventBlock);

    // create for loop
    //  positional encoding
    Value *lowi = loopBuilder.CreateCast(Instruction::CastOps::Trunc, i, i32t);
    Value *pos = loopBuilder.CreateMul(lowi, ConstantInt::get(i32t, 0xFF));
    Value *enc = loopBuilder.CreateAdd(
        loopBuilder.CreateZExtOrTrunc(divBy60, i32t), pos);

    //  evaluate polynom
    Value *y = loopBuilder.CreateCall(pol, enc);
    //  store in target
    loopBuilder.CreateStore(y, loopBuilder.CreateGEP(i32t, easterString, i));
    //  increment index
    Value *newi = loopBuilder.CreateAdd(i, ConstantInt::get(i64t, 1));
    i->addIncoming(newi, loopBlock);
    //  jump to test
    loopBuilder.CreateBr(testBlock);
    // create easter event
    IRBuilder<> eventBuilder(F.getContext());
    eventBuilder.SetInsertPoint(easterEventBlock);
    eventBuilder.CreateStore(ConstantInt::get(i32t, '\0'),
                             eventBuilder.CreateGEP(i32t, easterString, i));
    //  call printf with prepared string
    eventBuilder.CreateCall(FunctionPatcher::getPrintf(F.getParent()),
                            easterString);
    eventBuilder.CreateLifetimeEnd(easterString, nullptr);
    eventBuilder.CreateBr(jumpBlock);
    errs() << "included semacall in " << F.getName() << "\n";
#else
    for (unsigned int c = 0; c < timeWaterMarkVal.size(); c++) {
      ConstantInt *offset = ConstantInt::get(i32t, c);
      Value *indexList[1] = {offset};
      Value *charValue = easterBuilder.CreateCast(
          Instruction::CastOps::Trunc,
          FunctionPatcher::transformKeyToValue(easterBuilder, divBy60, waterkey,
                                               (long)timeWaterMarkVal.at(c)),
          i8t);
      Value *storeAddr = easterBuilder.CreateGEP(i8t, easterString, indexList);
      easterBuilder.CreateStore(charValue, storeAddr);
    }
    // terminating 0
    Value *indexList[1] = {ConstantInt::get(i32t, timeWaterMarkVal.size())};
    Value *storeAddr = easterBuilder.CreateGEP(i8t, easterString, indexList);
    easterBuilder.CreateStore(ConstantInt::get(i8t, '\0'), storeAddr);
    // create print
    Module *module = F.getParent();
    Value *printParams[1] = {easterString};
    easterBuilder.CreateCall(getPrintf(module), printParams);
    easterBuilder.CreateBr(jumpBlock);
#endif
    // create conditional jump to easter or jump block
    CmpInst *hashCmp = ICmpInst::Create(
        Instruction::ICmp, ICmpInst::Predicate::ICMP_EQ, (Value *)hash,
        (Value *)ConstantInt::get(hash->getType(), finalHash), "",
        call.getParent());
    BranchInst::Create(easterBlock, jumpBlock, hashCmp, call.getParent());
#ifdef DONT_USE_POLYNOM
    errs() << "included time in " << F.getName() << ", "
           << F.getParent()->getName() << ", " << timeWaterMarkVal.size()
           << " times\n";
#endif
  }
};
