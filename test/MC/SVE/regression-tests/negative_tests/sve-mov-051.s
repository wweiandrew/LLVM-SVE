// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64MovI
// Immediate not compatible with encode/decode function.
mov z18.d, #257
// CHECK: error: immediate must be an integer in range [-128, 127] or a multiple of 256 in range [-32768, 32512]
