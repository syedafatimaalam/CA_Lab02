.text
.globl main

#task1

main: 
    li x22, 0 #i
    li x23, 0 #sum
    li x25, 10

    li x10, 0x200
     #array adress store

    sb x8, 0(x7)

    Loop: 
        bge x22, x25, loopend
        slli x5, x22, 2
        add x6, x10, x5
        sw x22, 0(x6)
       
        addi x22, x22, 1
        beq x0, x0, Loop
    loopend:
        li x22,0
        li x23,0

    Loop2: 
        bge x22, x25, Exit
        slli x5, x22, 2
        add x6, x10, x5
        lw t0, 0(x6)
        add x23, x23, t0 #sum = sum +a[i]
        addi x22,x22,1
        beq x0, x0, Loop2
    Exit:
    
end:
    j end