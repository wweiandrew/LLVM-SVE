// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecU64LoadFF4VIZ
// Immediate out of lower bound [0, 124].
ldff1w z8.d, p0/z, [z18.d, #-1]
// CHECK: error: index must be a multiple of 4 in range [0, 124].
