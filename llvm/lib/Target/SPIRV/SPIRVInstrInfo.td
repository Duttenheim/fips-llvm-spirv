def StringImm : Operand<i32>
{
    let PrintMethod="printStringImm";
}

// Define an op which is a 16 bit value, inputs and outputs
class Op<bits<16> code, dag outs, dag ins, string asmstr, list<dag> pattern = []> : Instruction
{
    field bits<16> Inst;

    let Inst = OpCode;

    let Namespace = "SPIRV";
    let DecodeNamespace = "SPIRV";

    dag OutOperandList = outs;
    dag InOperandList = ins;
    let AsmString = asmstr;
    let Pattern = pattern;
}

// We don't really have instructions perse, just Ops, so create 
class Pseudo<dag outs, dag ins> : Op<0, outs, ins, "">
{
    let isPseudo = 1;
}