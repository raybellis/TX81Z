;****************************************************
;*  Computed relative jumps based on the data	    *
;*  following the JSR instruction.		    *
;****************************************************

; JMPOFF1: Data is pairs of <offset, value> with the values in
; ascending order except that the last value is always 0x00

JMPOFF1 		PULX

_LJMPLOOP		TST	$01,X
			BEQ	_LJMPGO
			CMPB	$01,X
			BCS	_LJMPGO
			INX
			INX
			BRA	_LJMPLOOP

_LJMPGO			PSHB
			LDAB	,X
			ABX
			PULB
			JMP	,X

; JUMPOFFA: 
; A is an index into the table, PC -> PC + A + table[A]

JMPOFFA			PULX
			PSHB
			TAB
			BRA	_LJMPB

; JUMPOFFB: 
; B is an index into the table, PC -> PC + A + table[A]

JMPOFFB 		PULX
			PSHB
_LJMPB			ABX
			LDAB	,X
			ABX
			PULB
			JMP	,X
