// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecF32MinNumVVM
// Restricted predicate has range [0, 7].
fminnm z28.s, p8/m, z28.s, z24.s
// CHECK: error: invalid operand
