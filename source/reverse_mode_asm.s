.text
.align 4

.set FUN_00178960, 0x00178960
.set LAB_0030bca4, 0x0030bca4
.set Force__Get, 0x00414b3c
.set Force__IsAllied, 0x00456088

ReverseModeAsm:
    ldr        r0, [r4, #0x0]
    ldr        r0, [r0,#0xcc]
    ldrb       r0, [r0, #0x8]
    bl         Force__Get
    mov        r1, #0x0
    bl         Force__IsAllied
    cmp        r0, #0x0
    bne        LAB_0030bca4
    ldrb       r1, [r5, #0x0]
    add        r0, r4, #0x30
    bl         FUN_00178960
    b          LAB_0030bca4