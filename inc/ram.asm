;****************************************************
;* Common RAM memory locations			    *
;****************************************************

XROM			EQU	$0040	; storage for XROM call number

USER_VOICE		EQU	$6001	; start of user voices (32 x 78 bytes = 0x9c0)
USER_PFM		EQU	$6E45	; start of user PFMs (24 x 76 bytes = 0x720)

LCD_COPY		EQU	$7D8B	; copy of current LCD output (32 bytes)
LCD_BUFFER		EQU	$7DAB	; buffer for pending LCD output (32 bytes)
