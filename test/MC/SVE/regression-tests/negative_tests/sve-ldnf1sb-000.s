// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS16CLoadNF1SIZ
// Restricted predicate has range [0, 7].
ldnf1sb z23.h, p8/z, [x7, #5, MUL VL]
// CHECK: error: invalid operand
