.include "p24ep256mc202.inc"
    
.extern _v
.extern _p
.extern _x
    
.global _permutare
    
.text 
    
_permutare:
    mov #_v,w0
    mov #_p,w1
    mov #_x,w2
    mov #5,w3
    
_perm1:
    mov [w1++],w4
    add w4,w4,w4
    add w4,w0,w4
    mov [w4],w5
    mov w5,[w2++]
    dec w3,w3
    bra NZ,_perm1
    return
    