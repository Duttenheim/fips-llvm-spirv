#pragma once

#include "llvm/Target/TargetMachine.h"

namespace llvm
{

class SPIRVTargetMachine : public LLVMTargetMachine
{
    const DataLayout dataLayout;
    
public:
    SPIRVTargetMachine(const Module& M, const std::string& FS);
    
};
}