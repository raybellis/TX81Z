;-------
;
; Bulk dump a single voice
;
SEND_SYSEX_VMEM		CLRB				; B <- 0
1			PSHB				; save B

			LDAA	,X			; A <- (X)
			CMPB	#48			; is B = 48?
			BNE	4F			; no?  branch...

			TIM	#%00000100,$00,X	; test SU bit
			BNE	2F			; set?  branch...
			ANDA	#%11111011		; A <- clear SU bit
			ORAA	#%00000010		; A <- set PO
			BRA	3F			; skip next two
2			ORAA	#%00000100		; A <- set SU
			ANDA	#%11111101		; A <- clear PO
3			ANDA	#$0F			; A <- clear top nybble (CH)

			; send VMEM data 0 .. 66
4			PSHX				; save X
			ANDA	#$7F			; clear top bit
			TAB				; B <- A
			ADDB	MIDI_TX_CRC		; add to running CRC
			STAB	MIDI_TX_CRC		; and save it
			JSR	MIDI_SEND		; send A
			PULX				; restore X
			INX				; X <- X + 1
			PULB				; restore B
			INCB				; B <- B + 1
			CMPB	#67			; B == 67 ?
			BNE	1B			; no?  go around

			PSHX				; save X for later

			; send 3x #99 (PR1 .. PR3)
5			LDAA	#99			; A <- 99
			PSHB				; save B
			TAB				; B <- A (99)
			ADDB	MIDI_TX_CRC		; add to running CRC
			STAB	MIDI_TX_CRC		; and save it
			JSR	MIDI_SEND		; send A
			PULB				; restore B
			INCB				; B <- B + 1
			CMPB	#70			; B == 70 ?
			BNE	5B			; no?  go around

			; send 3x #50 (PL1 .. PL3)
6			LDAA	#50			; A <- 50
			PSHB				; save B
			TAB				; B <- A (50)
			ADDB	MIDI_TX_CRC		; add to running CRC
			STAB	MIDI_TX_CRC		; and save it
			JSR	MIDI_SEND		; send A
			PULB				; restore B
			INCB				; B <- B + 1
			CMPB	#73			; B == 73 ?
			BNE	6B			; no?  go around

			PULX				; restore previous X

			;
			; send 11 more bytes (contiguous with previous 67
			; for a total of 78) but clear the top half of the 6th.
			;
7			PSHB				; save B
			LDAA	,X			; A <- (X)
			CMPB	#79			; B == 79?
			BNE	8F			; no?  skip...
			ANDA	#%00001111		; clear top nybble
8			PSHX				; save X
			ANDA	#$7F			; clear top bit
			TAB				; B <- A
			ADDB	MIDI_TX_CRC		; add to running CRC
			STAB	MIDI_TX_CRC		; and save it
			JSR	MIDI_SEND		; send A
			PULX				; restore X
			INX				; X <- X + 1
			PULB				; restore B
			INCB				; B <- B + 1
			CMPB	#84			; B == 84 ?
			BNE	7B			; no?  go around

			;
			; send 44x $00 ?!
			;
			; CRC handling present but unnecessary since
			; adding zero doesn't change the CRC !
			;
9			CLRA				; A <- 0
			PSHB				; save B
			TAB				; B <- A (0)
			ADDB	MIDI_TX_CRC		; add to running CRC
			STAB	MIDI_TX_CRC		; and save it
			JSR	MIDI_SEND		; send A
			PULB				; restore B
			INCB				; B <- B + 1
			CMPB	#128			; B == 128?
			BNE	9B			; no?  go around
			RTS
