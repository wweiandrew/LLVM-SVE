// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU16E2Load2SIZ
// Immediate out of upper bound [-16, 14].
ld2h {z22.h, z23.h}, p2/z, [x27, #15, MUL VL]
// CHECK: error: index must be a multiple of 2 in range [-16, 14].
