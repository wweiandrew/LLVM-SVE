// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS16MinReduceV
// Restricted predicate has range [0, 7].
sminv h12, p8, z8.h
// CHECK: error: invalid operand
