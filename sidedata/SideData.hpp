#include <llvm/ADT/StringExtras.h>
#include <llvm/Analysis/LoopInfo.h>
#include <llvm/Analysis/PostDominators.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/Dominators.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/GlobalVariable.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/IntrinsicInst.h>
#include <llvm/IR/Intrinsics.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/PassManager.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Support/Casting.h>
#include "../semacall/FunctionPatcher.hpp"
static int used_tailor = 0;
static llvm::Function *getHashFunction(llvm::Module *m, long terminating) {
  using namespace llvm;
  Type *i8pt = PointerType::get(Type::getInt8Ty(m->getContext()), 0);
  IntegerType *i8t = Type::getInt8Ty(m->getContext());
  IntegerType *i32t = Type::getInt32Ty(m->getContext());
  IntegerType *i64t = Type::getInt64Ty(m->getContext());
  Function *hashfct =
      m->getFunction("watermark_sidedata_hash" + std::to_string(terminating));
  if (!hashfct) {
#ifdef DEBUG_PRINTS
    errs() << "generate hash\n";
#endif
    Type *params[2] = {i8pt, i64t};
    FunctionType *fType = FunctionType::get(i32t, params, false);
    hashfct = Function::Create(
        fType, GlobalValue::LinkageTypes::InternalLinkage,
        "watermark_sidedata_hash" + std::to_string(terminating), m);
    BasicBlock *entryBlock = BasicBlock::Create(m->getContext());
    IRBuilder<> entryBuilder(m->getContext());
    entryBuilder.SetInsertPoint(entryBlock);
    Value *stringarg = hashfct->args().begin();
    Value *upperlimit = hashfct->args().begin() + 1;
    BasicBlock *testBlock1 = BasicBlock::Create(m->getContext(), "test1Block");
    entryBuilder.CreateBr(testBlock1);
    BasicBlock *testBlock2 = BasicBlock::Create(m->getContext(), "test2Block");
    BasicBlock *forBody = BasicBlock::Create(m->getContext(), "forBodyBlock");
    BasicBlock *returnBlock =
        BasicBlock::Create(m->getContext(), "returnBlock");
    hashfct->insert(hashfct->begin(), entryBlock);
    hashfct->insert(hashfct->end(), testBlock1);
    hashfct->insert(hashfct->end(), testBlock2);
    hashfct->insert(hashfct->end(), forBody);
    hashfct->insert(hashfct->end(), returnBlock);
    IRBuilder<> test1Builder(m->getContext());
    test1Builder.SetInsertPoint(testBlock1);
    IRBuilder<> test2Builder(m->getContext());
    test2Builder.SetInsertPoint(testBlock2);
    PHINode *i = test1Builder.CreatePHI(i8pt, 2);
    i->addIncoming(stringarg, &hashfct->getEntryBlock());
    PHINode *count = test1Builder.CreatePHI(i64t, 2);
    count->addIncoming(ConstantInt::get(i64t, 0), &hashfct->getEntryBlock());
    PHINode *res = test1Builder.CreatePHI(i32t, 2);
    res->addIncoming(ConstantInt::get(i32t, 7), &hashfct->getEntryBlock());
    // First test then second testBlock then load and test for result
    // compare < |watermark key|
    Value *cmp2 =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_SLT,
                         count, ConstantInt::get(i64t, terminating));
    test1Builder.Insert(cmp2);
    // compare < |string length|
    Value *cmp3 = ICmpInst::Create(
        Instruction::ICmp, ICmpInst::Predicate::ICMP_SLT, count, upperlimit);
    test1Builder.Insert(cmp3);
    test1Builder.CreateCondBr(test1Builder.CreateAnd(cmp2, cmp3), testBlock2,
                              returnBlock);
    Value *c = test2Builder.CreateLoad(i8t, i);
    // compare on '\n'
    Value *cmp4 =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE, c,
                         ConstantInt::get(i8t, '\n'));
    // compare on '\0'
    Value *cmp1 =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE, c,
                         ConstantInt::get(i8t, '\0'));
    test2Builder.Insert(cmp1);
    test2Builder.Insert(cmp4);
    test2Builder.CreateCondBr(test2Builder.CreateAnd(cmp1, cmp4), forBody,
                              returnBlock);
    // create for body
    IRBuilder<> forBuilder(m->getContext());
    forBuilder.SetInsertPoint(forBody);
    // load char from string
    Value *cc = forBuilder.CreateCast(Instruction::CastOps::SExt, c, i32t);

    Value *newres = forBuilder.CreateShl(res, ConstantInt::get(i32t, 5));
    newres = forBuilder.CreateAdd(
        newres, forBuilder.CreateLShr(res, ConstantInt::get(i32t, 2)));
    newres = forBuilder.CreateAdd(newres, cc);
    newres = forBuilder.CreateXor(res, newres);

    Value *indexList[1] = {ConstantInt::get(i32t, 1)};
    Value *newi = forBuilder.CreateGEP(i8t, i, indexList);
    Value *newcount = forBuilder.CreateAdd(count, ConstantInt::get(i64t, 1));
    forBuilder.CreateBr(testBlock1);
    res->addIncoming(newres, forBody);
    i->addIncoming(newi, forBody);
    count->addIncoming(newcount, forBody);

    ReturnInst::Create(m->getContext(), res, returnBlock);
#ifdef DEBUG_PRINTS
    errs() << "Hashfct: " << *hashfct << "\n";
#endif
  }
  return hashfct;
}
static int hashimpl(const char *str, long length) {
  unsigned int res = 7;
  long i = 0;
  while (*str != '\0' && i < length && *str != '\n') {
    res = res ^ ((res << 5) + (res >> 2) + *str);
    str++;
    i++;
  }
  return res;
}
static llvm::BasicBlock *getInsertionBlock(llvm::Function &F,
                                           llvm::Instruction &allocinst) {
  using namespace llvm;
  auto dom = DominatorTree(F);
  auto loops = LoopInfo(dom);
  BasicBlock *lastRead = nullptr;
  LifetimeIntrinsic *EOLAlloc = nullptr;
  bool isMalloc =
      isa<CallInst>(&allocinst) &&
      ((CallInst &)allocinst).getCalledFunction() &&
      ((CallInst &)allocinst).getCalledFunction()->getName() == "malloc";
  // in case of malloc we want to include it BEFORE a free instruction and not
  // the last usage. Else code like a = malloc(...); free(a); b = a; might
  // lead to segmentation faults when accessing the data. We rely on "no
  // double frees"
  for (BasicBlock &bbo : F) {
    for (Instruction &inso : bbo) {
      if (!dom.dominates(&allocinst, &inso))
        continue;
      if (isMalloc) {
        if (isa<CallInst>(&inso)) {
          CallInst &call = (CallInst &)inso;
          if (call.getCalledFunction() &&
              call.getCalledFunction()->getName() == "free" &&
              (Value *)&allocinst == *call.args().begin()) {
            // either there is no free found yet ...
            if (!lastRead) {
              lastRead = &bbo;
            } else if (!loops.getLoopFor(&bbo)) { // ... or ideally we found a
                                                  // free outside of loops
              lastRead = &bbo;
              break;
            }
          }
        }
      } else {
        if (!EOLAlloc)
          for (unsigned int i = 0; i < inso.getNumOperands(); i++) {
            if (inso.getOperand(i) == &allocinst)
              lastRead = &bbo;
          }
        if (inso.isLifetimeStartOrEnd()) {
          LifetimeIntrinsic &life = (LifetimeIntrinsic &)inso;
          if (life.getOperand(1) == &allocinst &&
              life.getCalledFunction()->getName().starts_with(
                  "llvm.lifetime.end")) {
            lastRead = &bbo;
            EOLAlloc = &life;
            break;
          }
        }
      }
    }
  }
  // if no lastRead: collect all usages of the allocation and find the
  // first basic block that post-dominates all usages
  if (!lastRead) {
    PostDominatorTree postdom(F);
    std::vector<Instruction *> allUsages;
    for (BasicBlock &bbo : F) {
      for (Instruction &inso : bbo) {
        for (unsigned int i = 0; i < inso.getNumOperands(); i++) {
          if (inso.getOperand(i) == &allocinst)
            allUsages.push_back(&inso);
        }
      }
    }
    for (BasicBlock &bbo : F) {
      // if last instruction post-dominates all usages it becomes lastRead
      Instruction &last = *(--bbo.end());
      bool isPostdom = true;
      for (Instruction *usage : allUsages) {
        if (!postdom.dominates(&last, usage)) {
          isPostdom = false;
          break;
        }
      }
      if (isPostdom && dom.dominates(&allocinst, &last)) {
        return &bbo;
      }
    }
  }
  return lastRead;
}
struct SidedataWatermark : public llvm::PassInfoMixin<SidedataWatermark> {
  static llvm::cl::opt<std::string> SidedataKey;
  static llvm::cl::opt<std::string> SidedataVal;
  static std::string sidedataKey;
  static std::string sidedataVal;
  SidedataWatermark() {
    sidedataKey = SidedataKey.getValue();
    sidedataVal = SidedataVal.getValue();
    if (sidedataKey.empty()) {
      char *env = std::getenv("SIDEDATA_KEY");
      if (env)
        sidedataKey = env;
      env = std::getenv("SIDEDATA_VAL");
      if (env)
        sidedataVal = env;
    }
  }
  void includeWatermark(llvm::Function &F, llvm::BasicBlock &bb,
                        llvm::Value *size, llvm::Instruction &allocinst,
                        llvm::Function *hashfct) {
    using namespace llvm;
    auto dom = DominatorTree(F);
    auto loops = LoopInfo(dom);
    IntegerType *i8t = Type::getInt8Ty(F.getContext());
    IntegerType *i32t = Type::getInt32Ty(F.getContext());
    IntegerType *i64t = Type::getInt64Ty(F.getContext());
    int expected = hashimpl(sidedataKey.c_str(), sidedataKey.size());
#ifdef DEBUG_PRINTS
    errs() << "hash on key " << expected << "\n";
#endif
    // find last usage block of the allocation
    BasicBlock *lastRead = getInsertionBlock(F, allocinst);
    if (!lastRead)
      return;
    // create new blocks and slice jump instr to jump block
    BasicBlock *easterBlock = BasicBlock::Create(F.getContext());
    easterBlock->setName("easterBlock");
#ifndef DONT_USE_POLYNOM
    BasicBlock *easterEventBlock = BasicBlock::Create(F.getContext());
    easterEventBlock->setName("easterEventBlock");
    F.insert(F.end(), easterEventBlock);
#endif
    BasicBlock *jumpBlock = BasicBlock::Create(F.getContext());
    IRBuilder<> jumpbuilder(F.getContext());
    jumpbuilder.SetInsertPoint(jumpBlock);
    jumpBlock->setName("jumpBlock");
    F.insert(F.end(), easterBlock);
    F.insert(F.end(), jumpBlock);
    // move free calls to the array to the jump block
    std::vector<CallInst *> frees;
    for (llvm::Instruction &instr : *lastRead) {
      if (isa<CallInst>(&instr)) {
        CallInst &call = (CallInst &)instr;
        if (call.getCalledFunction() &&
            call.getCalledFunction()->getName() == "free" &&
            (Value *)&allocinst == *call.args().begin()) {
          frees.push_back(&call);
        }
      }
    }
    for (CallInst *free : frees) {
      free->removeFromParent();
      jumpbuilder.Insert(free);
    }
    jumpBlock->splice(jumpBlock->end(), lastRead, --(lastRead->end()));
    FunctionPatcher::adaptPHINodes(&*(--jumpBlock->end()), lastRead, jumpBlock);
    IRBuilder<> bbbuilder(F.getContext());
    bbbuilder.SetInsertPoint(lastRead);
    // calculate hash from alloc
    // assume key is (repeated) in alloc and calculate hash
    Value *paramList[2] = {&allocinst, size};
    Value *hash = bbbuilder.CreateCall(hashfct, paramList);
    // int testValue = rand() % 1711922400l;
    // hash = FunctionPatcher::transformKeyToValue(bbbuilder, hash,
    // expected,
    //                                             testValue);
    //  test hash on expected value from key
    Value *cmp =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_EQ, hash,
                         ConstantInt::get(i32t, expected));
    bbbuilder.Insert(cmp);
    // TODO check if size of array >= watermark size
    // create branch to easter-block
    bbbuilder.CreateCondBr(cmp, easterBlock, jumpBlock);
    // easter-block: transformation of repeated key to
    // watermark (iterate with transform instructions)
    IRBuilder<> easterBuilder(F.getContext());
    easterBuilder.SetInsertPoint(easterBlock);
    AllocaInst *easterString = easterBuilder.CreateAlloca(
        i8t,
        easterBuilder.CreateAdd(size, ConstantInt::get(size->getType(), 1)));
    easterString->setName(easterString->getName() + "_sidedata_patch");
    easterBuilder.CreateLifetimeStart(easterString, nullptr);
#ifndef DONT_USE_POLYNOM
    Function *pol = FunctionPatcher::generatePolynom(
        F.getParent(), sidedataKey, sidedataVal);
    // iterate over key (spoiler: i fucking hate it)
    BasicBlock *testBlock = BasicBlock::Create(F.getContext());
    testBlock->setName("testBlock");
    BasicBlock *loopBlock = BasicBlock::Create(F.getContext());
    loopBlock->setName("loopBlock");
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
        testBuilder.CreateLoad(i8t, testBuilder.CreateGEP(i8t, &allocinst, i));
    // test it
    Value *cmp1 =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE,
                         character, ConstantInt::get(i8t, '\0'));
    Value *cmp2 = ICmpInst::Create(Instruction::ICmp,
                                   ICmpInst::Predicate::ICMP_ULT, i, size);
    Value *cmp3 =
        ICmpInst::Create(Instruction::ICmp, ICmpInst::Predicate::ICMP_NE,
                         character, ConstantInt::get(i8t, '\n'));
    testBuilder.Insert(cmp1);
    testBuilder.Insert(cmp2);
    testBuilder.Insert(cmp3);
    testBuilder.CreateCondBr(
        testBuilder.CreateAnd(cmp3, testBuilder.CreateAnd(cmp1, cmp2)),
        loopBlock, easterEventBlock);

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
	    errs() << "included sidedata in " << F.getParent()->getName() << ", 1 times\n";

#else
    for (unsigned int c = 0; c < sidedataVal.size(); c++) {
      ConstantInt *offset = ConstantInt::get(i32t, c);
      Value *indexList[1] = {offset};
      Value *loadAddr = easterBuilder.CreateGEP(i8t, &allocinst, indexList);
      Value *loadChar = easterBuilder.CreateLoad(i8t, loadAddr);
      Value *charValue = FunctionPatcher::transformKeyToValue(
          easterBuilder, loadChar, sidedataKey.at(c), sidedataVal.at(c));
      used_tailor++;
      Value *storeAddr = easterBuilder.CreateGEP(i8t, easterString, indexList);
      easterBuilder.CreateStore(charValue, storeAddr);
    }
    Value *indexList[1] = {ConstantInt::get(i32t, sidedataVal.size())};
    Value *storeAddr = easterBuilder.CreateGEP(i8t, easterString, indexList);
    easterBuilder.CreateStore(ConstantInt::get(i8t, '\0'), storeAddr);
    //  call printf with prepared string
    easterBuilder.CreateCall(FunctionPatcher::getPrintf(F.getParent()),
                             easterString);
    easterBuilder.CreateLifetimeEnd(easterString, nullptr);
    easterBuilder.CreateBr(jumpBlock);
#endif
#ifdef DEBUG_PRINTS
    errs() << llvm::verifyFunction(F, (raw_ostream *)&errs);
#endif
  }
  llvm::PreservedAnalyses run(llvm::Function &F,
                              llvm::FunctionAnalysisManager &) {
    using namespace llvm;
    if (sidedataKey.size() == 0 || sidedataVal.size() == 0)
      return PreservedAnalyses::all();
    used_tailor = 0;
    IntegerType *i8t = Type::getInt8Ty(F.getContext());
    IntegerType *i32t = Type::getInt32Ty(F.getContext());
    IntegerType *i64t = Type::getInt64Ty(F.getContext());
    Function *hashfct = nullptr;
    for (BasicBlock &bb : F) {
      for (Instruction &ins : bb) {
        if (isa<AllocaInst>(&ins) &&
            !ins.getName().starts_with("_sidedata_patch")) {
          AllocaInst &alloc = (AllocaInst &)(ins);
          alloc.setName(alloc.getName() + "_sidedata_patch");
          if (!alloc.getAllocatedType() ||
              ((!alloc.getAllocatedType()->isArrayTy() ||
                !alloc.getAllocatedType()->getArrayElementType()))) {
#ifdef DEBUG_PRINTS
            errs() << "skip\n";
#endif
            continue;
          }
#ifdef DEBUG_PRINTS
          errs() << "did not skip\n";
#endif
          Instruction &allocinst = alloc;
          // get the allocation size
          Value *size = ConstantInt::get(
              i32t, alloc.getAllocatedType()->getArrayNumElements());
          if (size->getType()->isIntegerTy(32)) {
            auto exz = CastInst::Create(Instruction::CastOps::ZExt, size, i64t);
            exz->insertAfter(&alloc);
            size = exz;
          }
          if (!hashfct)
            hashfct = getHashFunction(F.getParent(), sidedataKey.size());
          includeWatermark(F, bb, size, allocinst, hashfct);
          // return PreservedAnalyses::none();
        } else if (isa<CallInst>(&ins)) {
          CallInst &call = (CallInst &)(ins);
          if (call.getCalledFunction() &&
              call.getCalledFunction()->getName() == "malloc") {
            // this is where the fun begins
            Instruction &allocinst = call;
            // get the allocation size
            Value *size = *call.arg_begin();
            if (size->getType()->isIntegerTy(32)) {
              auto exz =
                  CastInst::Create(Instruction::CastOps::ZExt, size, i64t);
              exz->insertAfter(&call);
              size = exz;
            }
            if (!hashfct)
              hashfct = getHashFunction(F.getParent(), sidedataKey.size());
            includeWatermark(F, bb, size, allocinst, hashfct);
            // return PreservedAnalyses::none();
          }
        }
      }
    }
#ifdef DONT_USE_POLYNOM
    if (used_tailor > 0)
      errs() << "included in " << F.getName() << ", "
             << F.getParent()->getName() << ", " << used_tailor << " times\n";
#endif
    return hashfct == nullptr ? PreservedAnalyses::all()
                              : PreservedAnalyses::none();
  }
};
