;****************************************************
;* Common RAM memory locations			    *
;****************************************************

XROM			EQU	$0040	; storage for XROM call number

USER_VOICE		EQU	$6001	; user voices (32 x 78 bytes = 2496)
					; $6001 .. $69C0

USER_PFM		EQU	$6E45	; user PFMs (24 x 76 bytes = 1824)
					; $6E45 .. $7564

LCD_COPY		EQU	$7D8B	; copy of current LCD output (32 bytes)

LCD_BUFFER		EQU	$7DAB	; buffer for pending LCD output (32 bytes)

STACK_TOP		EQU	$7FFF	; the top of the stack
