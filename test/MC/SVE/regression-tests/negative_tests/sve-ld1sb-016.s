// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve  2>&1 < %s| FileCheck %s
// VecS64CLoad1LSSZ
// Offset register Rm cannot be xzr
ld1sb z9.d, p6/z, [x3, xzr]
// CHECK: {{(error\:\ index\ must\ be\ an\ integer\ in\ range)|(error\:\ index\ must\ be\ a\ multiple\ of)}}
