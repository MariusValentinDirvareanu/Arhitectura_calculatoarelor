.include "p24ep256mc202.inc"
.global __reset
    
.bss
    VECT: .space 10*2
 
.text
__reset:
    mov #VECT,W4
    mov #1,W0
    mov #1,W1
    mov #10,W2
FIB1:
    add W0,W1,W3
    mov W3,[W4++]
    mov W0,W1
    mov W3,W0
    dec W2,W2
    bra NZ,FIB1
STOP:
    bra STOP
    





