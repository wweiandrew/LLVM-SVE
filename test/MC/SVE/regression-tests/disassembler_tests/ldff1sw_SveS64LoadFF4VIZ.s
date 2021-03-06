# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0xb7,0xad,0x28,0xc5
# CHECK: ldff1sw {z23.d}, p3/z, [z13.d, #32] // encoding: [0xb7,0xad,0x28,0xc5]
# CHECK-ERROR-NOT: ldff1sw {z23.d}, p3/z, [z13.d, #32] 
0x00,0xa0,0x20,0xc5
# CHECK: ldff1sw {z0.d}, p0/z, [z0.d] // encoding: [0x00,0xa0,0x20,0xc5]
# CHECK-ERROR-NOT: ldff1sw {z0.d}, p0/z, [z0.d] 
0xff,0xbf,0x3f,0xc5
# CHECK: ldff1sw {z31.d}, p7/z, [z31.d, #124] // encoding: [0xff,0xbf,0x3f,0xc5]
# CHECK-ERROR-NOT: ldff1sw {z31.d}, p7/z, [z31.d, #124] 
0x55,0xb5,0x35,0xc5
# CHECK: ldff1sw {z21.d}, p5/z, [z10.d, #84] // encoding: [0x55,0xb5,0x35,0xc5]
# CHECK-ERROR-NOT: ldff1sw {z21.d}, p5/z, [z10.d, #84] 
