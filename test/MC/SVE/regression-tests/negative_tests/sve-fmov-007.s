// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecD64MovI
// Immediate not compatible with encode/decode function.
fmov z18.d, #-256.0
// CHECK: error: expected compatible register or floating-point constant
