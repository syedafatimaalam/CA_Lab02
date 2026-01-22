.text
.globl main

#task1

main: 
    li x20, 3
    li x22, 5
    li x23, 6

    li t0,1
    beq x20, t0,a

    li t0,2
    beq x20, t0,b

    li t0,3
    beq x20, t0,c

    li t0,4
    beq x20, t0,d
    
    a: add x21, x22, x23
    beq x0,x0, Exit
    b: sub x21, x22, x23
    beq x0,x0, Exit
    c: slli x21, x22, 1
    beq x0,x0, Exit
    d: srai x21, x22, 1
    default: li x21,0
    beq x0,x0, Exit
    Exit:
    
end:
    j end