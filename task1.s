.text
.global main

// task1

main: 
    li x20, 3
    li x21, 4
    li x22, 5
    li x23, 6
    
    bne x22, x23, Else
    add x19, x20, x21
    beq x0, x0, Exit
    Else: sub x19, x20, x21

    Exit:
    
end:
j end