# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x00,0x60,0x80,0xe4
# CHECK: stnt1h  {z0.h}, p0, [x0, x0, lsl #1] // encoding: [0x00,0x60,0x80,0xe4]
# CHECK-ERROR-NOT: stnt1h  {z0.h}, p0, [x0, x0, lsl #1] 
0xb7,0x6d,0x88,0xe4
# CHECK: stnt1h  {z23.h}, p3, [x13, x8, lsl #1] // encoding: [0xb7,0x6d,0x88,0xe4]
# CHECK-ERROR-NOT: stnt1h  {z23.h}, p3, [x13, x8, lsl #1] 
0x25,0x6e,0x90,0xe4
# CHECK: stnt1h  {z5.h}, p3, [x17, x16, lsl #1] // encoding: [0x25,0x6e,0x90,0xe4]
# CHECK-ERROR-NOT: stnt1h  {z5.h}, p3, [x17, x16, lsl #1] 
0x55,0x75,0x95,0xe4
# CHECK: stnt1h  {z21.h}, p5, [x10, x21, lsl #1] // encoding: [0x55,0x75,0x95,0xe4]
# CHECK-ERROR-NOT: stnt1h  {z21.h}, p5, [x10, x21, lsl #1] 
