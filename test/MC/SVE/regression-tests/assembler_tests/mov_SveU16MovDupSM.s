// RUN: llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=+sve < %s | FileCheck %s
// RUN: not llvm-mc -triple=aarch64-none-linux-gnu -show-encoding -mattr=-sve 2>&1 < %s | FileCheck --check-prefix=CHECK-ERROR %s
mov     z31.h, p7/m, wsp  // 00000101-01101000-10111111-11111111
// CHECK: mov     z31.h, p7/m, wsp // encoding: [0xff,0xbf,0x68,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01101000-10111111-11111111
MOV     Z31.H, P7/M, WSP  // 00000101-01101000-10111111-11111111
// CHECK: mov     z31.h, p7/m, wsp // encoding: [0xff,0xbf,0x68,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01101000-10111111-11111111
mov     z23.h, p3/m, w13  // 00000101-01101000-10101101-10110111
// CHECK: mov     z23.h, p3/m, w13 // encoding: [0xb7,0xad,0x68,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01101000-10101101-10110111
MOV     Z23.H, P3/M, W13  // 00000101-01101000-10101101-10110111
// CHECK: mov     z23.h, p3/m, w13 // encoding: [0xb7,0xad,0x68,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01101000-10101101-10110111
mov     z0.h, p0/m, w0  // 00000101-01101000-10100000-00000000
// CHECK: mov     z0.h, p0/m, w0 // encoding: [0x00,0xa0,0x68,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01101000-10100000-00000000
MOV     Z0.H, P0/M, W0  // 00000101-01101000-10100000-00000000
// CHECK: mov     z0.h, p0/m, w0 // encoding: [0x00,0xa0,0x68,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01101000-10100000-00000000
mov     z21.h, p5/m, w10  // 00000101-01101000-10110101-01010101
// CHECK: mov     z21.h, p5/m, w10 // encoding: [0x55,0xb5,0x68,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01101000-10110101-01010101
MOV     Z21.H, P5/M, W10  // 00000101-01101000-10110101-01010101
// CHECK: mov     z21.h, p5/m, w10 // encoding: [0x55,0xb5,0x68,0x05]
// CHECK-ERROR: {{(unexpected token in argument list)|(invalid operand for instruction)|(invalid sve vector register)|(unexpected floating point literal)|(expected ']' in brackets expression)|(instruction requires: sve)|(vector register expected)|(immediate must be an integer in range \[-128, 127\] or a multiple of 256 in range \[-32768, 32512\])}}
// CHECK-ERROR-NEXT: 00000101-01101000-10110101-01010101
