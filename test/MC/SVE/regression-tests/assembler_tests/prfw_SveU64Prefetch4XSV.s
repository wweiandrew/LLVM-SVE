// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
prfw    pldl1keep, p0, [x0, z0.d, sxtw #2]  // 11000100-01100000-01000000-00000000
// CHECK: prfw    pldl1keep, p0, [x0, z0.d, sxtw #2] // encoding: [0x00,0x40,0x60,0xc4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000100-01100000-01000000-00000000
PRFW    PLDL1KEEP, P0, [X0, Z0.D, SXTW #2]  // 11000100-01100000-01000000-00000000
// CHECK: prfw    pldl1keep, p0, [x0, z0.d, sxtw #2] // encoding: [0x00,0x40,0x60,0xc4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000100-01100000-01000000-00000000
prfw    pldl3strm, p5, [x10, z21.d, sxtw #2]  // 11000100-01110101-01010101-01000101
// CHECK: prfw    pldl3strm, p5, [x10, z21.d, sxtw #2] // encoding: [0x45,0x55,0x75,0xc4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000100-01110101-01010101-01000101
PRFW    PLDL3STRM, P5, [X10, Z21.D, SXTW #2]  // 11000100-01110101-01010101-01000101
// CHECK: prfw    pldl3strm, p5, [x10, z21.d, sxtw #2] // encoding: [0x45,0x55,0x75,0xc4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000100-01110101-01010101-01000101
prfw    #15, p7, [sp, z31.d, sxtw #2]  // 11000100-01111111-01011111-11101111
// CHECK: prfw    #15, p7, [sp, z31.d, sxtw #2] // encoding: [0xef,0x5f,0x7f,0xc4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000100-01111111-01011111-11101111
PRFW    #15, P7, [SP, Z31.D, SXTW #2]  // 11000100-01111111-01011111-11101111
// CHECK: prfw    #15, p7, [sp, z31.d, sxtw #2] // encoding: [0xef,0x5f,0x7f,0xc4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000100-01111111-01011111-11101111
prfw    #7, p3, [x13, z8.d, sxtw #2]  // 11000100-01101000-01001101-10100111
// CHECK: prfw    #7, p3, [x13, z8.d, sxtw #2] // encoding: [0xa7,0x4d,0x68,0xc4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000100-01101000-01001101-10100111
PRFW    #7, P3, [X13, Z8.D, SXTW #2]  // 11000100-01101000-01001101-10100111
// CHECK: prfw    #7, p3, [x13, z8.d, sxtw #2] // encoding: [0xa7,0x4d,0x68,0xc4]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 11000100-01101000-01001101-10100111
