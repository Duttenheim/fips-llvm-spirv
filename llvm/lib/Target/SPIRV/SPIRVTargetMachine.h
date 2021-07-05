#pragma once

#include "llvm/Target/TargetMachine.h"

namespace llvm
{

class SPIRVTargetMachine : public LLVMTargetMachine
{
    const DataLayout dataLayout;
    
public:
    SPIRVTargetMachine(const Target& T
                       , const Triple& TT
                       , StringRef CPU
                       , StringRef FS
                       , TargetOptions Options
                       , Optional<Reloc::Model> RM
                       , Optional<CodeModel::Model> CM
                       , CodeGenOpt::Level OptLevel);
    
};
}