;-------
;
; clear bottom line of LCD (buffer)
; leaves X pointing to the start of the line
;
LCD_CLR_BOTTOM		LDAA	#$10
			BRA	1F

;-------	fallthrough
;
; clear whole LCD (buffer)
; leaves X at the start of the buffer
;
LCD_CLR			LDAA	#$20
1			LDX	#LCD_BUFFER + 32
2			PSHA
			LDAA	#' '
			DEX
			STAA	,X
			PULA
			DECA
			BNE	2B
			RTS
