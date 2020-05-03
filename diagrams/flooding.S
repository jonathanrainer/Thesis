...
start:
    addi    a0, 100
    addi    t0, 0x2000
    add     t6, zero, zero
loop_start:
    lw      t2, 0(t0)
    lw      t3, 4(t0)
    lw      t4, 8(t0)
    lw      t5, 12(t0)
computation:
    add     a1, t1, t2
    and     a1, a1, t3
    sub     a1, a1, t4
    mul     a1, a1, t5
loop_check:
    addi    t6, 1
    add     t0, t0, 16
    bne     t6, a0, loop_start
....
