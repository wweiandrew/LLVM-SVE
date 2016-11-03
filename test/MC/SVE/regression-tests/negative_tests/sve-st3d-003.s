// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64E3Store8SIZ
// Immediate out of lower bound [-24, 21].
st3d {z2.d, z3.d, z4.d}, p1, [x27, #-25, MUL VL]
// CHECK: error: index must be a multiple of 3 in range [-24, 21].
