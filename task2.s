.text
.globl main

// task1

main: 
    li x20, 3
    li x21, 4
    li x22, 5
    li x23, 6
    
    beq x20, 1,a
    beq x20, 2,b
    beq x20, 3,c
    beq x20, 4,d
    
    a: add x21, x22, x23
    b: sub x21, x22, x23
    c: slli x21, x22, 1
    a: srai x21, x22, 1
    default: li x21,0
    beq x0,x0, Exit
    Exit:
    
end:
    j end