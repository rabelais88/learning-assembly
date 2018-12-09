//
//  test.s
//  asm_macos
//
//  Created by gamecoach on 10/12/2018.
//  Copyright © 2018 sgrl. All rights reserved.
//

# first program for GAS, Clang/LLVM
# 32 bit source code
# intended to build in macOS, Xcode

.data
num: .long 80

.bss
.lcomm sum, 4

.text
.globl _main
_main:
    movl num, %eax
    addl $20, %eax
    movl %eax, sum

    pushl $0
    subl $4, %esp
    movl $1, %eax
    int $0x80
.end
