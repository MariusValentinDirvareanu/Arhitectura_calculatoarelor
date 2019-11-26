.include "p33ep256mc202.inc"
	
.global	_calcul
	
.extern	_u
.extern	_i
.extern	_p
	
_calcul:
	bset	CORCON,#IF
 	mov		#_u,W8
	mov		#_i,W10
	clr		A,[W8]+=2,W4,[W10]+=2,W5
	repeat	#255
	mac		W4*W5,A,[W8]+=2,W4,[W10]+=2,W5
	sftac	A,#8
	mov		ACCAL,W0
	mov		W0,_p
	mov		ACCAH,W0
	mov		W0,_p+2
	
	return


