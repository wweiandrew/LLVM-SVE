// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
uqincp  w23, p13.b  // 00100101-00101001-10001001-10110111
// CHECK: uqincp  w23, p13.b // encoding: [0xb7,0x89,0x29,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00101001-10001001-10110111
UQINCP  W23, P13.B  // 00100101-00101001-10001001-10110111
// CHECK: uqincp  w23, p13.b // encoding: [0xb7,0x89,0x29,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00101001-10001001-10110111
uqincp  w21, p10.b  // 00100101-00101001-10001001-01010101
// CHECK: uqincp  w21, p10.b // encoding: [0x55,0x89,0x29,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00101001-10001001-01010101
UQINCP  W21, P10.B  // 00100101-00101001-10001001-01010101
// CHECK: uqincp  w21, p10.b // encoding: [0x55,0x89,0x29,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00101001-10001001-01010101
uqincp  w0, p0.b  // 00100101-00101001-10001000-00000000
// CHECK: uqincp  w0, p0.b // encoding: [0x00,0x88,0x29,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00101001-10001000-00000000
UQINCP  W0, P0.B  // 00100101-00101001-10001000-00000000
// CHECK: uqincp  w0, p0.b // encoding: [0x00,0x88,0x29,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00101001-10001000-00000000
uqincp  wzr, p15.b  // 00100101-00101001-10001001-11111111
// CHECK: uqincp  wzr, p15.b // encoding: [0xff,0x89,0x29,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00101001-10001001-11111111
UQINCP  WZR, P15.B  // 00100101-00101001-10001001-11111111
// CHECK: uqincp  wzr, p15.b // encoding: [0xff,0x89,0x29,0x25]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00100101-00101001-10001001-11111111
