# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=+sve < %s | FileCheck %s
# RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -disassemble -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR  %s
0x45,0x35,0x75,0x84
# CHECK: prfh    pldl3strm, p5, [x10, z21.s, sxtw #1] // encoding: [0x45,0x35,0x75,0x84]
# CHECK-ERROR-NOT: prfh    pldl3strm, p5, [x10, z21.s, sxtw #1] 
0xef,0x3f,0x7f,0x84
# CHECK: prfh    #15, p7, [sp, z31.s, sxtw #1] // encoding: [0xef,0x3f,0x7f,0x84]
# CHECK-ERROR-NOT: prfh    #15, p7, [sp, z31.s, sxtw #1] 
0xa7,0x2d,0x68,0x84
# CHECK: prfh    #7, p3, [x13, z8.s, sxtw #1] // encoding: [0xa7,0x2d,0x68,0x84]
# CHECK-ERROR-NOT: prfh    #7, p3, [x13, z8.s, sxtw #1] 
0x00,0x20,0x60,0x84
# CHECK: prfh    pldl1keep, p0, [x0, z0.s, sxtw #1] // encoding: [0x00,0x20,0x60,0x84]
# CHECK-ERROR-NOT: prfh    pldl1keep, p0, [x0, z0.s, sxtw #1] 
