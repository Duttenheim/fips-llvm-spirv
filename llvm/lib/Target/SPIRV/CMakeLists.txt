add_llvm_component_group(SPIRV)

set(LLVM_TARGET_DEFINITIONS SPIRV.td)

tablegen(LLVM SPIRVGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM SPIRVGenGlobalISel.inc -gen-global-isel)
tablegen(LLVM SPIRVGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM SPIRVGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM SPIRVGenRegisterBank.inc -gen-register-bank)
tablegen(LLVM SPIRVGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM SPIRVGenSubtargetInfo.inc -gen-subtarget)

add_public_tablegen_target(SPIRVCommonTableGen)

add_llvm_target(SPIRVCodeGen
  SPIRVAsmPrinter.cc
  SPIRVAsmPrinter.h
  SPIRVCodeGen.cc
  SPIRVCodeGen.h
  SPIRVIRTranslator.cc
  SPIRVIRTranslator.h
  SPIRVTargetMachine.cc
  SPIRVTargetMachine.h

  LINK_COMPONENTS
  Analysis
  AsmPrinter
  CodeGen
  Core
  IPO
  MC
  Passes
  Scalar
  SelectionDAG
  Support
  Target
  TransformUtils
  GlobalISel
  BinaryFormat
  MIRParser

  ADD_TO_COMPONENT
  SPIRV
)