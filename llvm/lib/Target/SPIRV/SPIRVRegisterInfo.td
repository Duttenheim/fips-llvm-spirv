let namespace = "SPIRV" in 
{

// A pointer is just an SSA value, so make a dummy pointer type
def p0 : PtrValueType <i32, 0>;

// Add register for the result (SSA) of an OpType instruction
def OPTYPE0 : Register<"OPTYPE0">;
def OPTYPE : RegisterClass<"SPIRV", [i32], 32, (add OPTYPE0)>;

// Add classes for non-type IDs

def IID0 : Register<"IID0">;
def IID : RegisterClass<"SPIRV", [i32], 32, (add IID0)>;

def FID0 : Register<"FID0">;
def FID : RegisterClass<"SPIRV", [f32], 32, (add FID0)>;

def PID0 : Register<"PID0>;
def PID : RegisterClass<"SPIRV", [p0], 32, (add PID0)>;

def VID0 : Register<"VID0">;
def VID : RegisterClass<"SPIRV", [v2i32], 32, (add VID0)>;

def FVID0 : Register<"FVID0">;
def FVID : RegisterClass<"SPIRV", [v2f32], 32, (add FVID0)>;

def ANYID : RegisterClass<"SPIRV", [i32, f32, p0, v2i32, v2f32], 32, (add IID0, FID0, PID0, VID0, FVID0)>;
def ANY : RegisterClass<"SPIRV", [i32], 32, (add OPTYPE, ID)>;

}