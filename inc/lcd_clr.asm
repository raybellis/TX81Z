;-------
;
; clear bottom line of LCD (buffer)
;
LCD_CLR_BOTTOM		LDAA	#$10
			BRA	1F

;-------	fallthrough
;
; clear whole LCD (buffer)
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
