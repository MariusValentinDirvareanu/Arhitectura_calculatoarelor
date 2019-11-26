.include "p24ep256mc202.inc"
.global __reset
    
.text
__reset:
    mov #23456,w0
    mov #34567,w2
    
    mov #0,w1
    mov #16,w3
    
MP16a:
    bclr SR,#C   ;C=0
    btsc w0,#0
    add w1,w2,w1
    rrc w1,w1
    rrc w0,w0
    dec w3,w3
    bra NZ,MP16a
    
STOP:
    bra STOP
    


