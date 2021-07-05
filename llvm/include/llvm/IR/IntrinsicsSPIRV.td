//===- IntrinsicsSPIRV.td - Defines all LLVM intrinsics ----*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file defines properties of all SPIRV intrinsics.
//
//===----------------------------------------------------------------------===//

let TargetPrefix = "SPIRV" in 
{
  // add
  def int_SPIRV_add : GCCBuiltin<"__builtin_spirv_add">,
                      Intrinsic<[llvm_any_ty],
                      [LLVMMatchType<0>, LLVMMatchType<0>],
                      [IntrNoMem, Commutative, IntrWillReturn]>;

  def int_SPIRV_sub : GCCBuiltin<"__builtin_spirv_sub">,
                      Intrinsic<[llvm_any_ty],
                      [LLVMMatchType<0>, LLVMMatchType<0>],
                      [IntrNoMem, Commutative, IntrWillReturn]>;

  def int_SPIRV_div : GCCBuiltin<"__builtin_spirv_div">,
                      Intrinsic<[llvm_any_ty],
                      [LLVMMatchType<0>, LLVMMatchType<0>],
                      [IntrNoMem, Commutative, IntrWillReturn]>;

  def int_SPIRV_mul : GCCBuiltin<"__builtin_spirv_mul">,
                      Intrinsic<[llvm_any_ty],
                      [LLVMMatchType<0>, LLVMMatchType<0>],
                      [IntrNoMem, Commutative, IntrWillReturn]>;
}