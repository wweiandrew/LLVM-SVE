// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
sub     z1.b, z1.b, #33  // 00100101-00100001-11000100-00100001
// CHECK: sub     z1.b, z1.b, #33 // encoding: [0x21,0xc4,0x21,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00100001-11000100-00100001
SUB     Z1.B, Z1.B, #33  // 00100101-00100001-11000100-00100001
// CHECK: sub     z1.b, z1.b, #33 // encoding: [0x21,0xc4,0x21,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00100001-11000100-00100001
sub     z5.b, z5.b, #113  // 00100101-00100001-11001110-00100101
// CHECK: sub     z5.b, z5.b, #113 // encoding: [0x25,0xce,0x21,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00100001-11001110-00100101
SUB     Z5.B, Z5.B, #113  // 00100101-00100001-11001110-00100101
// CHECK: sub     z5.b, z5.b, #113 // encoding: [0x25,0xce,0x21,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00100001-11001110-00100101
sub     z0.b, z0.b, #0  // 00100101-00100001-11000000-00000000
// CHECK: sub     z0.b, z0.b, #0 // encoding: [0x00,0xc0,0x21,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00100001-11000000-00000000
SUB     Z0.B, Z0.B, #0  // 00100101-00100001-11000000-00000000
// CHECK: sub     z0.b, z0.b, #0 // encoding: [0x00,0xc0,0x21,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00100001-11000000-00000000
sub     z21.b, z21.b, #170  // 00100101-00100001-11010101-01010101
// CHECK: sub     z21.b, z21.b, #170 // encoding: [0x55,0xd5,0x21,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00100001-11010101-01010101
SUB     Z21.B, Z21.B, #170  // 00100101-00100001-11010101-01010101
// CHECK: sub     z21.b, z21.b, #170 // encoding: [0x55,0xd5,0x21,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00100001-11010101-01010101
