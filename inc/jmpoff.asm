;****************************************************
;*  Computed relative jumps based on the data	    *
;*  following the JSR instruction.		    *
;****************************************************

; JMPOFF1: Data is pairs of <offset, value> with the values in
; ascending order except that the last value is always 0x00

JMPOFF1 		PULX

1			TST	$01,X
			BEQ	2F
			CMPB	$01,X
			BCS	2F
			INX
			INX
			BRA	1B

2			PSHB
			LDAB	,X
			ABX
			PULB
			JMP	,X

; JUMPOFFA: 
; A is an index into the table, PC -> PC + A + table[A]

JMPOFFA			PULX
			PSHB
			TAB
			BRA	3F

; JUMPOFFB: 
; B is an index into the table, PC -> PC + A + table[A]

JMPOFFB 		PULX
			PSHB
3			ABX
			LDAB	,X
			ABX
			PULB
			JMP	,X
