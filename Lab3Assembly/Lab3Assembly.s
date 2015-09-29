.text
.global _start
_start:
movi r7, 0x1000 
movi r8, 0x0000 
movi r9, 0x0000 
movi r10, 0x0000 
movi r7, 0x0ffc
ldw r5, (r7) 
subi r5, r5, 0x0002
stw r8, (r7) 
addi r7, r7, 0x0004
movi r9, 0x0001
stw r9, (r7) 
addi r7, r7, 0x0004
loop:
add r10, r8, r9
stw r10, (r7)
mov r8, r9
mov r9, r10
addi r7, r7, 0x0004
subi r5, r5, 0x0001
bgtu r5, r0, loop
.end
