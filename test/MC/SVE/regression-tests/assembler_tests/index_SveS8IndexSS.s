// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
index   z23.b, w13, w8  // 00000100-00101000-01001101-10110111
// CHECK: index   z23.b, w13, w8 // encoding: [0xb7,0x4d,0x28,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00101000-01001101-10110111
INDEX   Z23.B, W13, W8  // 00000100-00101000-01001101-10110111
// CHECK: index   z23.b, w13, w8 // encoding: [0xb7,0x4d,0x28,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00101000-01001101-10110111
index   z31.b, wzr, wzr  // 00000100-00111111-01001111-11111111
// CHECK: index   z31.b, wzr, wzr // encoding: [0xff,0x4f,0x3f,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00111111-01001111-11111111
INDEX   Z31.B, WZR, WZR  // 00000100-00111111-01001111-11111111
// CHECK: index   z31.b, wzr, wzr // encoding: [0xff,0x4f,0x3f,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00111111-01001111-11111111
index   z21.b, w10, w21  // 00000100-00110101-01001101-01010101
// CHECK: index   z21.b, w10, w21 // encoding: [0x55,0x4d,0x35,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00110101-01001101-01010101
INDEX   Z21.B, W10, W21  // 00000100-00110101-01001101-01010101
// CHECK: index   z21.b, w10, w21 // encoding: [0x55,0x4d,0x35,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00110101-01001101-01010101
index   z0.b, w0, w0  // 00000100-00100000-01001100-00000000
// CHECK: index   z0.b, w0, w0 // encoding: [0x00,0x4c,0x20,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00100000-01001100-00000000
INDEX   Z0.B, W0, W0  // 00000100-00100000-01001100-00000000
// CHECK: index   z0.b, w0, w0 // encoding: [0x00,0x4c,0x20,0x04]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000100-00100000-01001100-00000000
