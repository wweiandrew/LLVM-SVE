// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU16SubVIX
// Source and Destination Registers must match
sub z29.h, z30.h, #0
// CHECK: error: operand must match destination register
