// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
cpy     z21.d, p5/m, d10  // 00000101-11100000-10010101-01010101
// CHECK: mov     z21.d, p5/m, d10 // encoding: [0x55,0x95,0xe0,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100000-10010101-01010101
CPY     Z21.D, P5/M, D10  // 00000101-11100000-10010101-01010101
// CHECK: mov     z21.d, p5/m, d10 // encoding: [0x55,0x95,0xe0,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100000-10010101-01010101
cpy     z31.d, p7/m, d31  // 00000101-11100000-10011111-11111111
// CHECK: mov     z31.d, p7/m, d31 // encoding: [0xff,0x9f,0xe0,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100000-10011111-11111111
CPY     Z31.D, P7/M, D31  // 00000101-11100000-10011111-11111111
// CHECK: mov     z31.d, p7/m, d31 // encoding: [0xff,0x9f,0xe0,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100000-10011111-11111111
cpy     z23.d, p3/m, d13  // 00000101-11100000-10001101-10110111
// CHECK: mov     z23.d, p3/m, d13 // encoding: [0xb7,0x8d,0xe0,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100000-10001101-10110111
CPY     Z23.D, P3/M, D13  // 00000101-11100000-10001101-10110111
// CHECK: mov     z23.d, p3/m, d13 // encoding: [0xb7,0x8d,0xe0,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100000-10001101-10110111
cpy     z0.d, p0/m, d0  // 00000101-11100000-10000000-00000000
// CHECK: mov     z0.d, p0/m, d0 // encoding: [0x00,0x80,0xe0,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100000-10000000-00000000
CPY     Z0.D, P0/M, D0  // 00000101-11100000-10000000-00000000
// CHECK: mov     z0.d, p0/m, d0 // encoding: [0x00,0x80,0xe0,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-11100000-10000000-00000000
