// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS32DivRVVM
// Restricted predicate has range [0, 7].
sdivr z11.s, p8/m, z11.s, z27.s
// CHECK: error: invalid operand
