// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
add     z31.s, z31.s, #255, lsl #8  // 00100101-10100000-11111111-11111111
// CHECK: add     z31.s, z31.s, #65280 // encoding: [0xff,0xff,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11111111-11111111
ADD     Z31.S, Z31.S, #255, LSL #8  // 00100101-10100000-11111111-11111111
// CHECK: add     z31.s, z31.s, #65280 // encoding: [0xff,0xff,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11111111-11111111
add     z31.s, z31.s, #65280  // 00100101-10100000-11111111-11111111
// CHECK: add     z31.s, z31.s, #65280 // encoding: [0xff,0xff,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11111111-11111111
ADD     Z31.S, Z31.S, #65280  // 00100101-10100000-11111111-11111111
// CHECK: add     z31.s, z31.s, #65280 // encoding: [0xff,0xff,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11111111-11111111
add     z21.s, z21.s, #170  // 00100101-10100000-11010101-01010101
// CHECK: add     z21.s, z21.s, #170 // encoding: [0x55,0xd5,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11010101-01010101
ADD     Z21.S, Z21.S, #170  // 00100101-10100000-11010101-01010101
// CHECK: add     z21.s, z21.s, #170 // encoding: [0x55,0xd5,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11010101-01010101
add     z0.s, z0.s, #0  // 00100101-10100000-11000000-00000000
// CHECK: add     z0.s, z0.s, #0 // encoding: [0x00,0xc0,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11000000-00000000
ADD     Z0.S, Z0.S, #0  // 00100101-10100000-11000000-00000000
// CHECK: add     z0.s, z0.s, #0 // encoding: [0x00,0xc0,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11000000-00000000
add     z23.s, z23.s, #109, lsl #8  // 00100101-10100000-11101101-10110111
// CHECK: add     z23.s, z23.s, #27904 // encoding: [0xb7,0xed,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11101101-10110111
ADD     Z23.S, Z23.S, #109, LSL #8  // 00100101-10100000-11101101-10110111
// CHECK: add     z23.s, z23.s, #27904 // encoding: [0xb7,0xed,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11101101-10110111
add     z23.s, z23.s, #27904  // 00100101-10100000-11101101-10110111
// CHECK: add     z23.s, z23.s, #27904 // encoding: [0xb7,0xed,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11101101-10110111
ADD     Z23.S, Z23.S, #27904  // 00100101-10100000-11101101-10110111
// CHECK: add     z23.s, z23.s, #27904 // encoding: [0xb7,0xed,0xa0,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-10100000-11101101-10110111
