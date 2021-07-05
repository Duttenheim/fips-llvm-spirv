#include "SPIRVTargetMachine.h"

namespace llvm
{

//------------------------------------------------------------------------------
/**
*/
static StringRef 
computeDataLayout(const Triple& triple)
{
    if (triple.getArch() == Triple::spirv32)
        return "-p:32:32";
    else if (triple.getArch() == Triple::spirv64)
        return "-p:64:64";
    if (triple.getArch() == Triple::spirvl)
        return "-p:8:8";
}

//------------------------------------------------------------------------------
/**
*/
SPIRVTargetMachine::SPIRVTargetMachine(const Target& target
                       , const Triple& triple
                       , StringRef cpu
                       , StringRef fs
                       , TargetOptions options
                       , Optional<Reloc::Model> relocModel
                       , Optional<CodeModel::Model> codeModel
                       , CodeGenOpt::Level optLevel) :
    LLVMTargetMachine(target, computeDataLayout(triple), triple, cpu, fs, options, relocModel, codeModel, optLevel)
{
    this->setRequiresStructuredCFG(true);
}

}