// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU8AddVIX
// Source and Destination Registers must match
add z18.b, z19.b, #0
// CHECK: error: operand must match destination register
