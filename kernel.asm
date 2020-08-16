bits    32
section     .text
        align   4
        dd  0x1BADB002
        dd  0X00
        dd  - (0x1BADB002+0x00)

global  start
extern  kmain   ; this function exists in the kernel.c file
start:
        cli ; clears the interupts
        call kmain ; send proccessor to continue execution from the kmain functio
        hlt  ; halt  the cpu(pause it from executing from this address)