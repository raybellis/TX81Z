;****************************************************
;* Common LCD Handling Routines
;****************************************************

;-------
;
; Outputs the string from @(X) which is terminated
; by any character < 0x20
;
; Values >= 0x80 are pointers into a string table
; at PUTSTR_OFFSET which must be defined in the main
; source.  The string table supports recursive lookups
;

PUTSTRX		
0			LDAB	,X
			BMI	2F		; >= 0x80 - use string lookup
			CMPB	#$20		; <  0x20 - terminate
			BCC	1F
			RTS
1			BSR	PUTCHAR		; add the char and go around again
			INX
			BRA	0B
2			PSHX			; string lookup
			LDX	#PUTSTR_OFFSET
			ABX
			BSR	0B		; add recursively
			PULX
			INX
			BRA	0B		; and go around again

		IFC	&BANK,HI
			FCB	$00
		ENDIF

;-------
;
; Store character B in @DPTR and increment pointer
; - no registers modified
;
PUTCHAR			PSHX
			LDX	DPTR
			STAB	,X
			INX
			STX	DPTR
			PULX
			RTS

;-------
;
; Wait for the busy flag on the LCD to clear
;
LCD_WAIT		TST	LCD_CMD
			BMI	LCD_WAIT
			RTS

;-------
;
; Update LCD with the contents of the LCD buffer,
; skipping characters that are already showing the
; expected output
;
LCD_UPDATE		LDX	#LCD_BUFFER	; set SPTR to LCD buffer
			STX	SPTR
			LDX	#LCD_COPY	; set DPTR to LCD copy buffer
			STX	DPTR
			LDAB	#$80		; initial DDRAM address
1			LDX	SPTR		; get character and update pointer
			LDAA	,X
			INX
			STX	SPTR
			LDX	DPTR		; compare with char in copy buffer 
			CMPA	,X		;
			BEQ	2F		; skip if it's unchanged
			BSR	LCD_WAIT
			STAB	LCD_CMD
			BSR	LCD_WAIT
			STAA	LCD_DATA
			STAA	,X		; save char in copy buffer
2			INX			; update copy buffer pointer
			STX	DPTR
			INCB			; update DDRAM address
			CMPB	#$D0		; at end of line 2 -> finish
			BEQ	3F
			CMPB	#$90		; at end of line 1 set addr to $80
			BNE	1B
			LDAB	#$C0
			BRA	1B		; and carry on
3			RTS

;-------
;
; Output text from @(X) on line 1
;
LCD_OUT			PSHX
			LDX	#LCD_BUFFER
			STX	DPTR
			PULX

;------- fallthrough
;
; Add text from @(X) at current output position
;

LCD_WRITE		JSR	PUTSTRX
			JMP	LCD_UPDATE
