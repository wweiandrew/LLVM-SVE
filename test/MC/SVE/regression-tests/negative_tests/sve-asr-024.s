// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64ShrVIX
// Immediate not compatible with encode/decode function.
asr z1.d, z2.d, #0
// CHECK: error: immediate must be an integer in range [1, 64]
