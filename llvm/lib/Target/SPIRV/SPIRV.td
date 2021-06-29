include "llvm/Target/Target.d"

include "SPIRVInstrInfo.td"

def SPIRVInstrInfo : InstrInfo;

def SPIRV13 : SubtargetFeature<"spirv1.3", "targetSPIRV", "13", "Use SPIR-V version 1.3">;

def SPIRVInstPrinter : AsmWriter 
{
    string AsmWriterClassName = "InstPrinter";
    bit isMCAsmWriter = 1;
}

def SPIRV : Target
{
    let InstructionSet = SPIRVInstrInfo;
    let AssemblyWriters = [SPIRVInstPrinter];
}