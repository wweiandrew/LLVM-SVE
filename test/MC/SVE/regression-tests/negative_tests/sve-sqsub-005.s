// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS16QSubVIX
// Source and Destination Registers must match
sqsub z5.h, z6.h, #0
// CHECK: error: operand must match destination register
