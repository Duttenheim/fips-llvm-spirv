#include "SPIRVTargetMachine.h"

namespace llvm
{
SPIRVTargetMachine::SPIRVTargetMachine(const Module& m, const std::string& fs) 
{
    this->setRequiresStructuredCFG(true);
}

}