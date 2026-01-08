#define USE_POLYNOM
#include "FunctionPatcher.hpp"
#include <llvm/Support/CommandLine.h>
#include <string>

struct AtoiPatcher : public FunctionPatcher {
  static llvm::cl::opt<std::string> AtoiWaterMarkKey;
  static llvm::cl::opt<std::string> AtoiWaterMarkVal;
  static std::string atoiWaterMarkKey;
  static std::string atoiWaterMarkVal;
  AtoiPatcher() {
    atoiWaterMarkKey = AtoiWaterMarkKey.getValue();
    atoiWaterMarkVal = AtoiWaterMarkVal.getValue();
    if (atoiWaterMarkKey.empty()) {
      char *env = std::getenv("ATOI_KEY");
      if (env)
        atoiWaterMarkKey = env;
      env = std::getenv("ATOI_VAL");
      if (env)
        atoiWaterMarkVal = env;
    }
    if (atoiWaterMarkKey.size() != atoiWaterMarkVal.size()) {
      llvm::errs() << "Key is not as long as Value!\n";
    }
  }
  static llvm::Instruction *generateHash(llvm::CallInst &call, int *finalHash) {
    using namespace llvm;
    long value;
    if (call.getCalledFunction()->getName() == "atoi") {
      value = atoi(atoiWaterMarkKey.c_str());
    } else if (call.getCalledFunction()->getName().ends_with("strtol")) {
      // get third parameter
      ConstantInt &base = *(ConstantInt *)call.getOperand(2);
      value =
          strtol(atoiWaterMarkKey.c_str(), nullptr, (int)base.getSExtValue());
    } else {
      value = atol(atoiWaterMarkKey.c_str());
    }
    *finalHash = rand() % 0x7FFFFFFF;
    return transformKeyToValue(call.getNextNode(), &call, value, *finalHash);
  }
  void patchInstruction(llvm::Function &F, llvm::CallInst &call) override {
    using namespace llvm;
    if (atoiWaterMarkVal.empty() || atoiWaterMarkKey.empty())
      return;
    if (atoiWaterMarkKey.size() != atoiWaterMarkVal.size())
      return;
    if (call.getCalledFunction()->getName().ends_with("strtol")) {
      // check that the base is constant
      if (!isa<ConstantInt>(call.getOperand(2)))
        return;
    }
    Module *module = F.getParent();
    Value *inputArray = call.getOperand(0);
    IntegerType *charType = Type::getInt8Ty(F.getContext());
    IntegerType *intType = Type::getInt32Ty(F.getContext());
    IntegerType *longType = Type::getInt64Ty(F.getContext());
    // generate hash from key
    int hash;
    Instruction *hashVal = generateHash(call, &hash);
    // create jump block by moving last instruction
    BasicBlock *jumpBlock = BasicBlock::Create(F.getContext());
    jumpBlock->splice(jumpBlock->begin(), call.getParent(),
                      --(call.getParent()->end()));
    adaptPHINodes(&*jumpBlock->begin(), call.getParent(), jumpBlock);
    // create easter block which contains the easter egg code
    BasicBlock *easterBlock = BasicBlock::Create(F.getContext());
    // add basic blocks
    for (auto it = F.begin(); it != F.end(); it++) {
      if (&*it == call.getParent()) {
        F.insert(++it, jumpBlock);
        easterBlock->insertInto(&F, jumpBlock);
        break;
      }
    }
    // generate easter egg transform
    IRBuilder<> easterBuilder(F.getContext());
    easterBuilder.SetInsertPoint(easterBlock);
    // generate easter egg that transforms the key to the value
    //    char by char with transformKeyToValue
    AllocaInst *easterString = easterBuilder.CreateAlloca(
        charType, ConstantInt::get(intType, atoiWaterMarkVal.size() + 1));
#ifndef DONT_USE_POLYNOM
    BasicBlock *easterEventBlock = BasicBlock::Create(F.getContext());
    F.insert(F.end(), easterEventBlock);
    Function *pol = FunctionPatcher::generatePolynom(
        F.getParent(), atoiWaterMarkKey, atoiWaterMarkVal);
    BasicBlock *testBlock = BasicBlock::Create(F.getContext());
    BasicBlock *loopBlock = BasicBlock::Create(F.getContext());
    F.insert(F.end(), testBlock);
    F.insert(F.end(), loopBlock);
    easterBuilder.CreateBr(testBlock);
    IRBuilder<> testBuilder(F.getContext());
    testBuilder.SetInsertPoint(testBlock);
    PHINode *i = testBuilder.CreatePHI(longType, 2);
    IRBuilder<> loopBuilder(F.getContext());
    loopBuilder.SetInsertPoint(loopBlock);
    i->addIncoming(ConstantInt::get(longType, 0), easterBlock);
    // load character
    Value *character = testBuilder.CreateLoad(
        charType, testBuilder.CreateGEP(charType, inputArray, i));
    // test it
    Value *cmp1 =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE,
                         character, ConstantInt::get(charType, '\0'));
    Value *cmp2 =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE,
                         character, ConstantInt::get(charType, '\n'));
    testBuilder.Insert(cmp1);
    testBuilder.Insert(cmp2);
    testBuilder.CreateCondBr(testBuilder.CreateAnd(cmp1, cmp2), loopBlock,
                             easterEventBlock);

    // create for loop
    //  positional encoding
    Value *lowi =
        loopBuilder.CreateCast(Instruction::CastOps::Trunc, i, intType);
    Value *pos = loopBuilder.CreateMul(lowi, ConstantInt::get(intType, 0xFF));
    Value *enc =
        loopBuilder.CreateAdd(loopBuilder.CreateZExt(character, intType), pos);
    //  evaluate polynom
    Value *y = loopBuilder.CreateCall(pol, enc);
    //  store in target
    loopBuilder.CreateStore(y,
                            loopBuilder.CreateGEP(charType, easterString, i));
    //  increment index
    Value *newi = loopBuilder.CreateAdd(i, ConstantInt::get(longType, 1));
    i->addIncoming(newi, loopBlock);
    //  jump to test
    loopBuilder.CreateBr(testBlock);
    // create easter event
    IRBuilder<> eventBuilder(F.getContext());
    eventBuilder.SetInsertPoint(easterEventBlock);
    eventBuilder.CreateStore(ConstantInt::get(charType, '\0'),
                             eventBuilder.CreateGEP(charType, easterString, i));
    //  call printf with prepared string
    eventBuilder.CreateCall(FunctionPatcher::getPrintf(F.getParent()),
                            easterString);
    eventBuilder.CreateLifetimeEnd(easterString, nullptr);
    eventBuilder.CreateBr(jumpBlock);
    CmpInst *hashCmp = ICmpInst::Create(
        Instruction::ICmp, ICmpInst::Predicate::ICMP_EQ, (Value *)hashVal,
        (Value *)ConstantInt::get(hashVal->getType(), hash), "",
        call.getParent());
    BranchInst::Create(easterBlock, jumpBlock, hashCmp, call.getParent());
    errs() << "included semacall in " << F.getName() << "\n";
#else
    for (unsigned int c = 0; c < atoiWaterMarkVal.size(); c++) {
      ConstantInt *offset = ConstantInt::get(intType, c);
      Value *indexList[1] = {offset};
      Value *loadAddr =
          easterBuilder.CreateGEP(charType, inputArray, indexList);
      Value *loadChar = easterBuilder.CreateLoad(charType, loadAddr);
      Value *charValue = FunctionPatcher::transformKeyToValue(
          easterBuilder, loadChar, atoiWaterMarkKey.at(c),
          atoiWaterMarkVal.at(c));
      Value *storeAddr =
          easterBuilder.CreateGEP(charType, easterString, indexList);
      easterBuilder.CreateStore(charValue, storeAddr);
    }
    Value *indexList[1] = {ConstantInt::get(intType, atoiWaterMarkVal.size())};
    Value *storeAddr =
        easterBuilder.CreateGEP(charType, easterString, indexList);
    easterBuilder.CreateStore(ConstantInt::get(charType, '\0'), storeAddr);
    // get printf function
    Value *printParams[1] = {easterString};
    easterBuilder.CreateCall(getPrintf(module), printParams);
    easterBuilder.CreateBr(jumpBlock);
    // create strlen test block
    BasicBlock *strlenBlock = BasicBlock::Create(F.getContext());
    strlenBlock->insertInto(&F, jumpBlock);
    IRBuilder<> strlenBuilder(F.getContext());
    strlenBuilder.SetInsertPoint(strlenBlock);
    Value *strlenParams[1] = {inputArray};
    Value *strlenRes =
        strlenBuilder.CreateCall(getStrlen(module), strlenParams);
    Value *strlenCond = strlenBuilder.CreateICmpEQ(
        strlenRes, ConstantInt::get(longType, atoiWaterMarkKey.size()));
    strlenBuilder.CreateCondBr(strlenCond, easterBlock, jumpBlock);
    // create if at end depending on hash
    CmpInst *hashCmp = ICmpInst::Create(
        Instruction::ICmp, ICmpInst::Predicate::ICMP_EQ, (Value *)hashVal,
        (Value *)ConstantInt::get(hashVal->getType(), hash), "",
        call.getParent());
    BranchInst::Create(strlenBlock, jumpBlock, hashCmp, call.getParent());
    errs() << "included atoi in " << F.getName() << ", "
           << F.getParent()->getName() << ", " << atoiWaterMarkKey.size()
           << " times\n";
#endif
  }
};
