# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xef,0x9f,0x9f,0x25
# CHECK: cmpeq   p15.s, p7/z, z31.s, #-1 // encoding: [0xef,0x9f,0x9f,0x25]
# CHECK-ERROR-NOT: cmpeq   p15.s, p7/z, z31.s, #-1 
0xa7,0x8d,0x88,0x25
# CHECK: cmpeq   p7.s, p3/z, z13.s, #8 // encoding: [0xa7,0x8d,0x88,0x25]
# CHECK-ERROR-NOT: cmpeq   p7.s, p3/z, z13.s, #8 
0x45,0x95,0x95,0x25
# CHECK: cmpeq   p5.s, p5/z, z10.s, #-11 // encoding: [0x45,0x95,0x95,0x25]
# CHECK-ERROR-NOT: cmpeq   p5.s, p5/z, z10.s, #-11 
0x00,0x80,0x80,0x25
# CHECK: cmpeq   p0.s, p0/z, z0.s, #0 // encoding: [0x00,0x80,0x80,0x25]
# CHECK-ERROR-NOT: cmpeq   p0.s, p0/z, z0.s, #0 
