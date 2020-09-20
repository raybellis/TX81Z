;****************************************************
;* A09 Assembler options			    *
;****************************************************

	IF	&VERSION < $012C
		ERR	"Incompatible assembler version - 1.44 or higher required"
	ENDIF

			OPT	H03,NCL,NOW,EXP

FILCHR			TEXT	$FF
BANK			TEXT	LO

			INCLUDE	"inc/hw.asm"
			INCLUDE	"inc/ram.asm"
			INCLUDE	"inc/constants.asm"
			INCLUDE	"inc/macros.asm"

;****************************************************
;* Used Labels					    *
;****************************************************

;------- CPU RAM

M0051			EQU	$0051
M0052			EQU	$0052
M0056			EQU	$0056
M0058			EQU	$0058
M005A			EQU	$005A
M0077			EQU	$0077
M0079			EQU	$0079
M007B			EQU	$007B
M009A			EQU	$009A
M009F			EQU	$009F
M00A3			EQU	$00A3
M00A5			EQU	$00A5
M00A6			EQU	$00A6
M00AB			EQU	$00AB
M00AC			EQU	$00AC
M00C7			EQU	$00C7
M00CC			EQU	$00CC
M00CD			EQU	$00CD
M00CE			EQU	$00CE
M00CF			EQU	$00CF
M00D0			EQU	$00D0
M00D1			EQU	$00D1
M00D2			EQU	$00D2
M00D3			EQU	$00D3
M00D4			EQU	$00D4
M00D5			EQU	$00D5
M00D6			EQU	$00D6
M00D7			EQU	$00D7
M00D8			EQU	$00D8
M00D9			EQU	$00D9
M00DA			EQU	$00DA
M00DC			EQU	$00DC
M00DE			EQU	$00DE
M00F1			EQU	$00F1

;------- System RAM

M69C1			EQU	$69C1

M6A04			EQU	$6A04
M6A0A			EQU	$6A0A
M6A0B			EQU	$6A0B
M6A0D			EQU	$6A0D
M6A0E			EQU	$6A0E
M6A0F			EQU	$6A0F
M6A11			EQU	$6A11
M6A15			EQU	$6A15
M6A16			EQU	$6A16
M6A17			EQU	$6A17
M6A19			EQU	$6A19

M776D			EQU	$776D
M7772			EQU	$7772
M7773			EQU	$7773
M7774			EQU	$7774
M7779			EQU	$7779
M777A			EQU	$777A
M777C			EQU	$777C
M777E			EQU	$777E
M777F			EQU	$777F
M7781			EQU	$7781
M7784			EQU	$7784
M7787			EQU	$7787
M7788			EQU	$7788
M7789			EQU	$7789
M778A			EQU	$778A
M778C			EQU	$778C
M778D			EQU	$778D
M778F			EQU	$778F
M7794			EQU	$7794
M7795			EQU	$7795
M784E			EQU	$784E
M784F			EQU	$784F
M7933			EQU	$7933

M7EE8			EQU	$7EE8
M7F99			EQU	$7F99
M7FE0			EQU	$7FE0

;****************************************************
;* Program Code / Data Areas			    *
;****************************************************

			ORG	$8000

hdlr_RST		BANK_HI				; attempt to select HI bank
			LDAA	#LED4|LED3|LED2|LED1|BANKSEL
			STAA	DDR6			; set P63 - P67 as outputs
			BANK_HI				; attempt to select HI bank (again)
			NOP
			NOP
			RTS

hdlr_OCI		NOP
			BANK_HI				; select HI bank
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			RTI

hdlr_CMI		NOP
			BANK_HI				; select HI bank
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			RTI

hdlr_SIO		NOP
			BANK_HI				; select HI bank
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			RTI

hdlr_IRQ1		NOP
			BANK_HI				; select HI bank
			NOP
			NOP
			NOP
			NOP
			NOP
			NOP
			RTI

			INCLUDE	"inc/xrom.asm"
			INCLUDE	"inc/init.asm"

			ORG	$8200

XROM_VEC2		FDB	hdlr_RST

; XROM jump table

XROM_VEC		FDB	LOAD_VOICE
			FDB	LO_CALL_01
			FDB	LO_CALL_02
			FDB	LO_CALL_03
			FDB	LO_CALL_04
			FDB	LO_CALL_05
			FDB	LO_CALL_06
			FDB	LO_CALL_08
			FDB	SET_ALL_RANGES
			FDB	SET_NAME_RANGE
			FDB	SET_PCED_RANGE
			FDB	LO_CALL_0C
			FDB	SET_VCED_RANGE

;-------
;
; load a voice from packed memory into the VCED / ACED
; from SPTR to DPTR
;
LOAD_VOICE		LDAB	#4			; B <- 4 (operator count)

			;
			; Copy the per-operator data
			;
1			PSHB				; save B
			LDAB	#6			; copy first first bytes verbatim
			JSR	MEMCPY			; NB: increases SPTR and DPTR
			LDX	SPTR			; X <- SPTR (+6)
			LDAA	,X			; A <- @X (+6: AME|EBS|KVS)
			STAA	M009F			; M <- A
			LDAB	$03,X			; B <- @(X + 3) (+9: RS|DET)
			INX				; X <- X + 1
			STX	SPTR			; SPTR <- X (+7)
			LDX	DPTR			; X <- DPTR (+6)
			PSHB				; save B
			ANDB	#%00000111		; mask bottom 3 bits of B (DET)
			STAB	$06,X			; save to DPTR + 6 (+12: DET)
			PULB				; restore B
			ANDB	#%00011000		; mask next two bits (RS)
			LSRB				; shift to bottom
			LSRB				; -
			LSRB				; -
			STAB	,X			; save to @DPTR (+6: RS)
			ANDA	#%00000111		; bottom three bits of A (from +6 : KVS)
			STAA	$03,X			; save to X + 3 (+9: KVS)
			LDAA	M009F			; get A back from memory
			ANDA	#%00111000		; mask next three bits (EBS)
			LSRA				; shift to bottom
			LSRA				; -
			LSRA				; -
			STAA	$01,X			; save to X + 1 (+7: EBS)
			LDAA	M009F			; get A back from memory
			ROLA				; shift three times
			ROLA				; -
			ROLA				; -
			ANDA	#%00000001		; take bottom bit (AME)
			STAA	$02,X			; save to X + 2 (+8: AME)
			LDAB	#4			; X <- X + 4 (+10)
			ABX				; -
			LDAB	#$02			; -
			JSR	MEMCPYX			; copy 2 more bytes (SPTR: +9, DPTR: +12)
			LDX	SPTR			; inc SPTR (+10)
			INX				; -
			STX	SPTR			; -
			LDX	DPTR			; inc DPTR (+13)
			INX				; -
			STX	DPTR			; -
			PULB				; restore original B
			DECB				; B <- B - 1
			BNE	1B			; go around (4 times)

			;
			; copy the first chunk of non-operator voice parameters
			;
			STX	DPTR			; DPTR <- X (+52) [not necessary]
			LDX	SPTR			; X <- SPTR (+40)
			LDAA	,X			; A <- @X (+52)
			INX				; inc SPTR (+41)
			STX	SPTR			; -
			LDX	DPTR			; X <- DPTR (+52)
			PSHA				; save A
			ANDA	#%00000111		; bottom three bits of A
			STAA	,X			; save to X (+52: ALG)
			INX				; X <- X + 1 (+53)
			PULA				; restore A
			LSRA				; right shift 3x
			LSRA				; -
			LSRA				; -
			PSHA				; save A
			ANDA	#%00000111		; mask next three bits
			STAA	,X			; save to X (+53: Feedback)
			PULA				; restore A (NB: already shifted 3x)
			ANDA	#$08			; mask remaining bit
			LSRA				; right shift 3x
			LSRA				; -
			LSRA				; -
			STAA	$05,X			; save to X + 5 (58: LFO Sync)
			INX				; X <- X + 1 (+54)
			LDAB	#$04			; copy 4 bytes
			JSR	MEMCPYX			; (SPTR: +45, DPTR, X: +58)
			LDX	SPTR			; X <- SPTR (+45)
			LDAA	,X			; A <- X (+45: PMS|AMS|LFW)
			INX				; X <- X + 1 (+46)
			STX	SPTR			; SPTR <- X (+46)
			LDX	DPTR			; X <- DPTR (+58)
			INX				; X <- X + 1 (+59)
			PSHA				; save A
			ANDA	#%00000011		; bottom three bits of A
			STAA	,X			; save to X (+59: LFO Wave)
			PULA				; restore A
			LSRA				; shift right 2x
			LSRA				; -
			PSHA				; save A
			ANDA	#%00000011		; next two bits
			STAA	$02,X			; save to X + 2 (+61: AMS)
			PULA				; restore A
			LSRA				; shift right 2x (3 bits left)
			LSRA				; -
			STAA	$01,X			; save to X + 1 (+60: P Mod Sens)
			INX				; X <- X + 3 (+62)
			INX				; -
			INX				; -
			LDAB	#$01			; copy 1 byte (D: +62 <- S: +46 - transpose)
			JSR	MEMCPYX			; (SPTR: +47, DPTR, X: +63)
			TST	SYS_CMBIN		; test the System Combine setting
			BNE	2F			; non-zero?  skip next block

			;
			; skip over the Voice Function Data
			;
			LDAB	#14			; B <- 14
			ABX				; X <- X + B (+77)
			STX	DPTR			; DPTR <- X (+77)
			LDX	SPTR			; X <- SPTR (+47)
			LDAB	#10			; B <- 10
			ABX				; X <- X + B (+57)
			STX	SPTR			; SPTR <- X (+57)
			JMP	3F			; skip forward

			;
			; extract Voice Function Data
			;
2			LDX	SPTR			; X <- SPTR (+47)
			LDAA	,X			; A <- @X (+47: PBR)
			INX				; X <- X + 1 (+48)
			STX	SPTR			; SPTR <- X (+48)
			LDX	DPTR			; X <- DPTR (+63)
			STAA	$01,X			; save A to X + 1 (+64: Pitch bend range)
			LDX	SPTR			; X <- SPTR (+48)
			LDAA	,X			; A <- @X (+48: CH|MO|SU|PO|PM)
			INX				; X <- X + 1 (+49)
			STX	SPTR			; SPTR <- X (+49)
			LDX	DPTR			; X <- DPTR (+63)
			PSHA				; save A
			ANDA	#%00000001		; mask bottom bit
			STAA	$02,X			; save to X + 2 (+65: Full time porta)
			PULA				; restore A
			LSRA				; right shift it
			PSHA				; save it again
			ANDA	#%00000001		; mask next bit
			STAA	$06,X			; save to X + 6 (+69: Portamento)
			PULA				; restore A
			LSRA				; right shift it
			PSHA				; save it again
			ANDA	#%00000001		; mask next bit
			STAA	$05,X			; save to X + 5 (+68: Sustain)
			PULA				; restore A
			LSRA				; right shift it
			PSHA				; save it again
			ANDA	#%00000001		; mask next bit
			STAA	,X			; save to X (+63: Poly mode)
			PULA				; restore A
			LSRA				; right shift it
			ANDA	#%00000001		; mask next bit
			STAA	$07,X			; save to X + 7 (+70: Chorus)
			INX				; X <- X + 3 (+66)
			INX				; -
			INX				; -
			LDAB	#$02			; copy 2 more bytes from SPTR (+49) to X (+66)
			JSR	MEMCPYX			; (SPTR: +51, DPTR, X: +68)
			INX				; X <- X + 3 (+71)
			INX				; -
			INX				; -
			STX	DPTR			; DPTR <- X (+71)
			LDAB	#$06			; copy 6 more bytes from SPTR (+51) to DPTR (+71)
			JSR	MEMCPY			; (SPTR: +57, DPTR: +77)

3			LDAB	#$0A			; copy 10 bytes (name)
			JSR	MEMCPY			; (SPTR: +67, DPTR: +87)

			;
			; copy voice additional parameters (ACED)
			; 2 source bytes and 5 destination bytes per operator
			;
			LDAB	#4			; B <- 4

4			PSHB				; and save it
			LDX	SPTR			; X <- SPTR (+67 first time around)
			LDAA	,X			; A <- @X (+67: EGSFT|FIX|FIXRG)
			INX				; X <- X + 1 (+68)
			STX	SPTR			; SPTR <- X (+68)
			LDX	DPTR			; X <- DPTR (+87 first time around)
			PSHA				; save A
			ANDA	#%00000111		; take bottom 3 bits
			STAA	$01,X			; save A to X + 1 (+88: fixed range)
			PULA				; restore A
			LSRA				; shift right 3 bits
			LSRA				; -
			LSRA				; -
			PSHA				; save it again
			ANDA	#%00000001		; take next bit
			STAA	,X			; save A to X (+87: FIX)
			PULA				; restore A
			LSRA				; shift right 1 bit
			ANDA	#%00000011		; take remaining 3 bits
			STAA	$04,X			; save to X + 4 (+91: Shift)
			INX				; X <- X + 2 (+89)
			INX				; -
			STX	DPTR			; DPTR <- X (+89)
			LDX	SPTR			; X <- SPTR (+68)
			LDAA	,X			; A <- @X (+68: OPW|FINE)
			INX				; X <- X + 1 (+69)
			STX	SPTR			; SPTR <- X (+69)
			LDX	DPTR			; X <- DPTR (+89)
			PSHA				; save A
			ANDA	#%00001111		; mask bottom 4 bits
			STAA	,X			; save A to X (+89: FIN Ratio)
			PULA				; restore A
			LSRA				; shift right 4 bits
			LSRA				; -
			LSRA				; -
			LSRA				; -
			ANDA	#%00000111		; mask remaining 3 bits
			STAA	$01,X			; save A to X + 1 (+90: Operator Waveform)
			INX				; X <- X + 3 (+92)
			INX				; -
			INX				; -
			STX	DPTR			; DPTR <- X (+92)
			PULB				; restore B
			DECB				; B <- B - 1
			BNE	4B			; non-zero?  go around

			TST	SYS_CMBIN		; test the System Combine setting
			BNE	5F			; non-zero?  skip next block

			LDX	DPTR			; DPTR <- DPTR + 3
			LDAB	#3			; -
			ABX				; -
			STX	DPTR			; -
			LDX	SPTR			; SPTR <- SPTR + 3
			ABX				; -
			STX	SPTR			; -

			LDAA	M7772
			ANDA	#%00000100
			BNE	6F

			LDAA	#1			; flag voice as edited
			STAA	VOICE_EDITED		; -
			BRA	6F			; done

5			LDAB	#$03			; copy last three bytes (reverb, FC pitch and ampl)
			JSR	MEMCPY			; -
6			RTS				; done

;-------

LO_CALL_06		LDAB	#$04
1			PSHB
			LDAB	#$06
			JSR	MEMCPY
			LDX	SPTR
			LDAA	,X
			ASLA
			ASLA
			ASLA
			ADDA	$06,X
			INX
			STX	SPTR
			LDX	DPTR
			STAA	$03,X
			LDX	SPTR
			LDAA	$01,X
			ASLA
			ASLA
			ASLA
			ADDA	,X
			ASLA
			ASLA
			ASLA
			ADDA	$02,X
			INX
			INX
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			LDAB	#$02
			JSR	MEMCPYX
			LDX	SPTR
			INX
			STX	SPTR
			LDX	DPTR
			INX
			STX	DPTR
			PULB
			DECB
			BNE	1B
			STX	DPTR
			LDX	SPTR
			LDAA	$06,X
			ASLA
			ASLA
			ASLA
			ADDA	$01,X
			ASLA
			ASLA
			ASLA
			ADDA	,X
			INX
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			LDAB	#$04
			JSR	MEMCPYX
			LDX	SPTR
			INX
			LDAA	$01,X
			ASLA
			ASLA
			ADDA	$02,X
			ASLA
			ASLA
			ADDA	,X
			INX
			INX
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			LDAB	#$01
			JSR	MEMCPYX
			LDX	SPTR
			LDAA	$01,X
			LDX	DPTR
			STAA	,X
			INX
			STX	DPTR
			LDX	SPTR
			LDAA	$07,X
			ASLA
			ADDA	,X
			ASLA
			ADDA	$05,X
			ASLA
			ADDA	$06,X
			ASLA
			ADDA	$02,X
			INX
			INX
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			LDAB	#$02
			JSR	MEMCPYX
			LDX	SPTR
			INX
			INX
			INX
			STX	SPTR
			LDAB	#$10
			JSR	MEMCPY
			LDAB	#$04
2			PSHB
			LDX	SPTR
			LDAA	$04,X
			ASLA
			ADDA	,X
			ASLA
			ASLA
			ASLA
			ADDA	$01,X
			INX
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			STX	DPTR
			LDX	SPTR
			LDAA	$01,X
			ASLA
			ASLA
			ASLA
			ASLA
			ADDA	,X
			INX
			INX
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			STX	DPTR
			PULB
			DECB
			BNE	2B
			LDAB	#$03
			JSR	MEMCPY
			RTS

;-------

LO_CALL_05		LDAB	#$08
1			PSHB
			LDX	SPTR
			LDAA	,X
			LDAB	$01,X
			ANDB	#$7F
			INX
			INX
			STX	SPTR
			LDX	DPTR
			PSHA
			ANDA	#$0F
			STAA	,X
			PULA
			LSRA
			LSRA
			LSRA
			LSRA
			PSHA
			ANDA	#$01
			BEQ	2F
			ORAB	#$80
2			STAB	$02,X
			PULA
			LSRA
			ANDA	#$03
			STAA	$09,X
			INX
			INX
			INX
			STX	DPTR
			LDX	SPTR
			LDAA	,X
			INX
			STX	SPTR
			LDX	DPTR
			PSHA
			ANDA	#$1F
			STAA	,X
			PULA
			LSRA
			LSRA
			LSRA
			LSRA
			LSRA
			ANDA	#$03
			STAA	$07,X
			INX
			LDAB	#$03
			JSR	MEMCPYX
			LDX	SPTR
			LDAA	,X
			INX
			STX	SPTR
			LDX	DPTR
			PSHA
			ANDA	#$3F
			STAA	,X
			PULA
			LSRA
			LSRA
			LSRA
			LSRA
			LSRA
			LSRA
			ANDA	#$01
			STAA	$04,X
			INX
			LDAB	#$01
			JSR	MEMCPYX
			INX
			INX
			INX
			STX	DPTR
			PULB
			DECB
			BNE	1B
			LDAB	#$01
			JSR	MEMCPY
			LDX	SPTR
			LDAA	,X
			INX
			STX	SPTR
			LDX	DPTR
			PSHA
			ANDA	#$01
			STAA	,X
			PULA
			LSRA
			PSHA
			ANDA	#$03
			STAA	$01,X
			PULA
			LSRA
			LSRA
			ANDA	#$0F
			STAA	$02,X
			INX
			INX
			INX
			LDAB	#$0A
			JMP	MEMCPYX

;-------

LO_CALL_08		LDAB	#$08
1			PSHB
			LDX	SPTR
			LDAA	$09,X
			ASLA
			TIM	#$80,$02,X
			BEQ	2F
			ADDA	#$01
2			ASLA
			ASLA
			ASLA
			ASLA
			ADDA	,X
			INX
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			STX	DPTR
			LDX	SPTR
			LDAA	,X
			ANDA	#$7F
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			STX	DPTR
			LDX	SPTR
			LDAA	$07,X
			ASLA
			ASLA
			ASLA
			ASLA
			ASLA
			ADDA	,X
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			LDAB	#$03
			JSR	MEMCPYX
			LDX	SPTR
			LDAA	$04,X
			ASLA
			ASLA
			ASLA
			ASLA
			ASLA
			ASLA
			ADDA	,X
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			LDAB	#$01
			JSR	MEMCPYX
			LDX	SPTR
			INX
			INX
			INX
			STX	SPTR
			PULB
			DECB
			BNE	1B

			LDAB	#$01
			JSR	MEMCPY
			LDX	SPTR
			LDAA	$02,X
			ASLA
			ASLA
			ADDA	$01,X
			ASLA
			ADDA	,X
			INX
			INX
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			LDAB	#$0A
			JMP	MEMCPYX

;-------
;
; calls SET_VCED_RANGE for all 8 voices and then
; fall through to a call to SET_PCED_RANGE
;
SET_ALL_RANGES		CLR	>M009F
1			JSR	SET_VCED_RANGE
			LDAB	M009F
			INCB
			STAB	M009F
			CMPB	#$08
			BNE	1B

;-------		fallthrough

SET_PCED_RANGE		LDX	#PFM_EDIT_BUF		;
			LDAB	#$08			; B <- 8
			STX	SPTR			; SPTR <- PCED
1			LDX	#D_CLAMP_PCED		;
			STX	DPTR			; DPTR <- PCED range table
			PSHB				; save B
			LDAB	#$0C			; clamp 12 values
			BSR	CLAMP			; -
			PULB				; restore B
			DECB				; B <- B - 1
			BNE	1B			; not zero?  go around
			LDAB	#$04			; clamp remaining 4 values
			BSR	CLAMP			; -
			JSR	SET_NAME_RANGE		; ensure name is in range

			LDX	#PFM_EDIT_BUF		; X <- PCED
			CLRA				; A <- 0
			LDAB	#$0C			; B <- 12
2			ADDA	,X			; A <- A + max notes
			CMPA	#$09			; compare A to 9
			BCS	3F			; less? we're OK
			CLR	,X			; max notes <- 0
3			ABX				; go to next instrument
			CPX	#PFM_EDIT_INST_END	; until we're at the end of the table
			BNE	2B			; or go around
			RTS

;-------
;
; Ensure name characters are in range (string at SPTR)
; uses A, B, X
;
SET_NAME_RANGE		LDAB	#10			; B <- 10
1			LDAA	#$7F			; A <- 127
			LDX	SPTR			; X <- SPTR
			CMPA	,X			; compare @X to A (127)
			BCC	2F			; less?  carry on
			STAA	,X			; @X <- 127
2			LDAA	#' ' - 1		; A <- 31 (ASCII space - 1)
			CMPA	,X			; compare @X to A
			BCS	3F			; greater?  carry on
			LDAA	#'$'			; A <- '$'
			STAA	,X			; @X <- A
3			INX				; X <- X  + 1
			STX	SPTR			; SPTR <- X
			DECB				; B <- B - 1
			BNE	1B			; not zero, go around
			RTS

;-------

D_CLAMP_VCED		FCB	$1F,$1F,$1F,$0F,$0F,$63,$03,$07
			FCB	$01,$07,$63,$3F,$06,$07,$07,$63
			FCB	$63,$63,$63,$01,$03,$07,$03,$30
			FCB	$01,$0C,$01,$63,$63,$01,$01,$01
			FCB	$63,$63,$63,$63,$64,$63

D_CLAMP_ACED		FCB	$01,$07,$0F,$07,$03,$07,$63,$63

D_CLAMP_PCED		FCB	$08,$00,$9F,$10,$7F,$7F,$0E,$30
			FCB	$63,$03,$03,$01,$0C,$01,$03,$0B

;-------
;
; Clamp the array @(SPTR) to the values in array @(DPTR)
; uses A, B, X, leaves X pointing one beyond SPTR
;
CLAMP
0			LDX	DPTR			; X <- DPTR
			LDAA	,X			; A <- @X (clamp value)
			INX				; X <- X + 1
			STX	DPTR			; DPTR <- X
			LDX	SPTR			; X <- SPTR
			CMPA	,X			; is A > @X ?
			BCC	1F			; yes?  branch...
			STAA	,X			; @X <- A
1			INX				; X <- X + 1
			STX	SPTR			; SPTR <- X
			DECB				; B <- B - 1
			BNE	0B			; B != 0?  branch...
			RTS

;-------
;
; M009F - voice number
;

SET_VCED_RANGE		LDAB	M009F			; B <- voice number
			LDAA	#110			; A <- 110
			MUL				; D <- A * B
			ADDD	#VCED			; D <- offset into voice table
			STD	SPTR			; SPTR < D
			CLRB				; B <- 0

1			LDX	#D_CLAMP_VCED		; X <- table
			STX	DPTR			; DPTR <- X

			PSHB				; save B (operator number)
			LDAB	#3			; B <- 3
			JSR	CLAMP			; clamp first three values

			TST	,X			; examine release rate
			BNE	2F			; not zero, carry on
			LDAA	#$01			; set release rate to 1
			STAA	,X			; -

2			LDAB	#$08			; clamp next eight values
			JSR	CLAMP			; -

			TIM	#%00111100,$00,X
			BNE	4F

			LDAA	#110			; A <- 110
			LDAB	M009F			; B <- voice number
			MUL				; D <- A * B
			ADDD	#ACED_FINE		; D <- offset into voice table
			XGDX				; X <-> D
			PULB				; restore B (operator number)
			PSHB				; and push it again for later

			LDAA	#5			; A <- 5
			MUL				; D <- A * B
			ABX				; X <- X + B
			LDAA	,X			; A <- @X
			CMPA	#8			; compare to 8
			BCS	3F			; less?  carry on
			LDAA	#7			; A <- 7
3			STAA	,X			; @X <- A

4			LDAB	#$02			; clamp remaining two operator values
			JSR	CLAMP			; -
			PULB				; restore B (operator number)
			INCB				; B <- B + 1
			CMPB	#$04			; B = 4 ?
			BNE	1B			; no, go around for next operator

			LDAB	#25			; clamp remaining 25 parameters
			JSR	CLAMP			; -
			JSR	SET_NAME_RANGE		; and make sure the name is legal

			LDAB	#$04			; B <- 4
5			LDX	#D_CLAMP_ACED		; DPTR <- ACED clamping table
			STX	DPTR			; -
			PSHB				; save B
			LDAB	#$05			; clamp five values
			JSR	CLAMP			; -
			PULB				; restore B
			DECB				; B <- B - 1
			BNE	5B			; not zero, go around

			LDX	SPTR			; clears last param of Operator 1 ?
			DEX
			CLR	,X

			LDAB	#$03			; clamp last three values
			JSR	CLAMP			; -
			RTS

;-------

			INCLUDE	"inc/memcpy.asm"

;-------

LO_CALL_03		TST	SYS_SYSAVL
			BEQ	2F
			TST	>M00CC
			BNE	2F
			JSR	HI_CALL_00
			JSR	HI_CALL_01
			CLR	>M005A
			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			LDX	#S_TRANSMITTING
			JSR	LCD_WRITE
			CLR	>M00C7
			JSR	SEND_SYSEX_VMEM_HDR
1			LDAA	M777E
			DECA
			LDAB	#$20
			MUL
			ADDB	M00C7
			LDAA	#$4E
			MUL
			ADDD	#PRESET_VOICE
			XGDX
			JSR	SEND_SYSEX_VMEM
			LDAB	M00C7
			INCB
			STAB	M00C7
			CMPB	#$20
			BNE	1B
			JSR	SEND_SYSEX_END
2			RTS

S_TRANSMITTING		FCC	"Transmitting!!  "
			FCB	$00

;-------

LO_CALL_04		LDAA	#$01
			STAA	PFM_EDITED
			LDAA	M777E
			LDAB	#$4C
			MUL
			ADDD	#STANDARD_PFM
			XGDX
			STX	SPTR
			AIM	#~ECMI,TCSR3
			LDX	#PFM_EDIT_BUF
			STX	DPTR
			JSR	LO_CALL_05
			JSR	HI_CALL_13
			JSR	HI_CALL_14
			RTS

;-------
;
; Initialise the user voices from a
; selection of the ROM presets
;
INIT_USER_VOICES	CLRB
1 			PSHB
			LDX	#D_INIT_USER_VOICE_LIST
			ABX
			LDAA	,X
			CMPA	#$80
			BCS	2F
			CLRA
2			LDAB	#$4E
			MUL
			ADDD	#PRESET_VOICE
			STD	SPTR
			PULB
			PSHB
			LDAA	#$4E
			MUL
			ADDD	#USER_VOICE
			XGDX
			LDAB	#$4E
			JSR	MEMCPYX
			PULB
			INCB
			CMPB	#32
			BNE	1B
			RTS

D_INIT_USER_VOICE_LIST	FCB	$00,$08,$0C,$10,$18,$1E,$20,$22
			FCB	$29,$2F,$30,$34,$37,$3C,$3F,$40
			FCB	$41,$43,$48,$4A,$4E,$55,$57,$59
			FCB	$60,$61,$64,$67,$6F,$79,$7A,$7D

;-------

INIT_USER_PFMS		CLRB
			LDX	#USER_PFM
			STX	DPTR
1			PSHB
			LDAA	#$4C
			MUL
			ADDD	#PRESET_PFM
			STD	SPTR
			LDAB	#$4C
			JSR	MEMCPY
			PULB
			INCB
			CMPB	#24
			BNE	1B
			RTS

; Standard performance settings  - 5 x 76 bytes per mode

STANDARD_PFM		FCB	$68,$00,$20,$00,$7F,$07,$18,$63
			FCB	$60,$00,$41,$00,$7F,$07,$18,$63
			FCB	$60,$00,$62,$00,$7F,$07,$18,$63
			FCB	$60,$00,$63,$00,$7F,$07,$18,$63
			FCB	$60,$00,$64,$00,$7F,$07,$18,$63
			FCB	$60,$00,$65,$00,$7F,$07,$18,$63
			FCB	$60,$00,$66,$00,$7F,$07,$18,$63
			FCB	$60,$00,$67,$00,$7F,$07,$18,$63
			FCB	$00,$00
			FCC	"SINGLE    "

			FCB	$64,$00,$20,$00,$7F,$07,$18,$63
			FCB	$64,$00,$40,$00,$7F,$09,$18,$63
			FCB	$60,$00,$62,$00,$7F,$07,$18,$63
			FCB	$60,$00,$63,$00,$7F,$07,$18,$63
			FCB	$60,$00,$64,$00,$7F,$07,$18,$63
			FCB	$60,$00,$65,$00,$7F,$07,$18,$63
			FCB	$60,$00,$66,$00,$7F,$07,$18,$63
			FCB	$60,$00,$67,$00,$7F,$07,$18,$63
			FCB	$00,$00
			FCC	"DUAL	   "

			FCB	$64,$00,$20,$3C,$7F,$07,$18,$63
			FCB	$64,$00,$40,$00,$3B,$07,$18,$63
			FCB	$60,$00,$62,$00,$7F,$07,$18,$63
			FCB	$60,$00,$63,$00,$7F,$07,$18,$63
			FCB	$60,$00,$64,$00,$7F,$07,$18,$63
			FCB	$60,$00,$65,$00,$7F,$07,$18,$63
			FCB	$60,$00,$66,$00,$7F,$07,$18,$63
			FCB	$60,$00,$67,$00,$7F,$07,$18,$63
			FCB	$00,$00
			FCC	"SPLIT	   "

			FCB	$61,$00,$20,$00,$7F,$07,$18,$63
			FCB	$61,$01,$41,$00,$7F,$07,$18,$63
			FCB	$61,$02,$62,$00,$7F,$07,$18,$63
			FCB	$61,$03,$63,$00,$7F,$07,$18,$63
			FCB	$61,$04,$64,$00,$7F,$07,$18,$63
			FCB	$61,$05,$65,$00,$7F,$07,$18,$63
			FCB	$61,$06,$66,$00,$7F,$07,$18,$63
			FCB	$61,$07,$67,$00,$7F,$07,$18,$63
			FCB	$00,$00
			FCC	"MONO8	   "

			FCB	$62,$00,$20,$00,$7F,$07,$18,$63
			FCB	$62,$01,$41,$00,$7F,$07,$18,$63
			FCB	$62,$02,$62,$00,$7F,$07,$18,$63
			FCB	$62,$03,$63,$00,$7F,$07,$18,$63
			FCB	$60,$04,$64,$00,$7F,$07,$18,$63
			FCB	$60,$05,$65,$00,$7F,$07,$18,$63
			FCB	$60,$06,$66,$00,$7F,$07,$18,$63
			FCB	$60,$07,$67,$00,$7F,$07,$18,$63
			FCB	$00,$00
			FCC	"POLY4	   "

;-------

LO_CALL_01		JSR	F_8EBE
			LDAB	M7789
			CMPB	#11
			BCS	1F
			JMP	34F

1			JSR	JMPOFFB
			FCB	7F - *
			FCB	4F - *
			FCB	3F - *
			FCB	2F - *
			FCB	6F - *
			FCB	4F - *
			FCB	3F - *
			FCB	2F - *
			FCB	5F - *
			FCB	4F - *
			FCB	3F - *

2			JMP	F_8D3E		; case 3, 7
3			JMP	C_8B4A		; case 2, 6, 10
4			JMP	C_8ABD		; case 1, 5, 9
5			LDAB	M777E		; case 8
			ADDB	#$03
			BRA	9F
6			LDAB	#$02		; case 4
			BRA	9F
7			TST	M777E		; case 0
			BEQ	8F
			CLRB
			BRA	9F
8			LDAB	#$01
9			STAB	M00D7
			JSR	F_8EF2
			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			LDX	#S_SAVE
			JSR	PUTSTRX
			JSR	F_8EB0
10			JSR	READ_SWITCHES
			CMPB	#$02
			BNE	11F
			JMP	34F
11			CMPB	#$01
			BNE	10B
			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			CLR	M6A15
			LDAB	M00D7
12			ASLB
			LDX	#DVEC_M8A6E
			ABX
			LDX	,X
			JSR	PUTSTRX
			LDX	#S_TO_TAPE
			JSR	LCD_WRITE
			LDAB	#$04
			LDX	#$0000
13			TIM	#SW5,PORT5
			BEQ	20F
			DEX
			BNE	13B
			DECB
			BNE	13B
			LDAA	M00D7
			CMPA	#$03
			BCS	14F
			CLR	>M00CD
			BRA	16F
14			CLRA
			STAA	M00CD
15			LDX	#LCD_BOTTOM + 5
			STX	DPTR
			INCA
			CLRB
			JSR	PUT_DEC_NN
			JSR	LCD_UPDATE
16			LDAA	M00CD
			JSR	F_903F
			LDAA	M00CD
			JSR	F_8A7E
			JSR	F_92F3
			STD	M6A17
			PSHB
			LDAB	M00D7
			CMPB	#$01
			BEQ	18F
			CMPB	#$02
			BNE	17F
			PULB
			STD	M6A0F
			BRA	19F
17			PULB
			STD	M6A0B
			BRA	19F
18			PULB
19			JSR	F_931B
			TST	>M00D3
			BEQ	21F
20			BRA	35F
21			LDAA	M00CD
			INCA
			STAA	M00CD
			LDAB	M00D7

			JSR	JMPOFFB
			FCB	22F - *
			FCB	22F - *
			FCB	23F - *
			FCB	25F - *
			FCB	30F - *
			FCB	27F - *
			FCB	30F - *
			FCB	28F - *

22			CMPA	#$20		; case 0, 1
			BRA	24F
23			CMPA	#$18		; case 2
24			BNE	15B
			BRA	30F
25			LDAB	M6A15		; case 3
			CMPB	#$02
			BEQ	28F
			CMPB	#$01
			BEQ	26F
			CMPA	#$04
			BNE	16B
26			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			LDAB	M6A15
			INCB
			STAB	M6A15
			ADDB	#$05
			JMP	12B
27			CMPA	#$04		; case 5
			BRA	29F
28			CMPA	#$05		; case 7
29			BNE	16B
30			JSR	HI_CALL_06	; case 4, 6
			LDAA	M00D7
			CMPA	#$02
			BEQ	31F
			BCS	32F
			LDAA	#$09
			BRA	33F
31			LDAA	#$05
			BRA	33F
32			LDAA	#$01
33			STAA	M7789
34			CLI
			RTS

35			LDAA	M00D7
			CMPA	#$02
			BCS	36F
			LDAA	M777E
			DECA
			CMPA	#$05
			BCS	37F
			LDAA	#$04
			BRA	37F
36			LDAA	M777E
			INCA
			ANDA	#$01
37			STAA	M777E
			BRA	34B

DVEC_M8A6E		FDB	S_INT
			FDB	S_INT
			FDB	S_PFM_2
			FDB	S_PGM_CNG
			FDB	S_SYSTEM
			FDB	S_PGM_CNG
			FDB	S_EFFECT
			FDB	S_MICROTUN

;-------

F_8A7E			LDAA	M00CD
			LDAB	M00D7
			CMPB	#8
			BCS	1F
			CLRB

1			JSR	JMPOFFB
			FCB	9F - *
			FCB	2F - *
			FCB	3F - *
			FCB	4F - *
			FCB	5F - *
			FCB	6F - *
			FCB	7F - *
			FCB	8F - *

2			ADDA	#$20		; case 1
			BRA	9F
3			ADDA	#$40		; case 2
			STAA	M6A0E
			BRA	9F
4			LDAB	M6A15		; case 3
			BEQ	6F
			CMPB	#$01
			BEQ	7F
			BRA	8F
5			LDAA	#$60		; case 4
			BRA	9F
6			ADDA	#$61		; case 5
			BRA	9F
7			LDAA	#$65		; case 6
			BRA	9F
8			ADDA	#$66		; case 7
9			STAA	M6A0A		; case 0
			STAA	M6A16
			RTS

;-------

C_8ABD			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			LDX	#S_VERIFY
			JSR	PUTSTRX
			JSR	F_8EB0
1			JSR	READ_SWITCHES
			CMPB	#$02
			BEQ	9F
			CMPB	#$01
			BNE	1B
			CLR	M6A15
			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			LDX	#S_VERIFY_TAPE
			JSR	PUTSTRX
			LDAB	M7789
			ANDB	#$0C
			CMPB	#$08
			BNE	2F
			LDX	#LCD_BOTTOM + 13
			STX	DPTR
			JSR	F_8C1C
2			CLRA
			STAA	M00CD
3			JSR	F_8C82
			BCC	6F
			LDAA	M00D3
			CMPA	#$03
			BNE	4F
			JSR	F_8EF2
			CLR	>M00D3
			BRA	2B
4			JSR	F_9207
			BNE	8F
			LDAA	M00CD
			BNE	5F
			JSR	F_8EF2
			LDAA	M00CD
5			INCA
			STAA	M00CD
			JSR	F_8C34
			BCC	3B
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDX	#S_VERIFY_COMPLETED
			JSR	LCD_WRITE
			JSR	HI_CALL_0D
			CLI
			LDAA	#$01
			STAA	M00CE
6			LDAA	M777E
			ANDA	#$0F
			DECA
			CMPA	#$05
			BCS	7F
			LDAA	#$04
7			STAA	M777E
			RTS
8			JMP	C_8CE9
9			JMP	C_8D03

C_8B4A
10			TST	SYS_MLOCK
			BEQ	11F
			JMP	26F
11			LDX	#LCD_BOTTOM
			STX	DPTR
			LDAB	M7789
			CMPB	#$0A
			BNE	12F
			LDX	#S_LOAD_READY
			BRA	13F
12			LDX	#S_LOAD_ALL_READY
13			JSR	LCD_WRITE
14			JSR	READ_SWITCHES
			CMPB	#$02
			BNE	15F
			JMP	25F
15			CMPB	#$01
			BNE	14B
			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			CLR	M6A15
			LDAB	M7789
			ANDB	#$0C
			BEQ	17F
			CMPB	#$04
			BEQ	16F
			LDX	#S_TAPE_TO
			JSR	PUTSTRX
			JSR	F_8C1C
			BRA	19F
16			LDX	#S_TAPE_TO_PFM
			BRA	18F
17			LDX	#S_TAPE_TO_INT
18			JSR	LCD_WRITE
19			CLR	>M00D3
			CLRA
			STAA	M00CD
20			JSR	F_8C82
			BCC	6B
			LDAA	M00D3
			CMPA	#$03
			BNE	21F
			JSR	F_8EF2
			BRA	19B
21			LDAA	M00CD
			JSR	F_90F5
			LDAA	M00CD
			BNE	22F
			JSR	F_8EF2
			LDAA	M00CD
22			INCA
			STAA	M00CD
			JSR	F_8C34
			BCC	20B
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDX	#S_LOAD_COMPLETED
			JSR	LCD_WRITE
			CLI
			LDAB	M00D7
			CMPB	#$02
			BCS	24F
			BEQ	23F
			JSR	HI_CALL_09
			JSR	HI_CALL_00
			JSR	HI_CALL_01
			JSR	HI_CALL_0F
			JSR	HI_CALL_18
			JSR	CALC_E2FR_VALUE
			AIM	#~ECMI,TCSR3
			JSR	HI_CALL_15
			JSR	HI_CALL_16
			OIM	#ECMI,TCSR3
23			JMP	C_8CF5
24			JSR	HI_CALL_1B
			JSR	HI_CALL_04
			JMP	C_8CF5
25			JMP	C_8D03
26			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			LDX	#S_MEM_PROTECTED
			JSR	LCD_WRITE
			CLI
			JMP	C_8CF5

;------

F_8C1C			LDAB	M777E
			ASLB
			LDX	#1F
			ABX
			LDX	,X
			JSR	LCD_WRITE
			RTS

1			FDB	S_ALL
			FDB	S_SYS
			FDB	S_PC
			FDB	S_EF
			FDB	S_MC

;-------

F_8C34			LDAB	M00D7
			JSR	JMPOFFB
			FCB	1F - *
			FCB	1F - *
			FCB	2F - *
			FCB	4F - *
			FCB	12F - *
			FCB	4F - *
			FCB	7F - *
			FCB	5F - *

1			CMPA	#$20		; case 0, 1
			BRA	3F
2			CMPA	#$18		; case 2
3			BNE	11F
			BRA	12F
4			CMPA	#$04		; case 3, 5
			BRA	6F
5			CMPA	#$05		; case 7
6			BNE	11F
7			LDAB	M777E		; case 6
			ANDB	#$0F
			BNE	12F
			LDAB	M777E
			LDAA	M00D7
			CMPA	#$05
			BNE	8F
			ORAB	#$20
			BRA	10F
8			CMPA	#$06
			BNE	9F
			ORAB	#$40
			BRA	10F
9			ORAB	#$80
10			STAB	M777E
			ANDB	#$E0
			CMPB	#$E0
			BEQ	12F
			CLRA
			STAA	M00CD
11			CLC
			BRA	13F
12			SEC			; case 4
13			RTS

;-------

F_8C82			LDAB	M7789
			ANDB	#$0C
			CMPB	#$08
			BEQ	1F
			LDX	#LCD_BOTTOM + 13
			STX	DPTR
			INCA
			CLRB
			JSR	PUT_DEC_NN
			JSR	LCD_UPDATE
1			JSR	F_93D6
			LDAA	M00D3
			CMPA	#$02
			BCC	C_8CE9
			CMPA	#$01
			BEQ	C_8D03
			JSR	F_8ED4
			JSR	F_8D11
			LDAA	M00D3
			CMPA	#$03
			BEQ	8F
			LDAB	M00D7
			CMPB	#$03
			BCS	5F
			CMPB	#$04
			BNE	2F
			LDAB	#$60
			BRA	7F
2			CMPB	#$05
			BNE	3F
			LDAB	#$61
			BRA	6F
3			CMPB	#$06
			BNE	4F
			LDAB	#$65
			BRA	7F
4			LDAB	#$66
			BRA	6F
5			LDAA	#$20
			LDAB	M00D7
			MUL
6			ADDB	M00CD
7			CMPB	M6A16
			BNE	C_8CE9
			JSR	F_92F3
			SUBD	M6A17
			BNE	C_8CE9
8			SEC
			RTS

;-------

C_8CE9			LDX	#LCD_BOTTOM + 12
			STX	DPTR
			LDX	#S_ERR
			JSR	LCD_WRITE
			CLI

;-------	fallthrough

C_8CF5			LDAA	#$01
			STAA	M00CE
			LDAA	M777E
			ANDA	#$0F
			STAA	M777E
			CLC
			RTS

;-------

C_8D03			CLI
			CLR	>M00CE
			LDAA	M777E
			ANDA	#$0F
			STAA	M777E
			CLC
			RTS

;-------

F_8D11			LDAB	M7789
			ANDB	#$0C
			LDAA	M00D7
			CMPA	#$02
			BEQ	2F
			BHI	3F
			TSTB
			BEQ	4F
1			LDAA	#$03
			STAA	M00D3
			BRA	4F
2			CMPB	#$04
			BNE	1B
			BRA	4F
3			CMPB	#$08
			BNE	1B
			LDAB	M777E
			ANDB	#$0F
			BEQ	4F
			ADDB	#$03
			SBA
			BNE	1B
4			RTS

;-------

F_8D3E			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			LDX	#S_TAPE_TO_BUFF
			JSR	LCD_WRITE
1			JSR	READ_SWITCHES
			CMPB	#$02
			BNE	2F
			JMP	29F

2			JSR	JMPOFF1
			FCB	3F - *
			FCB	$08
			FCB	4F - *
			FCB	$0A
			FCB	3F - *
			FCB	$00

3			BRA	1B
4			CLRA
5			LDAB	#$02
6			LDX	#$A000
7			DEX
			BNE	7B
			DECB
			BNE	6B
			STAA	M7EE8
			LDX	#LCD_BOTTOM + 5
			STX	DPTR
			INCA
			CLRB
			JSR	PUT_DEC_NN
			JSR	LCD_UPDATE
8			JSR	READ_SWITCHES
			CMPB	#$02
			BNE	9F
			JMP	29F
9			CMPB	#$01
			BEQ	17F

			JSR	JMPOFF1
			FCB	10F - *
			FCB	$08
			FCB	11F - *
			FCB	$0A
			FCB	10F - *
			FCB	$00

10			BRA	8B
11			LDAA	M7EE8
			CMPB	#$08
			BEQ	14F
			INCA
			LDAB	M7789
			ANDB	#$0C
			CMPB	#$04
			BNE	12F
			CMPA	#$18
			BRA	13F
12			CMPA	#$20
13			BCS	16F
			CLRA
			BRA	16F
14			DECA
			BPL	16F
			LDAB	M7789
			ANDB	#$0C
			CMPB	#$04
			BNE	15F
			LDAA	#$17
			BRA	16F
15			LDAA	#$1F
16			BRA	5B
17			CLR	>M00D3
			JSR	LCD_CLR_BOTTOM
			STX	DPTR
			LDX	#S_SEARCH_TAPE
			JSR	LCD_WRITE
			LDX	#LCD_BOTTOM + 13
			STX	DPTR
			LDAA	M7EE8
			INCA
			CLRB
			JSR	PUT_DEC_NN
			JSR	LCD_UPDATE
18			CLRA
			STAA	M00CD
19			JSR	F_93D6
			LDAA	M00D3
			CMPA	#$02
			BCS	20F
			JMP	30F
20			CMPA	#$01
			BNE	21F
			JMP	29F
21			JSR	F_8ED4
			JSR	F_8D11
			LDAA	M00D3
			CMPA	#$03
			BNE	22F
			JSR	F_8EF2
			CLR	>M00D3
			BRA	18B
22			LDAA	#$20
			LDAB	M00D7
			MUL
			ADDB	M7EE8
			CMPB	M6A16
			BEQ	23F
			JMP	28F
23			JSR	F_92F3
			SUBD	M6A17
			BEQ	24F
			JMP	30F
24			JSR	F_8EF2
			LDAB	M7789
			ANDB	#$0C
			BEQ	25F
			AIM	#~ECMI,TCSR3
			JSR	F_90E5
			LDX	#M69C1
			STX	SPTR
			LDX	#PFM_EDIT_BUF
			STX	DPTR
			JSR	LO_CALL_05
			JSR	SET_PCED_RANGE
			LDAA	#$01
			STAA	PFM_EDITED
			BRA	27F
25			AIM	#~ECMI,TCSR3
			LDAB	M7773
			JSR	HI_CALL_19
			JSR	F_90D5
			LDX	#M69C1
			STX	SPTR
			LDX	#VCED
			STX	DPTR
			JSR	LOAD_VOICE
			TST	>M00D7
			BNE	26F
			JSR	CLEAR_ACED
26			JSR	SET_ALL_RANGES
			JSR	HI_CALL_05
			LDAA	#$01
			STAA	VOICE_EDITED
			CLR	VOICE_COMPARE
			LDD	#$0101
			STD	OP_ENABLE
			STD	OP_ENABLE + 2
			OIM	#ECMI,TCSR3
27			LDX	#LCD_BOTTOM
			STX	DPTR
			LDX	#S_LOAD_COMPLETED
			JSR	LCD_WRITE
			JSR	HI_CALL_0A
			CLI
			LDAA	#$01
			STAA	M00CE
			RTS
28			LDAA	M00CD
			INCA
			STAA	M00CD
			CMPA	#$20
			BEQ	29F
			JMP	19B
29			CLI
			CLR	>M00CE
			RTS
30			JMP	C_8CE9

;-------

F_8EB0			CLR	>M00D3
			LDX	#LCD_BOTTOM + 9
			STX	DPTR
			LDX	#S_READY
			JMP	LCD_WRITE

;-------

F_8EBE			JSR	HI_CALL_00
			SEI
			JSR	HI_CALL_01
			CLR	>M005A
			LDAB	#$0C
			JSR	LCD_WAIT
			STAB	LCD_CMD
			JSR	MIDI_INIT_RX
			RTS

;-------

F_8ED4			LDAA	M6A0A
			STAA	M6A16
			LDAA	M00D7
			BEQ	1F
			CMPA	#$03
			BCC	1F
			CMPA	#$02
			BNE	3F
			LDD	M6A0F
			BRA	2F
1			LDD	M6A0B
2			STD	M6A17
3			RTS

;-------

F_8EF2			LDX	#LCD_BUFFER + 9
			STX	DPTR
			LDAB	#$07
			JSR	PUT_SPACES
			LDX	#LCD_BUFFER + 11
			STX	DPTR
			LDX	#1F
			LDAB	M00D7
			ASLB
			ABX
			LDX	,X
			JSR	LCD_WRITE
			RTS

1			FDB	S_DX
			FDB	S_TX
			FDB	S_PFM
			FDB	S_AL_2
			FDB	S_SY_2
			FDB	S_PC_2
			FDB	S_EF_2
			FDB	S_MC_2

;-------

S_READY			FCC	"ready? "
			FCB	$00
S_VERIFY		FCC	" Verify"
			FCB	$00
S_SAVE			FCC	" Save"
			FCB	$00
S_INT			FCC	" INT	 "
			FCB	$00
S_ERR			FCC	" ERR"
			FCB	$00
S_VERIFY_TAPE		FCC	" Verify Tape"
			FCB	$00
S_TAPE_TO_INT		FCC	" Tape to INT"
			FCB	$00
S_VERIFY_COMPLETED	FCC	"Verify Completed"
			FCB	$00
S_LOAD_ALL_READY	FCC	"Load all  ready?"
			FCB	$00
S_LOAD_READY		FCC	"Load	 ready?  "
			FCB	$00
S_TAPE_TO_BUFF		FCC	"Tape ?? to BUFF?"
			FCB	$00
S_SEARCH_TAPE		FCC	" Search Tape  "
			FCB	$00
S_LOAD_COMPLETED	FCC	" Load Completed "
			FCB	$00
S_PFM			FCC	"(PFM)"
			FCB	$00
S_TAPE_TO_PFM		FCC	" Tape to PFM"
			FCB	$00
S_PFM_2			FCC	" PFM	 "
			FCB	$00
S_TO_TAPE		FCC	"to Tape"
			FCB	$00
S_TAPE_TO		FCC	" Tape to "
			FCB	$00
S_PGM_CNG		FCC	" PGMCNG "
			FCB	$00
S_SYSTEM		FCC	" SYSTEM "
			FCB	$00
S_EFFECT		FCC	" EFFECT "
			FCB	$00
S_MICROTUN		FCC	" MICTUN "
			FCB	$00

S_ALL			FCC	"ALL"
			FCB	$00
S_SYS			FCC	"SYS"
			FCB	$00
S_PC			FCC	"PC "
			FCB	$00
S_EF			FCC	"EF "
			FCB	$00
S_MC			FCC	"MC "
			FCB	$00

S_AL_2			FCC	"(AL)"
			FCB	$00
S_SY_2			FCC	"(SY)"
			FCB	$00
S_PC_2			FCC	"(PC)"
			FCB	$00
S_EF_2			FCC	"(EF)"
			FCB	$00
S_MC_2			FCC	"(MC)"
			FCB	$00

;--------

F_903F			LDX	#M69C1
			STX	M0079
			LDAB	M00D7
			JSR	JMPOFFB
			FCB	1F - *
			FCB	1F - *
			FCB	2F - *
			FCB	3F - *
			FCB	4F - *
			FCB	5F - *
			FCB	7F - *
			FCB	8F - *

1			LDAB	#$4E		; case 0, 1
			MUL
			ADDD	#USER_VOICE
			STD	M0077
			JMP	F_9196

2			LDAB	#$4C		; case 2
			MUL
			ADDD	#USER_PFM
			STD	M0077
			LDAB	#$49
			JSR	BCOPY
			LDX	M0079
			INX
			STX	M0079
			LDAB	#$03
			JMP	BCOPY
3			LDAB	M6A15		; case 3
			BEQ	5F
			CMPB	#$01
			BEQ	7F
			BRA	8F
4			LDX	#SYS_PARAMS	; case 4 (system parameters)
			STX	M0077
			LDAB	#$0B
			JSR	BCOPY
			LDX	#GREETING
			STX	M0077
			LDAB	#$10
			JSR	BCOPY
			LDAB	#$2E
			JMP	MEMCLR_xB_79
5			LDAB	#$40		; case 5
			MUL
			ADDD	#PROG_CHANGES
			STD	M0077
6			LDAB	#64
			JSR	BCOPY
			LDAB	#9
			JMP	MEMCLR_xB_79
7			LDX	#EFFECTS_PARAMS	; case 6
			STX	M0077
			LDAB	#55
			JSR	BCOPY
			LDAB	#18
			JMP	MEMCLR_xB_79
8			TSTA			; case 7
			BNE	9F
			LDX	#MICROTUNE_OCT
			STX	M0077
			LDAB	#24
			JSR	BCOPY
			LDAB	#49
			JMP	MEMCLR_xB_79
9			DECA
			LDAB	#64
			MUL
			ADDD	#MICROTUNE_FULL
			STD	M0077
			BRA	6B

;-------

F_90D5			LDX	#M6A0B
			STX	M0077
			LDX	#M6A04
			STX	M0079
			LDAB	#11
			JSR	BCOPY
			RTS

;-------

F_90E5			LDX	#M6A0B
			STX	M0077
			LDX	#M6A0A
			STX	M0079
			LDAB	#3
			JSR	BCOPY
			RTS

;-------

F_90F5			LDX	#M69C1
			STX	M0077
			LDAB	M00D7
			JSR	JMPOFFB
			FCB	1F - *
			FCB	1F - *
			FCB	2F - *
			FCB	4F - *
			FCB	3F - *
			FCB	4F - *
			FCB	6F - *
			FCB	7F - *

1			LDAB	#$4E		; case 0, 1
			MUL
			ADDD	#USER_VOICE
			STD	M0079
			JSR	BCOPY_67
			TST	>M00D7
			BEQ	9F
			LDX	#M6A0B
			STX	M0077
			LDAB	#$0B
			JSR	BCOPY
			RTS

2			LDAB	#$4C
			MUL
			ADDD	#USER_PFM
			STD	M0079
			LDAB	#$49
			JSR	BCOPY
			LDX	#M6A0B
			STX	M0077
			LDAB	#$03
			JSR	BCOPY
			RTS

3			LDX	#SYS_PARAMS	; case 4 (system parameters)
			STX	M0079
			LDAB	#$0B
			JSR	BCOPY
			LDX	#GREETING
			STX	M0079
			LDAB	#$10
			JSR	BCOPY
			RTS

4			CMPA	#$02		; case 3, 5
			BCC	5F
			LDAB	#$40
			MUL
			ADDD	#PROG_CHANGES
			STD	M0079
			LDAB	#64
			JSR	BCOPY
5			RTS

6			LDX	#EFFECTS_PARAMS	; case 6
			STX	M0079
			LDAB	#$37
			JSR	BCOPY
			RTS

7			TSTA			; case 7
			BNE	8F
			LDX	#MICROTUNE_OCT
			STX	M0079
			LDAB	#24
			JSR	BCOPY
			RTS

8			DECA
			LDAB	#64
			MUL
			ADDD	#MICROTUNE_FULL
			STD	M0079
			LDAB	#$40
			JSR	BCOPY
			RTS

9			LDAB	#$0B
10			LDX	M0079
			CLR	,X
			INX
			STX	M0079
			DECB
			BNE	10B
			RTS

;-------

F_9196			CLRB
1			LDX	M0077
			LDAA	,X
			CMPB	#$43
			BCS	4F
			CMPB	#$46
			BCS	3F
			CMPB	#$49
			BEQ	8F
			BCS	2F
			CMPB	#$50
			BNE	7F
			ANDA	#$0F
			BRA	7F
2			LDAA	#$32
			BRA	8F
3			LDAA	#$63
			BRA	8F
4			CMPB	#$30
			BNE	7F
			TIM	#%00000100,$00,X
			BNE	5F
			ANDA	#%11111011
			ORAA	#$02
			BRA	6F
5			ORAA	#$04
			ANDA	#$FD
6			ANDA	#$0F
7			INX
			STX	M0077
8			LDX	M0079
			STAA	,X
			INX
			STX	M0079
			INCB
			TST	M777E
			BNE	9F
			CMPB	#$55
			BRA	10F
9			CMPB	#$49
10			BNE	1B
			RTS

;-------

BCOPY_67		LDAB	#67

;-------		fallthrough

BCOPY
0			LDX	M0077
			LDAA	,X
			INX
			STX	M0077
			LDX	M0079
			STAA	,X
			INX
			STX	M0079
			DECB
			BNE	0B
			RTS

;-------

MEMCLR_xB_79		CLRA
1			LDX	M0079
			STAA	,X
			INX
			STX	M0079
			DECB
			BNE	1B
			RTS

;-------

F_9207			LDX	#M69C1
			STX	M0077
			LDAA	M00CD
			LDAB	M00D7
			JSR	JMPOFFB
			FCB	4F - *
			FCB	4F - *
			FCB	1F - *
			FCB	10F - *
			FCB	15F - *
			FCB	10F - *
			FCB	12F - *
			FCB	13F - *

1			LDAB	#$4C		; case 2
			MUL
			ADDD	#USER_PFM
			STD	M0079
			CLRB
2			LDX	M0077
			LDAA	,X
			INX
			STX	M0077
			LDX	M0079
			SUBA	,X
			BNE	9F
			INX
			STX	M0079
			INCB
			CMPB	#$49
			BCS	2B
			BHI	3F
			LDX	#M6A0B
			STX	M0077
			BRA	2B
3			CMPB	#$4C
			BCS	2B
			BRA	9F
4			LDAB	#$4E		; case 0, 1
			MUL
			ADDD	#USER_VOICE
			STD	M0079
			CLRB
5			LDX	M0077
			LDAA	,X
			INX
			STX	M0077
			LDX	M0079
			CMPB	#$30
			BNE	6F
			EORA	,X
			ANDA	#$0D
			BNE	9F
			BRA	7F
6			SUBA	,X
			BNE	9F
7			INX
			STX	M0079
			INCB
			CMPB	#$43
			BCS	5B
			BHI	8F
			LDAA	M00D7
			BEQ	9F
			CMPA	#$01
			BNE	9F
			LDX	#M6A0B
			STX	M0077
			BRA	5B
8			CMPB	#$4E
			BNE	5B
9			RTS
10			CMPA	#$02		; case 3, 5
			BCC	11F
			LDAB	#$40
			MUL
			ADDD	#PROG_CHANGES
			STD	M0079
			LDAB	#$40
			BRA	17F
11			CLRB			; case 6
			BRA	9B
12			LDX	#EFFECTS_PARAMS	; case 4
			STX	M0079
			LDAB	#$37
			BRA	17F
13			TSTA			; case 7
			BNE	14F
			LDX	#MICROTUNE_OCT
			STX	M0079
			LDAB	#$18
			BRA	17F
14			DECA
			LDAB	#64
			MUL
			ADDD	#MICROTUNE_FULL
			STD	M0079
			LDAB	#$40
			BRA	17F
15			LDX	#SYS_PARAMS
			STX	M0079
			LDAB	#$0B
16			LDX	M0077
			LDAA	,X
			INX
			STX	M0077
			LDX	M0079
			SUBA	,X
			BNE	9B
			INX
			STX	M0079
			DECB
			BNE	16B
			LDX	#GREETING
			STX	M0079
			LDAB	#$10
17			LDX	M0077
			LDAA	,X
			INX
			STX	M0077
			LDX	M0079
			SUBA	,X
			BNE	9B
			INX
			STX	M0079
			DECB
			BNE	17B
			BRA	9B

;-------

F_92F3			LDX	#M69C1
			LDAB	M00D7
			BEQ	1F
			CMPB	#$03
			BCS	2F
1			LDAB	#$4A
			BRA	4F
2			CMPB	#$01
			BNE	3F
			LDAB	#$56
			BRA	4F
3			LDAB	#$4E
4			STAB	M007B
			CLRA
			CLRB
5			ADDB	,X
			ADCA	#$00
			INX
			DEC	>M007B
			BNE	5B
			RTS

;-------

F_931B			LDX	#M69C1
			LDAB	M00D7
			CMPB	#$01
			BNE	1F
			LDAB	#$58
			BRA	3F
1			CMPB	#$02
			BNE	2F
			LDAB	#$50
			BRA	3F
2			LDAB	#$4C
3			STAB	M00CF
			BSR	F_934A
			LDAB	#$3C
			SPIN4F
5			LDAA	,X
			BSR	F_939D
			LDAB	#$3B
			PSHX
			PULX
			INX
			DEC	>M00CF
			BNE	5B
			RTS

;-------

F_934A			PSHA
			PSHB
			PSHX
			TST	>M00CD
			BNE	1F
			LDX	#6000
			BRA	2F
1			LDX	#300
2			LDAB	#30
			SPIN4F
			DES
			BSR	F_936A
			INS
			DEX
			BNE	2B
			PULX
			PULB
			PULA
			RTS

;-------

F_936A			LDAA	#$01
			BSR	F_9383
			BSR	F_9381
			BSR	F_9381
			BSR	F_9381
			RTS

;-------

F_9375			LDAA	#$01
			BSR	F_9383
			LDAB	#$41
			PSHX
			PULX
			NOP
			BSR	F_9383
			RTS

;-------

F_9381			LDAB	#$20

;-------		fallthrough

F_9383
0			TIM	#SW5,PORT5		; test DEC switch
			BEQ	2F
			DECB
			BNE	0B
			SPIN4F
			EORA	#CASS_OUT
			STAA	PORT2
			RTS
2			LDAA	#$01
			STAA	M00D3
			TSX
			LDAB	#$0B
			ABX
			TXS
			RTS

;-------

F_939D			PSHA
			PSHB
			PSHX
			LDX	#TCSR1
			PSHA
			BSR	F_9375
			PULA
			SPIN3F
1			SPIN4F
3			NOP
			NOP
			RORA
			PSHA
			BCS	4F
			LDAB	#$3F
			BSR	F_9375
			BRA	5F
4			LDAB	#$1D
			BSR	F_936A
			BRA	5F
5			PULA
			DEX
			BNE	3B
			LDAB	#$1D
			PSHX
			PULX
			NOP
			DES
			BSR	F_936A
			LDAB	#$1E
			PSHX
			PULX
			NOP
			BSR	F_936A
			INS
			PULX
			PULB
			PULA
			RTS

;-------

F_93D6			CLR	>M00D7
			LDX	#M69C1
			JSR	F_9467
			BCS	1F
			JMP	14F
1			JSR	F_9481
			BCC	14F
			LDAA	#$80
			STAA	M00D2
			JSR	F_94DE
			BCC	14F
			LDAA	M00D2
			STAA	,X
			INX
2			JSR	F_94AD
			BCC	14F
			LDAA	M00D2
			STAA	,X
			INX
			LDAB	M00D7
			BEQ	4F
			CMPB	#$04
			BCC	4F
			CMPB	#$01
			BNE	3F
			CPX	#M6A19
			BNE	2B
			BRA	13F
3			CMPB	#$02
			BNE	12F
			CPX	#M6A11
			BNE	2B
			BRA	13F
4			CPX	#M6A0D
			BNE	2B
			LDAA	M6A0A
			ANDA	#$E0
			BEQ	13F
			CMPA	#$20
			BNE	5F
			LDAB	#$01
			BRA	11F
5			CMPA	#$40
			BNE	6F
			LDAB	#$02
			BRA	11F
6			LDAA	M6A0A
			CMPA	#$60
			BNE	7F
			LDAB	#$04
			BRA	10F
7			CMPA	#$65
			BEQ	8F
			BHI	9F
			LDAB	#$05
			BRA	10F
8			LDAB	#$06
			BRA	10F
9			LDAB	#$07
10			STAB	M00D7
			BRA	13F
11			STAB	M00D7
			BRA	2B
12			LDAB	#$02
			STAB	M00D3
			CLC
			BRA	14F
13			SEC
14			RTS

;-------

F_9467
0			CLRA
			STAA	M00D1
1			BSR	F_9493
			BCC	2F
			BSR	F_9494
			BCC	2F
			CMPB	#$38
			BCC	0B
			CMPB	#$11
			BCS	0B
			INC	>M00D1
			BNE	1B
			SEC
2			RTS

;-------

F_9481			CLR	>M00D4
1			BSR	F_9493
			BCC	2F
			TBA
			ADDA	M00D4
			STAB	M00D4
			CMPA	#$41
			BCS	1B
			SEC
2			RTS

;-------

F_9493			CLRB

;-------		fallthrough

F_9494
0			TIM	#SW5,PORT5		; test DEC switch
			BEQ	1F
			INCB
			LDAA	PORT2
			ANDA	#CASS_IN
			EORA	M00D5
			BEQ	0B
			EIM	#$02,M00D5
			SEC
			RTS
1			LDAA	#$01
			STAA	M00D3
			CLC
			RTS

;-------

F_94AD			LDAA	#$80
			STAA	M00D2
			BSR	F_951E
			BCC	6F
1			CLRB
2			INCB
			BEQ	6F
			TIM	#SW5,PORT5
			BEQ	5F
			LDAA	PORT2
			ANDA	#CASS_IN
			EORA	M00D5
			BEQ	2B
3			INCB
			BEQ	6F
			TIM	#SW5,PORT5
			BEQ	5F
			LDAA	PORT2
			ANDA	#$02
			EORA	M00D5
			BNE	3B
			CMPB	#$66
			BCC	6F
			CMPB	#$33
			BCS	1B

;-------	fallthrough

F_94DE			BSR	F_94FA
			BCC	6F
			LDAA	M00D6
			CMPA	#$04
			BCC	6F
			RORA
			RORA
			ROR	>M00D2
			BCC	F_94DE
			RTS

5			LDAA	#$01
			BRA	7F
6			LDAA	#$02
7			STAA	M00D3
			CLC
			RTS

;-------

F_94FA			LDAA	PORT2
			ANDA	#CASS_IN
			STAA	M00D0
			CLR	>M00D6
			LDAB	#$28
1			LDAA	PORT2
			ANDA	#CASS_IN
			EORA	M00D0
			BEQ	3F
			INC	>M00D6
			EIM	#$02,M00D0
2			DECB
			BNE	1B
			LDAA	M00D0
			BRA	6F
3			PSHX
			PULX
			BRA	2B

;------- fallthrough

F_951E			CLRB
5			INCB
			TSTB
			BEQ	8F
			LDAA	PORT2
			ANDA	#CASS_IN
6			EORA	M00D5
			BEQ	5B
7			INCB
			TSTB
			BEQ	8F
			LDAA	PORT2
			ANDA	#CASS_IN
			EORA	M00D5
			BNE	7B
			SEC
8			RTS

;-------

LO_CALL_02		LDAA	#$00
			STAA	M7772
			CLR	POLL_ENABLE
			LDD	#$0101			; enable all operators
			STD	OP_ENABLE		;
			STD	OP_ENABLE + 2		;
			LDAA	#64			; set master tune to default
			STAA	SYS_TUNE		; -
			JSR	HI_CALL_00
			JSR	HI_CALL_01
			CLR	>M005A
			JSR	INIT_EVERYTHING
			JSR	HI_CALL_1A
			JSR	LCD_CLR
			LDAA	M00A6
			CMPA	#$03
			BNE	2F
			LDAA	#$04
			STAA	M7772
			JSR	DELAY_30_x_4500
			LDAA	#$04
			STAA	M00D8
			CLR	>M00D9
			JSR	F_96C4
			SEI
1			SPIN3
			JSR	MIDI_INIT
			CLI
			JMP	4F
2			LDX	#LCD_BUFFER
			STX	DPTR
			LDX	#S_CHECK_LVL
			JSR	PUTSTRX
			LDAA	#$FE
			STAA	INST_FOOT
			CLR	INST_MODULATION
			CLR	M776D
			CLR	INST_VOLUME
			CLR	M7F99
			AIM	#~ECMI,TCSR3
			AIM	#~EOCI1,TCSR1
			AIM	#~IRQ1E,RP5CR
			LDAA	#$04
			STAA	M0058
			LDAA	#$45
			STAA	M0052
			LDAA	#$30
			STAA	M00F1
			LDAB	#$00
			JSR	NOTE_START
			OIM	#IRQ1E,RP5CR
			OIM	#EOCI1,TCSR1
			OIM	#ECMI,TCSR3
			CLR	M7933
			CLRA
			LDAB	#$30
			BSR	OPZ_WRITE_BA
			CLRA
			LDX	#S_1L
			BSR	F_9604
			LDAA	#$80
			LDX	#S_2R
			BSR	F_9604
			CLRA
			LDX	#S_HP_L
			BSR	F_9604
			LDAA	#$80
			LDX	#S_HP_R
			BSR	F_9604
			AIM	#~ECMI,TCSR3
			AIM	#~EOCI1,TCSR1
			LDAA	#$04
			STAA	M0058
			LDAA	#$45
			STAA	M0051
			LDAB	#$00
			JSR	NOTE_STOP
			OIM	#EOCI1,TCSR1
			OIM	#ECMI,TCSR3
			LDAA	#$04
			STAA	M7772
			BRA	LO_CALL_02_PT2

;-------

F_9604			PSHA
			PSHX
			LDX	#LCD_BUFFER + 11
			STX	DPTR
			PULX
			JSR	LCD_WRITE
			PULA
			BSR	OPZ_WRITE_20
1001			JSR	READ_SWITCHES
			CMPB	#$01
			BNE	1001B
			JSR	DELAY_30_x_4500
			RTS

;-------

OPZ_WRITE_20		LDAB	#$20

;-------	fallthrough

OPZ_WRITE_BA		SEI
			SPIN3
			OPZ_POLL
			OPZ_OUT_A
			CLI
			RTS

;-------

S_1L			FCC	"1(L)"
			FCB	$00
S_2R			FCC	"2(R)"
			FCB	$00
S_HP_L			FCC	"HP(L)"
			FCB	$00
S_HP_R			FCC	"HP(R)"
			FCB	$00

;-------
;
; LO_CALL_02 continues

LO_CALL_02_PT2		JSR	LCD_CLR
			SEI
3			SPIN3
			CLRA
			STAA	TCSR1
			STAA	TCSR2
			LDAA	#$02
			STAA	TCSR3
			AIM	#~IRQ1E,RP5CR
			JSR	F_96C4
			JSR	F_9700
			JSR	F_97E2
			JSR	MIDI_INIT
			CLI
			JSR	F_978D
			LDAA	#$52
			STAA	TCSR3
4			LDAA	M00D8
			BNE	5F
			JSR	F_9852
			BRA	10F
5			CMPA	#$01
			BNE	6F
			JSR	F_9893
			BRA	10F
6			CMPA	#$02
			BNE	7F
			JSR	F_9883
			BRA	10F
7			CMPA	#$03
			BNE	8F
			JSR	TEST_LEDS
			BRA	10F
8			CMPA	#$04
			BNE	9F
			JSR	F_9907
			BRA	4B
9			CMPA	#$05
			BNE	10F
			JSR	F_9914
			BRA	11F
10			JSR	READ_SWITCHES
			JSR	F_96AD
			BRA	4B
11			RTS

;-------

F_96AD			TSTB
			BEQ	1F
			CMPB	#$01
			BEQ	2F
1			RTS
2			LDAA	M00D8
			CMPA	#$05
			BHI	F_96AD
			INC	>M00D8
			CLR	>M00D9
			JMP	LCD_CLR

;-------

F_96C4			CLR	M7773
			CLR	M7779
			LDAA	#$01
			STAA	POLL_ENABLE
			STAA	SYS_COINF
			STAA	SYS_PBSW
			STAA	SYS_PCINF
			STAA	SYS_SYSAVL
			LDAA	#$10
			STAA	SYS_MIDBCH
			CLR	SYS_MIDTCH
			CLR	SYS_NOTESW
			CLR	SYS_AT
			LDAB	#$40
			LDAA	#$0A
1			COMA
			JSR	LCD_WAIT
			STAB	LCD_CMD
			JSR	LCD_WAIT
			STAA	LCD_DATA
			INCB
			CMPB	#$48
			BNE	1B
			RTS

;-------

F_9700			LDX	#RAM
			STX	SPTR
			LDX	#$00F8
			STX	DPTR
1			BSR	F_9718
			BSR	F_9744
			BSR	F_9723
			LDX	SPTR
			CPX	#M7FE0
			BCS	1B
			RTS

;-------

F_9718			LDX	SPTR
			STX	M00DA
			LDX	DPTR
			STX	M00DC
			BSR	F_9733
			RTS

;-------

F_9723			LDX	DPTR
			STX	M00DA
			LDX	SPTR
			STX	M00DC
			BSR	F_9733
			LDX	SPTR
			ABX
			STX	SPTR
			RTS

;-------

F_9733			CLRB
1			LDX	M00DA
			ABX
			LDAA	,X
			LDX	M00DC
			ABX
			STAA	,X
			INCB
			CMPB	#$08
			BNE	1B
			RTS

;-------

F_9744			CLRB
1			LDX	SPTR
			ABX
			LDAA	#$55
			BSR	F_9756
			LDAA	#$AA
			BSR	F_9756
			INCB
			CMPB	#$08
			BNE	1B
			RTS

;-------

F_9756			STAA	,X
			CMPA	,X
			BNE	1F
			RTS
1			LDAA	#$0E
			PSHA
			LDX	#S_IC_NG
			JSR	LCD_OUT
			PULA
			LDX	#LCD_BUFFER + 3
			STX	DPTR
			JSR	PUT_DEC_NN
			JSR	LCD_UPDATE
2			BRA	2B

;-------

S_CHECK_LVL		FCC	"Check LVL"
			FCB	$00

S_IC_NG			FCC	" IC   is NG ! "
			FCB	$00

;-------

F_978D			LDAB	#$0A
1			LDX	#MIDI_RXBUF
			ABX
			CLR	,X
			DECB
			BNE	1B
			CLRB
2			LDX	#S_TX81Z
			ABX
			LDAA	,X
			BEQ	3F
			JSR	MIDI_SEND
			INCB
			BRA	2B
3			LDAB	#$01
			JSR	DELAY_B_x_4500
			LDX	#S_TX81Z
			STX	SPTR
			LDX	#MIDI_RXBUF
			STX	DPTR
4			LDX	SPTR
			ABX
			LDAA	,X
			BEQ	5F
			LDX	DPTR
			ABX
			CMPA	,X
			BNE	6F
			INCB
			BRA	4B
5			RTS
6			LDX	#S_ERROR_MIDI
			JSR	LCD_OUT
7			BRA	7B

;-------

S_ERROR_MIDI		FCC	"ERROR MIDI!"
			FCB	$00

S_TX81Z			FCC	"TX81Z"
			FCB	$00

;-------

F_97E2			CLRB
1			EIM	#CASS_OUT,PORT2
			BSR	F_981B
			LDAA	PORT2
			ANDA	#$02
			STAA	M00D0
			DECB
			BNE	1B
			LDAB	#$80
2			EIM	#CASS_OUT,PORT2
			BSR	F_9824
			DECB
			BNE	2B
			LDAA	M00DE
			CMPA	#$7E
			BCS	4F
			CMPA	#$83
			BCC	4F
3			RTS
4			LDX	#S_ERROR_CASS
			JSR	LCD_OUT
			LDAA	M00A6
			CMPA	#$02
5			BNE	5B
6			JSR	READ_SWITCHES
			CMPB	#$02
			BNE	6B
			BRA	3B

;-------

F_981B			LDX	#$009F
			NOP
			NOP
1			DEX
			BNE	1B
			RTS

;-------

F_9824			LDX	#$15
1			LDAA	PORT2
			ANDA	#CASS_IN
			EORA	M00D0
			BEQ	2F
			EORA	M00D0
			STAA	M00D0
			INC	>M00DE
			BRA	3F
2			PSHX
			PULX
			SPIN3
			SPIN3
3			DEX
			BNE	1B
			PSHX
			PULX
			NOP
			RTS

;-------

S_ERROR_CASS		FCC	"ERROR CASS.!"
			FCB	$00

;-------

F_9852			LDX	#S_CHECK_MIDI_THRU
			JSR	LCD_OUT
			LDAA	#$AA
			JSR	MIDI_SEND
			LDAA	#$FF
			JSR	MIDI_SEND
			CLRA
			JSR	MIDI_SEND
			LDAA	#$55
			JSR	MIDI_SEND
			LDX	#$A000
1			DEX
			BNE	1B
			RTS

S_CHECK_MIDI_THRU	FCC	"Check MIDI THRU "
			FCB	$00

;-------

F_9883			CLRA
			CLRB
1			LDX	#LCD_BUFFER
			ABX
			STAA	,X
			INCB
			CMPB	#$20
			BNE	1B
			JMP	LCD_UPDATE

;-------

F_9893			LDAA	M00D9
			ANDA	#$01
			BNE	2F
			LDAA	#$20
			CLRB
1			LDX	#LCD_BUFFER
			ABX
			STAA	,X
			INCB
			CMPB	#$20
			BNE	1B
			JSR	LCD_UPDATE
			LDAA	M00D9
			CMPA	#$05
			BCC	1000F
			INCA
			STAA	M00D9
			BRA	DELAY_30_x_4500
2			LDAA	#$FF
			CLRB
			BRA	1B

;-------	fallthrough

DELAY_30_x_4500		LDAB	#30

;-------	fallthrough

DELAY_B_x_4500
0			LDX	#4500
1			DEX
			BNE	1B
			DECB
			BNE	0B
1000			RTS

;-------

TEST_LEDS		TST	>M00D9
			BNE	3F
			LDAA	#$01
			STAA	POLL_ENABLE
			STAA	SYS_COINF
			STAA	M00D9
			LDX	#S_CHECK_LED
			JSR	LCD_OUT
			CLRB
1			LDAA	#LED4
2			ANDA	#~BANKSEL
			STAA	PORT6
			LSRA
			PSHB
			LDAB	#30
			JSR	DELAY_B_x_4500
			PULB
			INCB
			CMPB	#4
			BEQ	1B
			CMPB	#8
			BNE	2B
			LDAA	#LED4|LED3|LED2|LED1
			ANDA	#~BANKSEL
			STAA	PORT6
3			RTS

S_CHECK_LED		FCC	"Check LED1-4"
			FCB	$00

;-------

F_9907			SPIN3
			SPIN3
			INC	>M00D8
			CLR	>M00D9
			JMP	LCD_CLR

F_9914			TST	>M00D9
			BNE	1F
			CLR	>M00DA
			LDX	#S_PUSH_SWITCH
			JSR	LCD_OUT
1			LDAA	M00D9
			INCA
			CLRB
			LDX	#LCD_BUFFER + 12
			STX	DPTR
			JSR	PUT_DEC_NN
			JSR	LCD_UPDATE
			JSR	READ_SWITCHES
			TSTB
			BNE	2F
			CLR	>M00DA
			BRA	1B
2			CMPB	#$03
			BCS	7F
			CMPB	#$04
			BCS	8F
			BEQ	1B
			CMPB	#$0A
			BCS	9F
			CMPB	#$0D
			BCS	10F
			BRA	1B
3			CMPB	M00D9
			BEQ	4F
			LDAB	#$01
			STAB	M00DA
			BRA	1B
4			TST	>M00DA
			BEQ	6F
			DEC	>M00D9
			TST	>M00D9
5			BMI	5B
			CLR	>M00DA
			BRA	1B
6			LDAB	#$01
			STAB	M00DA
			INC	>M00D9
			LDAB	M00D9
			CMPB	#$0B
			BNE	1B
			JMP	hdlr_RST
7			COMB
			SUBB	#$F7
			BRA	3B
8			CLRB
			BRA	3B
9			SUBB	#$04
			BRA	3B
10			SUBB	#$02
			BRA	3B

S_PUSH_SWITCH		FCC	"Push Switch"
			FCB	$00

;-------

INIT_EVERYTHING		JSR	INIT_USER_VOICES
			JSR	INIT_USER_PFMS
			LDX	#D_INIT_EFFECTS_PARAMS	; copy default effects params
			STX	SPTR			; -
			LDAB	#55			; -
			LDX	#EFFECTS_PARAMS		; -
			JSR	MEMCPYX			; -
			CLRB				; init program change table
			LDX	#PROG_CHANGES		; -
1			STAB	,X			; -
			INCB				; -
			INX				; -
			CPX	#PROG_CHANGES_END	; -
			BNE	1B			; -
			LDX	#S_GOOD_MORNING
			STX	SPTR
			LDAB	#$10
			LDX	#GREETING
			JSR	MEMCPYX
			JSR	F_9A00
			RTS

D_INIT_EFFECTS_PARAMS	FCB	$08,$18,$00,$49		; EF1
			FCB	$00,$00,$19		; EF2
			FCB	$10,$13,$18,$31		; CHORD C3
			FCB	$10,$13,$15,$18		; CHORD C#3
			FCB	$11,$15,$18,$31		; ...
			FCB	$10,$13,$18,$31
			FCB	$0F,$14,$18,$31
			FCB	$10,$13,$15,$18
			FCB	$10,$13,$15,$18
			FCB	$10,$13,$18,$31
			FCB	$10,$13,$15,$18
			FCB	$0F,$14,$18,$31
			FCB	$10,$13,$15,$18
			FCB	$0F,$12,$14,$18		; CHORD B3

;-------

F_9A00			LDAA	M778A
			PSHA
			LDAA	M7789
			PSHA
			LDAB	#$01
			STAB	M778A
			LDAB	#$01
			STAB	M7789
			CLRA
			JSR	HI_CALL_02
			LDAB	#$03
			STAB	M7789
			CLRA
			JSR	HI_CALL_02
			PULA
			STAA	M7789
			PULA
			STAA	M778A
			JSR	HI_CALL_03
			RTS

;-------

HI_CALL_00		PSHB
			LDAB	#$00
			JMP	1F
HI_CALL_01		PSHB
			LDAB	#$01
			JMP	1F
HI_CALL_02		PSHB
			LDAB	#$02
			JMP	1F
HI_CALL_03		PSHB
			LDAB	#$03
			JMP	1F
HI_CALL_04		PSHB
			LDAB	#$04
			JMP	1F
HI_CALL_05		PSHB
			LDAB	#$05
			JMP	1F
HI_CALL_06		PSHB
			LDAB	#$06
			JMP	1F
MIDI_INIT_RX		PSHB
			LDAB	#$07
			BRA	1F
MIDI_INIT		PSHB
			LDAB	#$08
			BRA	1F
HI_CALL_09		PSHB
			LDAB	#$09
			BRA	1F
HI_CALL_0A		PSHB
			LDAB	#$0A
			BRA	1F
MIDI_SEND_SENSE		PSHB
			LDAB	#$0B
			BRA	1F
MIDI_SEND			PSHB
			LDAB	#$0C
			BRA	1F
HI_CALL_0D		PSHB
			LDAB	#$0D
			BRA	1F
SEND_SYSEX_VMEM_HDR	PSHB
			LDAB	#$0E
			BRA	1F
HI_CALL_0F		PSHB
			LDAB	#$0F
			BRA	1F
SEND_SYSEX_END		PSHB
			LDAB	#$10
			BRA	1F
CALC_E2FR_VALUE		PSHB
			LDAB	#$11
			BRA	1F
CLEAR_ACED		PSHB
			LDAB	#$12
			BRA	1F
HI_CALL_13		PSHB
			LDAB	#$13
			BRA	1F
HI_CALL_14		PSHB
			LDAB	#$14
			BRA	1F
HI_CALL_15		PSHB
			LDAB	#$15
			BRA	1F
HI_CALL_16		PSHB
			LDAB	#$16
			BRA	1F
READ_SWITCHES		PSHB
			LDAB	#$17
			BRA	1F
HI_CALL_18		PSHB
			LDAB	#$18
			BRA	1F
HI_CALL_19		PSHB
			LDAB	#$19
			BRA	1F
HI_CALL_1A		PSHB
			LDAB	#$1A
			BRA	1F
HI_CALL_1B		PSHB
			LDAB	#$1B
			BRA	1F
NOTE_STOP		PSHB
			LDAB	#$1C
			BRA	1F
NOTE_START		PSHB
			LDAB	#$1D
1			STAB	XROM
			PULB
			JSR	XROM_CALL
			RTS

;-------

			INCLUDE	"inc/sendvmem.asm"

;-------

			INCLUDE	"inc/lcd_clr.asm"

PUTSTR_OFFSET		SET	SO_32_VOICE_ - $80
			INCLUDE	"inc/lcd.asm"

;-------
;
; printf "%3d", A
;
PUT_DEC_NNN		CLR	>M00AB			; clear leading space indicator
			LDAB	#100			; B <- divisor
			BSR	_PUT_DEC_DIV		; output one digit

;-------	fallthrough
;
; printf (B ? "%02d" : "%2d"), A
;
;
PUT_DEC_NN		STAB	M00AB			; remember if digits were output
			LDAB	#10			; B <- divisor
			BSR	_PUT_DEC_DIV		; output one digit

;-------	fallthrough
;
; printf "%c", A + '0'
;
PUTDIGIT		ADDA	#'0'			; assume input is in range, convert to ASCII
			TAB				; B <- A
			BRA	3F			; output the digit directly

;-------
;
; Helper for above functions - performs division to find each digit
;
;     A = dividend
;     B = divisor
;
; M00AB = 0 to replace zeroes with space
; M00AC used to store divisor
;
_PUT_DEC_DIV		STAB	M00AC			; save divisor
			LDAB	#'0'			; B <- initial quotient ('0' ASCII)
1			CMPA	M00AC			; compare A with divisor
			BCS	2F			; it's smaller? branch...
			INCB				; increment quotient
			SUBA	M00AC			; A <- (A - divisor)
			BRA	1B			; and start over
2			CMPB	#'0'			; check if result is 0 (remainder is still in A)
			BNE	3F			; no?  branch to output
			TST	>M00AB			; check leading space indicator
			BNE	3F			; non-zero?  branch to output
			LDAB	#' '			; replace zero with space, non-zero if digits were output

3			JSR	PUTCHAR			; output the character
			SUBB	#' '			; subtract 32 - leaves 0 if we're space filling
			RTS				; and done

;-------
;
; printf "%02d", D / 100
;
PUT_DEC_NN__		CLR	>M00AB			; 1000's count
			CLR	>M00AC			;  100's count
1			SUBD	#1000			; D <- D - 1000
			BCS	2F			; D < 0 ?  branch...
			INC	>M00AB			; increment 1000's count
			BRA	1B			; go around
2			ADDD	#1000			; D <- D + 1000 (i.e. positive again)
3			SUBD	#100			; D <- D - 100
			BCS	4F			; D < 0 ?  branch...
			INC	>M00AC			; increment 100's count
			BRA	3B			; go around
4			ADDD	#100			; D <- D + 100 (i.e. positive again)
			PSHB				; save B (2 digit remainder)
			LDAA	M00AB			; A <- 1000's count
			LDAB	#10			; B <- 10
			MUL				; D <- A * B (i.e. 10 * 1000's count)
			ADDB	M00AC			; B <- B + 10's count
			TBA				; A <- B
			LDAB	#1			; don't omit leading zeroes
			JSR	PUT_DEC_NN		; display two digits
			PULA				; restore A (2 digit remainder)
			RTS				; done

;-------
;
; printf "%5d", D
;
PUT_DEC_NNNNN		PSHA				; save A
			PSHB				; and B (D)
			CLR	>M00AB			; 10000's count
1			SUBD	#10000			; D <- D - 10000
			BCS	2F			; D < 0 ?  branch...
			INC	>M00AB			; increment 10000's count
			BRA	1B			; go around
2			ADDD	#10000			; D <- D + 10000 (positive again)
			XGDX				; D <-> X
			LDAA	M00AB			; A <- 10000's count
			BEQ	3F			; 0?  branch...
			JSR	PUTDIGIT		; output the digit
			BRA	4F			; carry on
3			LDAB	#' '			; otherwise output space
			JSR	PUTCHAR			; -
4			XGDX				; D <-> X again
			JSR	PUT_DEC_NN__		; output the 1000's and 100's digits (with leading zeroes)
			JSR	PUT_DEC_NN		; and the 10's and units digits
			PULB				; get the original number back into X
			PULA				; -
			XGDX				; -

			CPX	#1000			; X >= 1000?
			BCC	8F			; yes, we're done
			LDD	DPTR			; D <- current LCD buffer offset
			SUBD	#4			; D <- 4 (move back to thousands digit)
			STD	DPTR			; save D
			LDAB	#' '			; output a space
			JSR	PUTCHAR			; -
			CPX	#100			; X >= 100 ?
			BCC	6F			; yes, we're (almost) done
			JSR	PUTCHAR			; output another space
			CPX	#$0A			; X >=  10 ?
			BCC	5F			; yes, we're (almot) done
			JSR	PUTCHAR			; output another space
			LDAB	#$01			; B <- 1
			BRA	7F			; branch
5			LDAB	#$02			; B <- 2
			BRA	7F			; branch
6			LDAB	#$03			; B <- 3
7			LDX	DPTR			; X <- buffer offset
			ABX				; X <- X + B
			STX	DPTR			; save buffer offset
8			RTS				; done

;-------
;
; printf "%2d.%02d", D / 100, D % 100
;
PUT_DEC_NN_NN		PSHX				; save X
			XGDX				; X <-> D
			JSR	PUT_DEC_NN__		; output 1000s and 100s digits
			PULX				; restore X
			CPX	#1000			; is X >= 1000?
			BCC	1F			; yes?  branch
			LDAB	#' '			; hacky direct LCD buffer overwrite
			STAB	LCD_BOTTOM + 11		; of first digit from above
1			LDAB	#'.'			; output a decimal point
			JSR	PUTCHAR			; -
			JSR	PUT_DEC_NN		; and the remaining two digits (with zeroes)
			RTS				; -

;-------
;
; printf "%d.%02d", D / 100, D % 100
;
PUT_DEC_N_NN		CLR	>M00AC			; 100's count
1			SUBD	#100			; D <- D - 100
			BCS	2F			; D < 0 ?  branch...
			INC	>M00AC			; increment 100's count
			BRA	1B			; go around
2			ADDD	#100			; D <- D + 100 (positive again)
			PSHB				; save B (remainder - 0 .. 99)
			LDAA	M00AC			; A <- 100's count
			JSR	PUTDIGIT		; output the digit
			PULA				; A <- remainder
			LDAB	#'.'			; output a decimal point
			JSR	PUTCHAR			; -
			JSR	PUT_DEC_NN		; output two digits
			RTS				; done

;-------
;
; lowercases B if the current voice has been edited,
; or returns 'c' if we're in voice compare mode
;

TAG_VOICE_EDITED	TST	VOICE_EDITED
			BEQ	2F
			TST	VOICE_COMPARE
			BNE	1F
			ADDB	#$20
			BRA	2F
1			LDAB	#'c'
2			RTS

;------
;
; lowercases B if the current performance has been edited
;
TAG_PFM_EDITED		TST	PFM_EDITED
			BEQ	1F
			ADDB	#$20
1			RTS

;------
;
; Fill @DPTR with B space characters
;
PUT_SPACES		LDAA	#' '
			LDX	DPTR
1			STAA	,X
			INX
			STX	DPTR
			DECB
			BNE	1B
			RTS

;-------

LO_CALL_0C		TST	>M0056
			BNE	3F
			JSR	LCD_CLR
			STX	DPTR
			LDAB	#$0C
			JSR	LCD_WAIT
			STAB	LCD_CMD
			TST	>M009A
			BEQ	1F
			JMP	C_9E9E
1			LDAB	M7772
			CMPB	#23
			BCS	2F
			CLRB
2			JSR	JMPOFFB
			FCB	6F - *			; 0
			FCB	4F - *
			FCB	5F - *
			FCB	3F - *
			FCB	C_9D2E - *		; 4
			FCB	C_9D49 - *
			FCB	C_9D67 - *
			FCB	3F - *
			FCB	3F - *			; 8
			FCB	7F - *
			FCB	C_9DDD - *
			FCB	3F - *
			FCB	3F - *			; 12
			FCB	3F - *
			FCB	C_9D94 - *
			FCB	3F - *
			FCB	3F - *			; 16
			FCB	7F - *
			FCB	C_9E16 - *
			FCB	3F - *
			FCB	3F - *			; 20
			FCB	3F - *
			FCB	C_9DD0 - *

3			RTS				; case 3, 7, 8, 11, 12, 13,
							;      15, 16, 19, 20, 21

4			JMP	C_9EEC			; case 1
5			JMP	C_9EC0			; case 2
6			JMP	C_9E61			; case 0
7			JMP	C_9E2F			; case 9, 17
C_9D2E			JSR	F_B1CE			; case 4
			LDAB	#$02
			STAB	M7787
			TST	>M00A5
			BEQ	9F
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDX	#S_ARE_YOU_SURE
			JMP	LCD_WRITE
9			JMP	32F

C_9D49			JSR	F_B163			; case 5
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDAB	M7774
			CMPB	#$35
			BNE	11F
			LDX	#S_NAME
			JSR	PUTSTRX
			JSR	F_AFC9
			JMP	LCD_UPDATE
11			JMP	33F

C_9D67			TST	M7795			; case 6
			BPL	C_9D94
			LDAB	#'P'
			JSR	TAG_PFM_EDITED
			JSR	PUTCHAR
			LDAA	M7779
			JSR	F_AF7D
			LDX	#LCD_BUFFER + 5
			STX	DPTR
			JSR	F_AFC9
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDAB	#$2A
			STAB	M7774
			LDAB	#$02
			STAB	M7787
			JMP	C_9F54

C_9D94			LDAB	#'P'			; case 14
			JSR	TAG_PFM_EDITED
			JSR	PUTCHAR
			LDX	#S_ERFORMANCE_MODE
			JSR	PUTSTRX
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDX	#S_PFM_STORE
			JSR	PUTSTRX
			LDAA	M777A
			LDX	#LCD_BOTTOM + 10
			STX	DPTR
			INCA
			CLRB
			JSR	PUT_DEC_NN
			LDAB	#CH_RIGHT
			JSR	PUTCHAR
			LDAA	M7795
			BMI	14F
			LDX	#LCD_BOTTOM + 13
			STX	DPTR
			INCA
			CLRB
			JSR	PUT_DEC_NN
14			BRA	16F

C_9DD0			LDAB	#'P'			; case 22
			JSR	TAG_PFM_EDITED
			JSR	PUTCHAR
			LDX	#S_ERFORMANCE_MODE
			BRA	18F

C_9DDD			LDAB	#'P'			; case 10
			JSR	TAG_VOICE_EDITED
			JSR	PUTCHAR
			LDX	#S_LAY_SINGLE
			JSR	PUTSTRX
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDX	#S_MEM_STR
			JSR	PUTSTRX
			LDAA	M777F
			LDX	#LCD_BOTTOM + 8
			STX	DPTR
			JSR	F_AF7D
			LDAB	#CH_RIGHT
			JSR	PUTCHAR
			LDAA	M7795
			BMI	16F
			LDX	#LCD_BOTTOM + 12
			STX	DPTR
			JSR	F_AF7D
16			JMP	LCD_UPDATE

C_9E16			LDAB	#'P'			; case 18
			JSR	TAG_VOICE_EDITED
			JSR	PUTCHAR
			LDX	#S_LAY_SINGLE
18			JSR	PUTSTRX
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDX	#S_MEM_PROTECTED
			JMP	LCD_WRITE

C_9E2F			JSR	SHOW_OP_ENABLE
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDX	#S_EG_COPY_OP_OP
			JSR	PUTSTRX
			LDX	#LCD_BOTTOM + 10
			STX	DPTR
			LDAA	M777C
			ANDA	#$03
			INCA
			JSR	PUTDIGIT
			LDAB	#CH_RIGHT
			JSR	PUTCHAR
			LDAA	M7794
			BMI	20F
			LDX	#LCD_BOTTOM + 14
			STX	DPTR
			INCA
			JSR	PUTDIGIT
20			JMP	LCD_UPDATE

C_9E61			LDAB	M7774
			CMPB	#$14
			BCC	22F
			LDAB	#$01
			STAB	M7772
			JMP	4B
22			JSR	F_B07A
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDAB	M7774
			CMPB	#$1F
			BNE	24F
			LDX	#GREETING
23			LDAB	,X
			JSR	PUTCHAR
			INX
			CPX	#GREETING + $10
			BNE	23B
			JMP	LCD_UPDATE

24			TST	>M00A5
			BEQ	25F
			LDX	#S_ARE_YOU_SURE
			JMP	LCD_WRITE
25			JMP	33F

C_9E9E			LDX	#LCD_BUFFER + 1
			STX	DPTR
			LDX	#S_MASTER_VOLUME
			JSR	PUTSTRX
			JSR	F_B3B5
			LDX	#LCD_BOTTOM + 14
			STX	DPTR
			LDAA	M776D
			COMA
			LSRA
			JSR	F_B4D6
			CLRB
			JSR	PUT_DEC_NN
			JMP	LCD_UPDATE

C_9EC0			TST	M7795
			BMI	28F
			JMP	C_9DDD
28			LDAB	#'P'
			JSR	TAG_VOICE_EDITED
			JSR	PUTCHAR
			LDX	#S_LAY_SINGLE
			JSR	PUTSTRX
			LDX	#LCD_BOTTOM
			STX	DPTR
			LDAA	M7773
			JSR	F_AF7D
			LDX	#LCD_BOTTOM + 5
			STX	DPTR
			JSR	F_AFD8
			JMP	LCD_UPDATE
C_9EEC			LDAB	M7774
			CMPB	#$0B
			BCS	30F
			CLR	M7772
			JMP	C_9E61
30			TST	M7794
			BMI	31F
			JMP	C_9E2F

31			JSR	SHOW_OP_ENABLE
			JSR	F_AFED
32			LDX	#LCD_BOTTOM
			STX	DPTR
33			LDAB	M7788
			CMPB	#$01
			BEQ	C_9F75
			CMPB	#$02
			BCS	C_9F1A
			JMP	C_9FAC

C_9F1A			LDAB	M7774

			JSR	JMPOFF1
			FCB	C_A005 - *
			FCB	$0B
			FCB	1F - *
			FCB	$14
			FCB	C_9F43 - *
			FCB	$1F
			FCB	1F - *
			FCB	$28
			FCB	C_9F47 - *
			FCB	$29
			FCB	C_9F54 - *
			FCB	$30
			FCB	C_9F60 - *
			FCB	$31
			FCB	C_9F54 - *
			FCB	$33
			FCB	C_9F4B - *
			FCB	$34
			FCB	C_9F64 - * 
			FCB	$35
			FCB	1F - *
			FCB	$3C
			FCB	C_9F54 - *
			FCB	$3D
			FCB	C_9F6C - *
			FCB	$3E
			FCB	C_9F68 - *
			FCB	$3F
			FCB	1F - *
			FCB	$46
			FCB	C_9F70 - *
			FCB	$47
			FCB	1F - *
			FCB	$00

1			RTS

C_9F43			SUBB	#$09
			BRA	13F

C_9F47			LDAB	#$16
			BRA	13F

C_9F4B			LDAB	#$17
			LDAA	M778C
			CMPA	#$06
			BRA	6F

C_9F54			LDAB	#$17
			LDAA	M778C
			CMPA	#$04
6			BCS	7F
			INCB
7			BRA	13F

C_9F60			LDAB	#$19
			BRA	13F

C_9F64			LDAB	#$1A
			BRA	13F

C_9F68			LDAB	#$0D
			BRA	13F

C_9F6C			LDAB	#$1B
			BRA	13F

C_9F70			LDAB	#$1C

13			JMP	C_A005

C_9F75			LDAB	M7774
			LDAA	M7789
			CMPA	M778D
			BLS	1F
			CLRA
			STAA	M7789

1			JSR	JMPOFF1
			FCB	2F - *
			FCB	$02
			FCB	C_9FF9 - *
			FCB	$03
			FCB	C_9FCB - *
			FCB	$04
			FCB	C_9FCF - *
			FCB	$05
			FCB	2F - *
			FCB	$07
			FCB	C_9FD7 - *
			FCB	$08
			FCB	2F - *
			FCB	$09
			FCB	C_9FDB - *
			FCB	$0A
			FCB	C_9FDF - *
			FCB	$0B
			FCB	2F - *
			FCB	$15
			FCB	C_9FE3 - *
			FCB	$16
			FCB	2F - *
			FCB	$18
			FCB	C_9FE7 - *
			FCB	$19
			FCB	C_9FEB - *
			FCB	$1A
			FCB	C_9FEF - *
			FCB	$1B
			FCB	C_9FF3 - *
			FCB	$1C
			FCB	C_9FF7 - *
			FCB	$1D
			FCB	2F - *
			FCB	$00

2			RTS

C_9FAC			LDAA	M7774
			CMPA	#$15
			BNE	3F
			LDAA	M7789
			CMPA	#$0C
			BNE	2B
			JMP	C_A13A
3			CMPA	#$1B
			BNE	4F
			JMP	C_A098
4			CMPA	#$1C
			BNE	2B
			JMP	C_A017

C_9FCB			ADDA	#$06
			BRA	C_9FF9

C_9FCF			SUBA	#$03
			BPL	C_9FCF
			ADDA	#$0D
			BRA	C_9FF9

C_9FD7			ADDA	#$0D
			BRA	C_9FF9

C_9FDB			ADDA	#$13
			BRA	C_9FF9

C_9FDF			ADDA	#$15
			BRA	C_9FF9

C_9FE3			ADDA	#$25
			BRA	C_9FF9

C_9FE7			ADDA	#$32
			BRA	C_9FF9

C_9FEB			ADDA	#$3D
			BRA	C_9FF9

C_9FEF			ADDA	#$41
			BRA	C_9FF9

C_9FF3			LDAA	#$44
			BRA	C_9FF9

C_9FF7			ADDA	#$45

C_9FF9			TAB
			CMPB	#$49
			BCS	1F
			CLRB
1			ASLB
			LDX	#DVEC_STRINGS_2
			BRA	4F

C_A005			CMPB	#$1D
			BCS	3F
			CLRB
3			ASLB
			LDX	#DVEC_STRINGS
4			ABX
			LDX	,X
			JSR	PUTSTRX
			JMP	C_A174

C_A017			LDAB	M7789
			BEQ	6F
			CMPB	#$02
			BEQ	7F
			JMP	C_A0D5
6			LDAB	M778A
			ADDB	#$3C
			JSR	F_B43F
			LDX	DPTR
			INX
			INX
			INX
			STX	DPTR
			LDAB	#':'
			JSR	PUTCHAR
			LDX	#MICROTUNE_OCT
			BRA	8F
7			LDAB	M778A
			JSR	F_B43F
			LDX	DPTR
			INX
			INX
			INX
			STX	DPTR
			LDAB	#':'
			JSR	PUTCHAR
			LDX	#MICROTUNE_FULL
8			LDAB	M778A
			ASLB
			ABX
			LDAB	$01,X
			CMPB	#$21
			BCS	9F
			LDAB	,X
			INCB
			BRA	10F
9			LDAB	,X
10			PSHX
			JSR	F_B43F
			LDX	DPTR
			INX
			INX
			INX
			INX
			STX	DPTR
			PULX
			LDAA	$01,X
			PSHX
			CMPA	#$21
			BCS	11F
			COMA
			SUBA	#$BF
			LDAB	#'-'
			JSR	PUTCHAR
			BRA	12F
11			LDAB	#'+'
			JSR	PUTCHAR
12			CLRB
			JSR	PUT_DEC_NN
			PULX
			LDD	,X
			SUBA	#$0D
			ASLB
			ASLB
			LSRD
			LSRD
			JSR	PUT_DEC_NNNNN
			BRA	16F

C_A098			CLRB
13			PSHB
			LDAB	#$04
			LDAA	M7789
			MUL
			PULA
			PSHA
			ABA
			TAB
			LDX	#CHORD
			ABX
			LDAB	,X
			CMPB	#$31
			BCC	14F
			ADDB	M7789
			ADDB	#$24
			JSR	F_B43F
			LDX	DPTR
			INX
			INX
			INX
			STX	DPTR
			BRA	15F
14			JSR	PUT_SP_STAR_SP
15			PULB
			CMPB	#$03
			BEQ	16F
			PSHB
			LDAB	#'/'
			JSR	PUTCHAR
			PULB
			INCB
			BRA	13B
16			CLRB
			JMP	C_A174

C_A0D5			LDAA	M778A
			INCA
			CMPA	#$0A
			BCS	1F
			JSR	PUT_DEC_NN
			BRA	2F
1			JSR	PUTDIGIT
2			LDAB	#':'
			JSR	PUTCHAR
			LDAB	M778A
			ASLB
			LDX	#DVEC_SCALE_NAMES
			ABX
			LDX	,X
			JSR	PUTSTRX
			TSTB
			BEQ	7F
			LDAB	M778F
			CMPB	#$0C
			BCS	3F
			CLRB
3			LDAA	M778A
			CMPA	#$02
			BNE	5F
			ADDB	#$09
			CMPB	#$0C
			BCS	4F
			SUBB	#$0C
4			ASLB
			LDX	#S_SHARPS
			BRA	6F
5			ASLB
			LDX	#S_FLATS
6			ABX
			LDD	,X
			STD	LCD_BOTTOM + 14
7			CLRB
			BRA	C_A174

DVEC_SCALE_NAMES	FDB     S_EQUAL
			FDB     S_PURE_MAJOR
			FDB     S_PURE_MINOR
			FDB     S_MEAN_TONE
			FDB     S_PYTHAGOREAN
			FDB     S_WERCKMEISTER
			FDB     S_KIRNBERGER
			FDB     S_VALLOTTI_YOUNG
			FDB     S_1_4_SHIFT_EQUAL
			FDB     S_1_4_TONE
			FDB     S_1_8_TONE

C_A13A			LDX	#S__PGM
			JSR	PUTSTRX
			LDAA	M778A
			INCA
			CLRB
			JSR	PUT_DEC_NNN
			LDX	#S__EQUALS__
			JSR	PUTSTRX
			LDX	M7781
			LDAA	,X
			CMPA	#$A0
			BCC	1F
			JSR	F_AF7D
			BRA	3F
1			CMPA	#$B8
			BCS	2F
			LDAA	#$A0
2			LDAB	#'P'
			JSR	PUTCHAR
			LDAB	#'F'
			JSR	PUTCHAR
			SUBA	#$9F
			LDAB	#$01
			JSR	PUT_DEC_NN
3			CLRB

;-------	fallthrough

C_A174			CMPB	#$20
			BCS	1F
			CLRB
1			LDX	#CVEC_A182
			ASLB
			ABX
			LDX	,X
			JMP	,X

CVEC_A182		FDB     LCD_UPDATE
			FDB     F_A1CD
			FDB     F_A1D6
			FDB     F_A1E0
			FDB     F_A2AC
			FDB     F_A370
			FDB     F_A37E
			FDB     F_A3B0
			FDB     F_A3BF
			FDB     F_A3D2
			FDB     F_A3E4
			FDB     F_A424
			FDB     F_A386
			FDB     SHOW_NOTESW
			FDB     F_A3A5
			FDB     F_A452
			FDB     F_A42E
			FDB     F_A485
			FDB     SHOW_FIXFREQ
			FDB     F_A4DE
			FDB     F_A4DA
			FDB     F_A600
			FDB     F_A66E
			FDB     F_A67D
			FDB     F_A699
			FDB     F_A6AE
			FDB     F_A6CA
			FDB     F_A6D4
			FDB     F_A6E4
			FDB     F_A705
			FDB     F_A74A
			FDB     F_A75A

;-------

F_A1C2			LDAB	#'='
F_A1C4			JSR	PUTCHAR
F_A1C7			LDX	M7781
			LDAA	,X
			RTS

;-------

F_A1CD			BSR	F_A1C2
			CLRB
			JSR	PUT_DEC_NN
			JMP	LCD_UPDATE

;-------

F_A1D6			LDAB	#':'
			BSR	F_A1C4
			JSR	F_B432
			JMP	LCD_UPDATE

;-------

F_A1E0			LDAB	OPERATOR_NUM		; get per-op ACED pointer
			LDAA	#$05			; -
			JSR	GET_OP_PTR_BA		; -
			TST	$57,X			; check fixed mode flag
			BEQ	1F
			JMP	13F
1			PSHX
			LDX	#S_RATIO
			JSR	PUTSTRX
			LDAB	#'='
			JSR	PUTCHAR
			JSR	GET_OPERATOR_PTR
			LDAB	$0B,X			; B <- coarse frequency
			LDX	#D_B4EA
			ABX
			LDAB	,X
			TBA
			ANDB	#$03
			LDX	#D_A2A8
			ABX
			LDAB	,X
			PULX
			ANDA	#$3C
			BNE	2F
			LDAA	#$08
			BRA	3F
2			ASLA
			ASLA
3			ADDA	$59,X
			CMPB	#$8D
			BNE	8F
			TST	$59,X
			BNE	8F
			CMPA	#$30
			BCS	8F
			CMPA	#$50
			BCS	4F
			CMPA	#$90
			BCS	5F
			BEQ	6F
			CMPA	#$B0
			BCS	8F
			CMPA	#$F0
			BCS	7F
			MUL
			ADDD	#$0050
			BRA	9F
4			MUL
			ADDD	#$0010
			BRA	9F
5			MUL
			ADDD	#$0020
			BRA	9F
6			MUL
			ADDD	#$0030
			BRA	9F
7			MUL
			ADDD	#$0040
			BRA	9F
8			MUL
9			LSRD
			LSRD
			LSRD
			LSRD
			XGDX
			CPX	#$0046
			BEQ	10F
			CPX	#$0056
			BNE	11F
10			INX
11			JSR	PUT_DEC_NN_NN
12			JMP	LCD_UPDATE
13			PSHX
			LDX	#S_FIX
			JSR	PUTSTRX
			LDAB	#'='
			JSR	PUTCHAR
			JSR	GET_OPERATOR_PTR
			LDAB	$0B,X			; B <- coarse frequency
			ANDB	#%00111100
			BNE	14F
			LDAB	#$08
			BRA	15F
14			ASLB
			ASLB
15			PULX
			ADDB	$59,X
			PSHB
			CLRA
			LDAB	$58,X
			XGDX
			PULB
			CLRA
			CPX	#0
			BEQ	17F
16			ASLD
			DEX
			BNE	16B
17			JSR	PUT_DEC_NNNNN
			LDD	#('H' << 8) + 'z'
			STD	LCD_BOTTOM + 14
			BRA	12B

D_A2A8			FCB	$64,$8D,$9D,$AD

;-------

F_A2AC			LDAB	M7774
			CMPB	#$05
			BNE	1F
			LDX	#LCD_BUFFER + 4
			BRA	2F
1			LDX	#LCD_BOTTOM + 4
2			STX	DPTR
			JSR	SET_CGCHAR_WAVES
			CLRB
3			PSHB
			LDX	#D_OPERATOR_MAP
			ABX
			LDAB	,X
			LDAA	M7787
			CMPA	#$57
			BCC	4F
			LDAA	#$0D
			BRA	5F
4			LDAA	#$05
5			MUL
			ADDB	M7787
			LDX	M7784
			ABX
			LDAA	,X
			LDAB	M7787
			CMPB	#$5B
			BNE	8F
			TSTA
			BNE	6F
			LDX	#S__OF
			JSR	PUTSTRX
			BRA	11F
6			COMA
			SUBA	#$FB
			LDAB	#$06
7			ASLB
			DECA
			BNE	7B
			TBA
			BRA	10F
8			CMPB	#$0C
			BNE	9F
			BSR	F_A351
			BRA	11F
9			CMPB	#$5A
			BNE	10F
			PSHA
			TAB
			ASLB
			LDX	#D_A341
			ABX
			LDD	,X
			LDX	DPTR
			INX
			STX	DPTR
			JSR	PUTCHAR
			TAB
			JSR	PUTCHAR
			PULA
			LDX	DPTR
			PSHX
			LDAB	#$0E
			ABX
			STX	DPTR
			LDAB	#'W'
			JSR	PUTCHAR
			INCA
			JSR	PUTDIGIT
			PULX
			STX	DPTR
			BRA	11F
10			JSR	PUT_DEC_NNN
11			PULB
			INCB
			CMPB	#$04
			BNE	3B
			JMP	LCD_UPDATE

D_A341			FCB	$01,$00,$03,$02,'-',$00,'-',$02
			FCB	'-',$04,'-',$05,'-',$06,'-',$07

;-------

F_A351			LDAB	#' '
			JSR	PUTCHAR
			SUBA	#$03
			BHI	1F
			BMI	2F
			CLRB
			JSR	PUT_DEC_NN
			BRA	4F
1			LDAB	#'+'
			BRA	3F
2			NEGA
			LDAB	#'-'
3			JSR	PUTCHAR
			JSR	PUTDIGIT
4			RTS

;-------

F_A370			JSR	F_A1C2
			LDAB	VCED_TRANSPOSE
			ADDB	#$24
			JSR	F_B43F
1			JMP	LCD_UPDATE

;-------

F_A37E			JSR	F_A1C2
			JSR	F_B463
			BRA	1B

;-------

F_A386			JSR	F_A1C2
			SUBA	#$18
			JSR	F_B465
			BRA	1B

;-------

SHOW_NOTESW		LDAB	#':'
			JSR	F_A1C4
			TAB
			ASLB
			LDX	#T_NOTESW_NAMES
			ABX
			LDX	,X
			BRA	1000F

T_NOTESW_NAMES		FDB	S_NOTE_ALL
			FDB	S_NOTE_ODD
			FDB	S_NOTE_EVEN

;-------

F_A3A5			LDX	#LCD_BOTTOM + 6
			STX	DPTR
			JSR	F_AFD8
			JMP	LCD_UPDATE

;-------

F_A3B0			JSR	F_A1C7
			LDX	#S_MONO_MODE
			TSTA
			BNE	1000F
			LDX	#S_POLY_MODE
1000			JMP	LCD_WRITE

;-------

F_A3BF			TST	VCED_POLYMODE
			BEQ	1F
			JSR	F_A1C7
			LDX	#S_FINGERED_PORTA
			TSTA
			BNE	1000B
1			LDX	#S_FULL_TIME_PORTA
			BRA	1000B

;-------

F_A3D2			JSR	F_A1C2
			CMPA	#$04
			BCS	1F
			CLRA
1			LDX	#DVEC_LFO_MODE
			TAB
			ASLB
			ABX
			LDX	,X
			BRA	1000B

;-------

F_A3E4			LDAB	#'='
			JSR	PUTCHAR
			LDX	#LCD_BOTTOM + 4
			STX	DPTR
			CLRB
1			PSHB
			LDX	#D_OPERATOR_MAP
			ABX
			LDAB	,X
			LDAA	#$0D
			MUL
			ADDB	#$08
			LDX	M7784
			ABX
			TST	,X
			BNE	2F
			LDX	#S__OF
			BRA	3F
2			LDX	#S__ON
3			JSR	PUTSTRX
			PULB
			INCB
			CMPB	#$04
			BNE	1B
			LDX	M7784
			LDAA	$3D,X
			LDX	#LCD_BOTTOM + 4
			STX	DPTR
			JSR	PUTDIGIT
1000			JMP	LCD_UPDATE

;--------

F_A424			JSR	F_A1C2

1001			INCA
			CLRB
			JSR	PUT_DEC_NN
			BRA	1000B

;-------

F_A42E			LDAB	#'='
			JSR	PUTCHAR
			JSR	GET_VOICE_PTR
			LDAB	M7774
			CMPB	#$03
			BNE	1F
			LDAA	$3C,X
			CLRB
			JSR	PUT_DEC_NN
			BRA	1000B
1			LDAA	$34,X
			PSHA
			INCA
			JSR	PUTDIGIT
			PULA
			JSR	F_B22C
			BRA	1000B

;-------

F_A452			LDAB	M7774
			CMPB	#$15
			BNE	3F
			LDX	#LCD_BOTTOM + 13
			STX	DPTR
			LDAB	M777E
			BNE	1F
			LDAB	#$49
			BRA	2F
1			DECB
			ADDB	#'A'
2			JSR	PUTCHAR
			JMP	LCD_UPDATE
3			LDX	#LCD_BOTTOM + 12
			STX	DPTR
			TST	M777E
			BNE	4F
			LDX	#S_TX
			BRA	1002F
4			LDX	#S_DX
1002			JMP	LCD_WRITE

;-------

F_A485			JSR	F_A1C2
			CMPA	#$10
			BEQ	1F
			JMP	1001B
1			LDX	#S_OMN
			BRA	1002B

;-------

SHOW_FIXFREQ		LDAB	#'='
			JSR	PUTCHAR
			LDAB	OPERATOR_NUM		; get per-op ACED pointer
			LDAA	#5			; -
			JSR	GET_OP_PTR_BA		; -
			LDAA	$58,X			; A <- fixed freq range
			CMPA	#$01
			BHI	3F
			BEQ	1F
			LDAA	#255
			JSR	PUT_DEC_NNN
			BRA	2F
1			LDD	#('5' << 8) + '1'
			STD	LCD_BOTTOM + 11
			LDAB	#'0'			; '0'
			STAB	LCD_BOTTOM + 13
2			LDD	#('H' << 8) + 'z'
			STD	LCD_BOTTOM + 14
			JMP	LCD_UPDATE
3			SUBA	#$01
			LDAB	#$01
4			DECA
			BEQ	5F
			ASLB
			BRA	4B
5			TBA
			CLRB
			JSR	PUT_DEC_NN
			LDAB	#'K'
			JSR	PUTCHAR
			BRA	2B

;-------

F_A4DA			LDAB	#$30
			BRA	1F

;-------	fallthrough

F_A4DE			CLRB
1			LDAA	M7787
			CMPA	#$60
			BEQ	2F
			CMPA	#$63
			BNE	3F
2			LDAA	#$0B
3			LDX	#LCD_BOTTOM
			TSTB
			BEQ	4F
			INX
4			STX	DPTR
			LDX	#PFM_EDIT_BUF
			ABX
			TAB
			LDAA	#$04
5			PSHA
			PSHB
			PSHX
			TSTB
			BEQ	6F
			TST	,X
			BNE	6F
			JMP	31F
6			ABX
			LDAA	,X
			LDAB	M7774

			JSR	JMPOFF1
			FCB	7F - *
			FCB	$29
			FCB	C_A532 - *
			FCB	$2A
			FCB	C_A538 - *
			FCB	$2B
			FCB	C_A53E - *
			FCB	$2C
			FCB	C_A555 - *
			FCB	$2E
			FCB	C_A562 - *
			FCB	$2F
			FCB	C_A54E - *
			FCB	$30
			FCB	7F - *
			FCB	$31
			FCB	C_A569 - *
			FCB	$32
			FCB	C_A599 - *
			FCB	$33
			FCB	C_A5C3 - *
			FCB	$34
			FCB	7F - *
			FCB	$3C
			FCB	C_A538 - *
			FCB	$3D
			FCB	7F - *
			FCB	$00

7			PULX
			PULB
			PULA
			RTS

C_A532			JSR	PUT_DEC_NNN
			JMP	29F
C_A538			JSR	F_AF91
			JMP	29F
C_A53E			CMPA	#$10
			BNE	11F
			LDX	#S_OMN
			JSR	PUTSTRX
			JMP	29F
11			INCA
			BRA	C_A532

C_A54E			SUBA	#$18
			JSR	F_B465
			BRA	29F
C_A555			TAB
			JSR	F_B43F
			LDD	DPTR
			ADDD	#$03
			STD	DPTR
			BRA	29F
C_A562			SUBA	#$07
			JSR	F_B465
			BRA	29F
C_A569			PSHA
			JSR	SET_CG0_ROMAN_II
			PULB
			TSTB
			BEQ	21F
			CMPB	#$01
			BNE	16F
			LDAB	#$02
			JSR	PUT_SPACES
			LDAB	#'I'
			BRA	19F
16			CMPB	#$02
			BNE	17F
			LDAB	#$02
			JSR	PUT_SPACES
			BRA	18F
17			LDAB	#$01
			JSR	PUT_SPACES
			LDAB	#'I'
			JSR	PUTCHAR
18			CLRB
19			JSR	PUTCHAR
			BRA	29F
C_A599			TSTA
			BNE	22F
21			LDX	#S_OFF
			BRA	26F
22			CMPA	#$03
			BCC	25F
			CMPA	#$01
			BNE	23F
			LDAA	M784E
			BMI	32F
			BRA	24F
23			LDAA	M784F
			BMI	32F
24			INCA
			JSR	PUT_DEC_NNN
			BRA	29F
25			LDX	#S_VIB
26			JSR	PUTSTRX
			BRA	29F

C_A5C3			TSTA
			BEQ	28F
			LDX	DPTR
			INX
			STX	DPTR
28			JSR	F_B432
29			LDX	DPTR
			INX
			STX	DPTR
			PULX
			LDAB	#$0C
			ABX
			PULB
			PULA
			DECA
			BEQ	30F
			JMP	5B
30			JMP	LCD_UPDATE
31			BSR	PUT_SP_STAR_SP
			BRA	29B
32			LDX	#S_DASHDASHDASH
			JMP	26B

S_DASHDASHDASH		FCC	"---"
			FCB	$00

;-------

PUT_SP_STAR_SP		LDAB	#1
			JSR	PUT_SPACES
			LDAB	#'*'
			JSR	PUTCHAR
			LDAB	#1
			JSR	PUT_SPACES
			RTS

;-------

F_A600			TST	>M00A3
			BNE	1F
			JSR	F_B408
1			LDAB	M778C
			CMPB	#$04
			BCC	2F
			LDAB	#$7E
			STAB	LCD_BOTTOM + 15
			LDX	#PFM_EDIT_BUF
			BRA	3F
2			LDAB	#$7F
			JSR	PUTCHAR
			LDX	#PFM_EDIT_INST_4
3			LDAB	#$04
4			PSHB
			PSHX
			TST	,X
			BNE	5F
			BSR	PUT_SP_STAR_SP
			BRA	10F
5			LDAA	$08,X
			CLRB
			JSR	PUT_DEC_NN
			PULX
			LDAA	$08,X
			PSHX
			JSR	F_B4DE
			CMPA	#$08
			BCC	7F
			TSTA
			BNE	6F
			LDX	DPTR
			INX
			STX	DPTR
			BRA	10F
6			DECA
			TAB
			BRA	9F
7			CMPA	#$0F
			BCS	8F
			LDAA	#$0E
8			SUBA	#$08
			TAB
			LDX	DPTR
			XGDX
			SUBD	#$10
			XGDX
			STAB	,X
			LDAB	#$06
9			JSR	PUTCHAR
10			PULX
			LDAB	#$0C
			ABX
			PULB
			DECB
			BNE	4B
			JMP	LCD_UPDATE

;-------

F_A66E			JSR	F_A1C2
			LDX	#S_NORM
			TSTA
			BEQ	1F
			LDX	#S_ALTR
1			JMP	LCD_WRITE

;-------

F_A67D			JSR	F_A1C2
			TAB
			CMPB	#$04
			BCS	1F
			LDAB	#$03
1			ASLB
			LDX	#DVEC_FX_TYPE
			ABX
			LDX	,X
			JMP	LCD_WRITE

DVEC_FX_TYPE		FDB	S_OFF
			FDB	S_FX_DELAY
			FDB	S_FX_PAN
			FDB	S_FX_CHORD

;-------

F_A699			JSR	F_A1C2
			TSTA
			BNE	1F
			LDX	#S_OFF
			JSR	PUTSTRX
			BRA	1000F
1			CLRB
			JSR	PUT_DEC_NN
1000			JMP	LCD_UPDATE

;-------

F_A6AE			JSR	F_A1C2
			TAB
			ASLB
			LDX	#DVEC_A6BC
			ABX
			LDX	,X
			JMP	LCD_WRITE

DVEC_A6BC		FDB	S_OFF
			FDB	S_COM
			FDB	S_IND

S_COM			FCC	"com"
			FCB	$00

S_IND			FCC	"ind"
			FCB	$00

;-------

F_A6CA			JSR	F_A1C2
			SUBA	#$32
			JSR	F_B465
			BRA	1000B

;-------

F_A6D4			JSR	F_A1C2
			TAB
			INCB
			CLRA
			JSR	PUT_DEC_N_NN
			LDAB	#'s'
			JSR	PUTCHAR
			BRA	1000B

;-------

F_A6E4			JSR	F_A1C2
			CMPA	#$02
			BCC	3F
			TSTA
			BNE	1F
			LDX	#S_OFF
			BRA	2F
1			LDX	#S_NORM
2			JMP	LCD_WRITE
3			DECA
			LDAB	#'G'
			JSR	PUTCHAR
			CLRB
			JSR	PUT_DEC_NN
			BRA	1000B

;-------

F_A705			TST	M7789
			BNE	1F
			JSR	F_A1C2
			TAB
			ASLB
			LDX	#DVEC_PAN_SOURCE
			ABX
			LDX	,X
			JMP	LCD_WRITE
1			JSR	SET_CG0_ROMAN_II
			LDAB	#':'
			JSR	F_A1C4
			TSTA
			BNE	2F
			LDAB	#'I'
			JSR	PUTCHAR
			LDAB	#CH_RIGHT
			JSR	PUTCHAR
			CLRB
			JSR	PUTCHAR
			BRA	3F
2			CLRB
			JSR	PUTCHAR
			LDAB	#$7E
			JSR	PUTCHAR
			LDAB	#'I'
			JSR	PUTCHAR
3			JMP	LCD_UPDATE

DVEC_PAN_SOURCE		FDB	S_PAN_LFO
			FDB	S_PAN_VELOCITY
			FDB	S_PAN_NOTE

;--------

F_A74A			LDX	#LCD_BOTTOM + 13
			STX	DPTR
			LDAB	M7789
			ADDB	#$3C
			JSR	F_B43F
			JMP	LCD_UPDATE

;--------

F_A75A			LDX	#LCD_BOTTOM + 12
			STX	DPTR
			LDX	#DVEC_A76C
			LDAB	M777E
			ASLB
			ABX
			LDX	,X
			JMP	LCD_WRITE

DVEC_A76C		FDB	S_AL_3
			FDB	S_SY_3
			FDB	S_PC_3
			FDB	S_EF_3
			FDB	S_MC_3

;-------

DVEC_LFO_MODE		FDB	S_SAW_UP
			FDB	S_SQUARE
			FDB	S_TRIANGL
			FDB	S_S_HOLD

DVEC_STRINGS		FDB	S_ALG
			FDB	S_FEEDBACK_OP4
			FDB	S_EDIT_LFO
			FDB	S_SENSITIVITY
			FDB	S_EDIT_FREQUENCY
			FDB	S_OSW
			FDB	S_DET
			FDB	S_EDIT_EG
			FDB	S_OUT
			FDB	S_SCALING
			FDB	S___FUNCTION
			FDB	S_MASTER_TUNE
			FDB	S_MIDI_CONTROL_
			FDB	S_MEM_PROTECT
			FDB	S_COMBINE
			FDB	S_CASS_CONTROL_
			FDB	S_EDIT_EFFECT_1_
			FDB	S_EDIT_EFFECT_2_
			FDB	S_EDIT_EFFECT_3_
			FDB	S_MICRO_TUNE_
			FDB	S_INIT_VOICE_1
			FDB	S_RECALL_EDIT_1
			FDB	S_ASSIGN_MODE
			FDB	S_SLASH_SLASH_RIGHT
			FDB	S_LEFT_SLASH_SLASH
			FDB	S_VOL
			FDB	S_EFFECT_SEL
			FDB	S_INIT_PERFRM_
			FDB	S_TEST_ENTRY

DVEC_STRINGS_2		FDB	S_WAVE
			FDB	S_SPEED
			FDB	S_DELAY
			FDB	S_P_MOD_DEPTH
			FDB	S_A_MOD_DEPTH
			FDB	S_SYNC
			FDB	S_P_MOD_SENS
			FDB	S_AMS
			FDB	S_EBS
			FDB	S_KVS
			FDB	S_FIX_RANGE
			FDB	S_CRS
			FDB	S_FIN
			FDB	S_AR
			FDB	S_D1R
			FDB	S_D1L
			FDB	S_D2R
			FDB	S_RR
			FDB	S_SHFT
			FDB	S_RS
			FDB	S_LS
			FDB	S_CH7
			FDB	S_P_BEND_RANGE
			FDB	S_CH8
			FDB	S_PORTA_TIME
			FDB	S_FC_VOLUME
			FDB	S_FC_PITCH
			FDB	S_FC_AMPLITUDE
			FDB	S_MW_PITCH
			FDB	S_MW_AMPLITUDE
			FDB	S_BC_PITCH
			FDB	S_BC_AMPLITUDE
			FDB	S_BC_P_BIAS
			FDB	S_BC_EG_BIAS
			FDB	S_MIDDLE_C
			FDB	S_REVERB_RATE
			FDB	S_NAME
			FDB	S_BASIC_RECV_CH
			FDB	S_TRANSMIT_CH
			FDB	S_P_CHANGE
			FDB	S_CONT_CHANGE
			FDB	S_ATOUCH_BC
			FDB	S_PITCHBEND
			FDB	S_NOTE_ON_OFF
			FDB	S_EXCLUSIVE
			FDB	S_VOICE_TRANS
			FDB	S_PERFRM_TRANSMIT
			FDB	S_SETUP_TRANS
			FDB	S_INIT_P_CNG_TABLE
			FDB	S_EDIT_P_CNG_TABLE
			FDB	S_SAVE_32_VOICE
			FDB	S_VERIFY_2
			FDB	S_LOAD_32_VOICE
			FDB	S_LOAD_1_VOICE
			FDB	S_SAVE_24_PERFRM
			FDB	S_VERIFY_24_PERFRM
			FDB	S_LOAD_24_PERFRM
			FDB	S_LOAD_1_PERFRM
			FDB	S_SAVE_SETUP
			FDB	S_VERIFY_SETUP
			FDB	S_LOAD_SETUP
			FDB	S_DELAY_TIME
			FDB	S_PITCH_SHIFT
			FDB	S_FEEDBACK
			FDB	S_LEVEL
			FDB	S_SELECT
			FDB	S_DIRECTION
			FDB	S_PAN_RANGE
			FDB	S_KEY_ON_NOTE
			FDB	S_OCTAVE
			FDB	S_INIT_OCTAVE
			FDB	S_EDIT_FULL_KBD
			FDB	S_INIT_FULL_KBD

S_MEM_STR		FCC	"Mem Str	?"
			FCB	$00
S_EG_COPY_OP_OP		FCC	"EG Copy OP  OP ?"
			FCB	$00
S_ARE_YOU_SURE		FCC	" Are you sure?"
			FCB	$00
S_ALG			FCC	"ALG"
			FCB	$10
S_FEEDBACK_OP4		FCC	"Feedback(OP4)"
			FCB	$01
S_EDIT_LFO		FCC	" "
			FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCC	"LFO?"
			FCB	$00
S_WAVE			FCC	" Wave "
			FCB	$09
S_SPEED			FCC	" Speed"
			FCB	$01
S_DELAY			FCC	" Delay"
			FCB	$01
S_P_MOD_DEPTH		FCC	"P Mod Depth"
			FCB	$01
S_A_MOD_DEPTH		FCC	"A Mod Depth"
			FCB	$01
S_SYNC			FCC	" Sync"
			FCB	$02
S_SENSITIVITY		FCC	" Sensitivity?"
			FCB	$00
S_P_MOD_SENS		FCC	"P Mod Sens. "
			FCB	$10
S_AMS			FCC	"AMS"
			FCB	$0A
S_EBS			FCC	"EBS"
			FCB	$04
S_KVS			FCC	"KVS"
			FCB	$04
S_EDIT_FREQUENCY	FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCC	"Frequency?"
			FCB	$00
S_FIX_RANGE		FCC	"Fix Range "
			FCB	$12
S_CRS			FCC	"CRS("
			FCB	$03
S_FIN			FCC	"FIN("
			FCB	$03
S_OSW			FCC	"OSW"
			FCB	$04
S_DET			FCC	"DET"
			FCB	$04
S_EDIT_EG		FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCC	"EG?"
			FCB	$00
S_AR			FCC	"AR "
			FCB	$04
S_D1R			FCC	"D1R"
			FCB	$04
S_D1L			FCC	"D1L"
			FCB	$04
S_D2R			FCC	"D2R"
			FCB	$04
S_RR			FCC	"RR "
			FCB	$04
S_SHFT			FCC	"SHFT"
			FCB	$04
S_OUT			FCC	"OUT"
			FCB	$04
S_SCALING		FCC	" Scaling?"
			FCB	$00
S_RS			FCC	"RS "
			FCB	$04
S_LS			FCC	"LS "
			FCB	$04
S_MIDDLE_C		FCC	"Middle C    "
			FCB	$05
S_MASTER_TUNE		FCC	"Master Tune "
			FCB	$06
S_MIDI_CONTROL_		FCC	"Midi Control?"
			FCB	$00
S_CONT_CHANGE		FCC	"Cont.Change"
			FCB	$1C
S_ATOUCH_BC		FCC	"A.Touch ~ BC"
			FCB	$02
S_BASIC_RECV_CH		FCC	"Basic Rcv.Ch"
			FCB	$11
S_TRANSMIT_CH		FCB	SO_TRANSMIT - PUTSTR_OFFSET
			FCC	" Ch"
			FCB	$0B
S_P_CHANGE		FCC	" P.Change "
			FCB	$19
S_PITCHBEND		FCC	" Pitch Bend"
			FCB	$1C
S_NOTE_ON_OFF		FCC	"Note on/off"
			FCB	$0D
S_EXCLUSIVE		FCC	" Exclusive"
			FCB	$02
S_VOICE_TRANS		FCC	"Voice Trans?( )"
			FCB	$0F
S_PERFRM_TRANSMIT	FCC	"Perfrm "
			FCB	SO_TRANSMIT - PUTSTR_OFFSET
			FCC	"?"
			FCB	$00
S_SETUP_TRANS		FCC	"Setup Trans?"
			FCB	$1F
S_INIT_P_CNG_TABLE	FCC	"Init "
			FCB	SO_P_CNG_TBL_ - PUTSTR_OFFSET
			FCB	$00
S_EDIT_P_CNG_TABLE	FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCB	SO_P_CNG_TBL_ - PUTSTR_OFFSET
			FCB	$00
S_CASS_CONTROL_		FCC	"Cass. Control ?"
			FCB	$00
S_RECALL_EDIT_1		FCC	"Recall Edit?"
			FCB	$00
S_INIT_VOICE_1		FCC	"Init Voice?"
			FCB	$00
S_SAVE_32_VOICE		FCC	"Save32Voice?"
			FCB	$0F
S_VERIFY_2		FCC	"Verify "
			FCB	SO_32_VOICE_ - PUTSTR_OFFSET
			FCB	$00
S_LOAD_32_VOICE		FCC	"Load "
			FCB	SO_32_VOICE_ - PUTSTR_OFFSET
			FCB	$00
S_LOAD_1_VOICE		FCC	"Load 1 Voice?"
			FCB	$00
S_SAVE_24_PERFRM	FCC	"Save 24 "
			FCB	SO_PERFRM_ - PUTSTR_OFFSET
			FCB	$00
S_VERIFY_24_PERFRM	FCC	"Verify 24"
			FCB	SO_PERFRM_ - PUTSTR_OFFSET
			FCB	$00
S_LOAD_24_PERFRM	FCC	"Load 24 "
			FCB	SO_PERFRM_ - PUTSTR_OFFSET
			FCB	$00
S_LOAD_1_PERFRM		FCC	"Load 1 "
			FCB	SO_PERFRM_ - PUTSTR_OFFSET
			FCB	$00
S_SAVE_SETUP		FCC	"Save Setup? "
			FCB	$1F
S_VERIFY_SETUP		FCC	"VerifySetup?"
			FCB	$1F
S_LOAD_SETUP		FCC	"Load Setup? "
			FCB	$1F
S_MEM_PROTECT		FCC	"Mem Protect"
			FCB	$02
S_COMBINE		FCC	" Combine  "
			FCB	$02
S_EDIT_EFFECT_1_	FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCB	SO_EFFECT_ - PUTSTR_OFFSET
			FCC	" 1 ?"
			FCB	$00
S_DELAY_TIME		FCC	"Delay Time"
			FCB	$1B
S_PITCH_SHIFT		FCC	"Pitch Shift"
			FCB	$0C
S_LEVEL			FCB	SO_EFFECT_ - PUTSTR_OFFSET
			FCC	"Level "
			FCB	$01
S_FEEDBACK		FCC	" Feedback"
			FCB	$01
S_EDIT_EFFECT_2_	FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCB	SO_EFFECT_ - PUTSTR_OFFSET
			FCC	" 2 ?"
			FCB	$00
S_DIRECTION		FCC	"Direction "
			FCB	$1D
S_SELECT		FCC	"Select "
			FCB	$1D
S_PAN_RANGE		FCC	" Pan Range "
			FCB	$01
S_EDIT_EFFECT_3_	FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCB	SO_EFFECT_ - PUTSTR_OFFSET
			FCC	" 3 ?"
			FCB	$00
S_KEY_ON_NOTE		FCC	"Key on note?"
			FCB	$1E
S_MICRO_TUNE_		FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCC	"Micro Tune?"
			FCB	$00
S_OCTAVE		FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCC	"Octave ?"
			FCB	$00
S_INIT_OCTAVE		FCC	"Init Octave ?"
			FCB	$00
S_EDIT_FULL_KBD		FCB	SO_EDIT_ - PUTSTR_OFFSET
			FCB	SO_FULL_KBD_ - PUTSTR_OFFSET
			FCB	$00
S_INIT_FULL_KBD		FCC	"Init "
			FCB	SO_FULL_KBD_ - PUTSTR_OFFSET
			FCB	$00
S___FUNCTION		FCC	"  Function?"
			FCB	$00
S_CH7			FCB	$07
S_POLY_MODE		FCC	"  Poly"
			FCB	SO__MODE - PUTSTR_OFFSET
			FCB	$00
S_MONO_MODE		FCC	"  Mono"
			FCB	SO__MODE - PUTSTR_OFFSET
			FCB	$00
S_P_BEND_RANGE		FCC	"P Bend Range"
			FCB	$01
S_CH8			FCB	$08
S_FULL_TIME_PORTA	FCC	"Full Time "
			FCB	SO_PORTA - PUTSTR_OFFSET
			FCB	$00
S_FINGERED_PORTA	FCC	"Fingered "
			FCB	SO_PORTA - PUTSTR_OFFSET
			FCB	$00
S_PORTA_TIME		FCB	SO_PORTA - PUTSTR_OFFSET
			FCC	" Time	"
			FCB	$01
S_FC_VOLUME		FCC	"FC Volume   "
			FCB	$01
S_FC_PITCH		FCC	"FC "
			FCB	SO_PITCH____ - PUTSTR_OFFSET
			FCB	$01
S_FC_AMPLITUDE		FCC	"FC "
			FCB	SO_AMPLITUDE - PUTSTR_OFFSET
			FCB	$01
S_MW_PITCH		FCC	"MW "
			FCB	SO_PITCH____ - PUTSTR_OFFSET
			FCB	$01
S_MW_AMPLITUDE		FCC	"MW "
			FCB	SO_AMPLITUDE - PUTSTR_OFFSET
			FCB	$01
S_BC_PITCH		FCB	SO_BC_ - PUTSTR_OFFSET
			FCB	SO_PITCH____ - PUTSTR_OFFSET
			FCB	$01
S_BC_AMPLITUDE		FCB	SO_BC_ - PUTSTR_OFFSET
			FCB	SO_AMPLITUDE - PUTSTR_OFFSET
			FCB	$01
S_BC_P_BIAS		FCB	SO_BC_ - PUTSTR_OFFSET
			FCC	"P. Bias  "
			FCB	$1A
S_BC_EG_BIAS		FCB	SO_BC_ - PUTSTR_OFFSET
			FCC	"EG Bias  "
			FCB	$01
S_REVERB_RATE		FCC	"Reverb Rate "
			FCB	$18
S_ASSIGN_MODE		FCC	"Assign"
			FCB	SO__MODE - PUTSTR_OFFSET
			FCB	$16
S_VOL			FCC	"VOL"
			FCB	$15
S_EFFECT_SEL		FCB	SO_EFFECT_ - PUTSTR_OFFSET
			FCC	"Sel"
			FCB	$17
S_INIT_PERFRM_		FCC	"Init "
			FCB	SO_PERFRM_ - PUTSTR_OFFSET
			FCB	$00
S_TEST_ENTRY		FCC	"Test entry?"
			FCB	$00

S_SAW_UP		FCC	"saw up"
			FCB	$00
S_SQUARE		FCC	"square"
			FCB	$00
S_TRIANGL		FCC	"triangl"
			FCB	$00
S_S_HOLD		FCC	"S/Hold"
			FCB	$00

S_NOTE_ALL		FCC	"all "
			FCB	$00
S_NOTE_ODD		FCC	"odd "
			FCB	$00
S_NOTE_EVEN		FCC	"even"
			FCB	$00

S_FX_DELAY		FCC	"delay"
			FCB	$00
S_FX_PAN		FCC	"pan"
			FCB	$00
S_FX_CHORD		FCC	"chord"
			FCB	$00

S_PAN_LFO		FCC	"LFO"
			FCB	$00
S_PAN_VELOCITY		FCC	"velocity"
			FCB	$00
S_PAN_NOTE		FCC	"note"
			FCB	$00

S_AL_3			FCC	"(AL)"
			FCB	$00
S_SY_3			FCC	"(SY)"
			FCB	$00
S_PC_3			FCC	"(PC)"
			FCB	$00
S_EF_3			FCC	"(EF)"
			FCB	$00
S_MC_3			FCC	"(MC)"
			FCB	$00

SO_32_VOICE_		FCC	"32 Voice?"
			FCB	$00
SO__MODE		FCC	" Mode"
			FCB	$00
SO_PORTA		FCC	"Porta"
			FCB	$00
SO_BC_			FCC	"BC "
			FCB	$00
SO_AMPLITUDE		FCC	"Amplitude"
			FCB	$00
SO_PITCH____		FCC	"Pitch	  "
			FCB	$00
SO_EDIT_		FCC	"Edit "
			FCB	$00
SO_PERFRM_		FCC	"Perfrm?"
			FCB	$00
SO_TRANSMIT		FCC	"Transmit"
			FCB	$00
SO_P_CNG_TBL_		FCC	"P.Cng Tbl?"
			FCB	$00
SO_EFFECT_		FCC	"Effect "
			FCB	$00
SO_FULL_KBD_		FCC	"Full Kbd ?"
			FCB	$00
SO_EDIT			FCC	"EDIT"
			FCB	$00
SO_VOICE		FCC	"VOICE"
			FCB	$00
SO_EFFECT		FCC	"EFFECT"
			FCB	$00
SO_ERFORMANCE		FCC	"ERFORMANCE"
			FCB	$00

S_ON			FCC	"on"
			FCB	$00
S_OFF			FCC	"off"
			FCB	$00
S__OF			FCC	" of"
			FCB	$00
S__ON			FCC	" on"
			FCB	$00
S__POR			FCC	" Por"
			FCB	$00
S__SUS			FCC	" Sus"
			FCB	$00
S_NORM			FCC	"norm"
			FCB	$00
S_ALTR			FCC	"altr"
			FCB	$00
S_OMN			FCC	"omn"
			FCB	$00
S_VIB			FCC	"vib"
			FCB	$00
S_RATIO			FCC	"RATIO)"
			FCB	$00
S_FIX			FCC	"FIX)"
			FCB	$00
S_NAME			FCC	"Name :"
			FCB	$0E
S_SLASH_SLASH_RIGHT	FCC	"   /	/   /	"
			FCB	CH_RIGHT
			FCB	$13
S_LEFT_SLASH_SLASH	FCB	CH_LEFT
			FCC	"   /	/   /	"
			FCB	$14
S_P_UT			FCC	"P.UT"
			FCB	$00
S__ED			FCC	".ED"
			FCB	$00
S_LAY_SINGLE		FCC	"LAY SINGLE"
			FCB	$00
S_ERFORMANCE_MODE	FCB	SO_ERFORMANCE - PUTSTR_OFFSET
			FCC	" MODE"
			FCB	$00
S_PFM_STORE		FCC	"PFM Store	?"
			FCB	$00
S_UTILITY_MODE		FCC	"UTILITY MODE"
			FCB	$00
S_UTILITY		FCC	"UTILITY"
			FCB	$00
S_MASTER_VOLUME		FCC	"Master Volume"
			FCB	$00
S_1_2_3_4		FCC	"1  2  3  4"
			FCB	$00
S_LFO_EDIT		FCC	"LFO "
			FCB	SO_EDIT - PUTSTR_OFFSET
			FCB	$00
S_SENS_EDIT		FCC	"SENS "
			FCB	SO_EDIT - PUTSTR_OFFSET
			FCB	$00
S_FREQ			FCC	"FREQ."
			FCB	$00
S_FUNCTION		FCC	"FUNCTION"
			FCB	$00
S_UT			FCC	"UT"
			FCB	$00
S_RECALL_EDIT		FCC	"RECALL "
			FCB	SO_EDIT - PUTSTR_OFFSET
			FCB	$00
S_INIT_VOICE		FCC	"INIT "
			FCB	SO_VOICE - PUTSTR_OFFSET
			FCB	$00
S_MIDI_CONTROL		FCC	"MIDI CONTROL"
			FCB	$00
S_CASS_CONTROL		FCC	"CASS CONTROL"
			FCB	$00
S_EDIT_EFFECT_1		FCB	SO_EDIT - PUTSTR_OFFSET
			FCC	" "
			FCB	SO_EFFECT - PUTSTR_OFFSET
			FCC	"1"
			FCB	$00
S_EDIT_EFFECT_2		FCB	SO_EDIT - PUTSTR_OFFSET
			FCC	" "
			FCB	SO_EFFECT - PUTSTR_OFFSET
			FCC	"2"
			FCB	$00
S_EDIT_EFFECT_3		FCB	SO_EDIT - PUTSTR_OFFSET
			FCC	" "
			FCB	SO_EFFECT - PUTSTR_OFFSET
			FCC	"3"
			FCB	$00
S_CHORD			FCC	"Chord"
			FCB	$02
S_MICRO_TUNE		FCC	"MICRO TUNE"
			FCB	$00
S_MICRO___OCT		FCC	"MICRO	 OCT."
			FCB	$00
S_MICRO___FULL		FCC	"MICRO	 FULL"
			FCB	$00
S_INIT_			FCC	"Init?"
			FCB	$03
S_KEY			FCC	"Key"
			FCB	$00
S__PGM			FCC	" PGM"
			FCB	$00
S__EQUALS__		FCC	" = "
			FCB	$00
S_INIT_P_CNG		FCC	"INIT P.CNG"
			FCB	$00
S_ERFORMANCE_EDIT	FCB	SO_ERFORMANCE - PUTSTR_OFFSET
			FCC	" "
			FCB	SO_EDIT - PUTSTR_OFFSET
			FCB	$00
S_VOICE_EDIT_		FCB	SO_VOICE - PUTSTR_OFFSET
			FCC	" "
			FCB	SO_EDIT - PUTSTR_OFFSET
			FCC	"?"
			FCB	$00
S_INIT__		FCC	"INIT  "
			FCB	$00
S_MAX_NOTES		FCC	"MAX NOTES"
			FCB	$00
S_RECEIVE_CH		FCC	"RECEIVE CH"
			FCB	$00
S_LIMIT_L		FCC	"LIMIT/L"
			FCB	$00
S_LIMIT_H		FCC	"LIMIT/H"
			FCB	$00
S_INST_DETUNE		FCC	"INST DETUNE"
			FCB	$00
S_NOTE_SHIFT		FCC	"NOTE SHIFT"
			FCB	$00
S_OUT_ASSIGN		FCC	"OUT ASSIGN"
			FCB	$00
S_LFO_SELECT		FCC	"LFO SELECT"
			FCB	$00
S_MICTUN		FCC	"MICTUN="
			FCB	$01

S_SHARPS		FCC	" CC# DD# E FF# GG# AA# B"
S_FLATS			FCC	" CDb DEb E FGb GAb ABb B"

S_EQUAL			FCC	"Equal"
			FCB	$00
S_PURE_MAJOR		FCC	"Pure(major)"
			FCB	$01
S_PURE_MINOR		FCC	"Pure(minor)"
			FCB	$01
S_MEAN_TONE		FCC	"Mean tone"
			FCB	$01
S_PYTHAGOREAN		FCC	"Pythagorean"
			FCB	$01
S_WERCKMEISTER		FCC	"Werckmeister"
			FCB	$00
S_KIRNBERGER		FCC	"Kirnberger"
			FCB	$00
S_VALLOTTI_YOUNG		FCC	"Vallotti&young"
			FCB	$00
S_1_4_SHIFT_EQUAL	FCC	"1/4 Shift eql"
			FCB	$00
S_1_4_TONE		FCC	"1/4 Tone"
			FCB	$00
S_1_8_TONE		FCC	"1/8 Tone"
			FCB	$00

S_PFM_SINGLE		FCC	"singl"
			FCB	$00
S_PFM_DUAL		FCC	"dual"
			FCB	$00
S_PFM_SPLIT		FCC	"split"
			FCB	$00
S_PFM_MONO8		FCC	"mono8"
			FCB	$00
S_PFM_POLY4		FCC	"poly4"
			FCB	$00

;-------

F_AF7D			LDAB	M7772
			ANDB	#$04
			BEQ	F_AF91
			CMPA	#$18
			BCS	1F
			CLRA
1			LDAB	#'F'
			JSR	PUTCHAR
			INCA
			BRA	C_AFAA

;-------

F_AF91			CMPA	#$A0
			BCS	1F
			CLRA
1			LDAB	#$49
			SUBA	#$20
			BMI	3F
			LDAB	#'A'
2			SUBA	#$20
			BMI	3F
			INCB
			BRA	2B
3			JSR	PUTCHAR
			ADDA	#$21
C_AFAA			LDAB	#$01
			JSR	PUT_DEC_NN
			RTS

;-------

SHOW_OP_ENABLE		LDAB	#'E'
			JSR	TAG_VOICE_EDITED
			JSR	PUTCHAR
			LDX	#OP_ENABLE
1			LDAA	,X
			ANDA	#$01
			JSR	PUTDIGIT
			INX
			CPX	#OP_ENABLE_END
			BNE	1B
			RTS

;-------

F_AFC9			LDX	#PFM_EDIT_NAME
1			LDAB	,X
			JSR	PUTCHAR
			INX
			CPX	#PFM_EDIT_BUF_END
			BNE	1B
			RTS

;-------

F_AFD8			JSR	GET_VOICE_PTR
			LDAB	#77

;-------	fallthrough

SHOW_NAMEX		ABX
			CLRB
1			PSHB
			LDAB	,X
			JSR	PUTCHAR
			INX
			PULB
			INCB
			CMPB	#$0A
			BNE	1B
			RTS

;-------

F_AFED			TST	M7788
			BNE	5F
			LDAB	M7774
			BNE	2F
1			JMP	13F
2			CMPB	#$05
			BEQ	1B
			CMPB	#$06
			BEQ	3F
			CMPB	#$08
			BNE	4F
3			LDX	#LCD_BUFFER + 6
			STX	DPTR
			LDX	#S_1_2_3_4
			JSR	PUTSTRX
			BRA	13F
4			LDX	#LCD_BUFFER + 7
			STX	DPTR
			LDX	#S_ALG
			JSR	PUTSTRX
			JSR	GET_VOICE_PTR
			LDAA	$34,X
			INCA
			JSR	PUTDIGIT
			BRA	13F
5			LDX	#LCD_BUFFER + 6
			STX	DPTR

			LDAB	M7774
			JSR	JMPOFF1
			FCB	13F - *
			FCB	$02
			FCB	C_B048 - *
			FCB	$03
			FCB	C_B04D - *
			FCB	$04
			FCB	C_B052 - *
			FCB	$05
			FCB	13F - *
			FCB	$07
			FCB	C_B057 - *
			FCB	$08
			FCB	13F - *
			FCB	$09
			FCB	C_B057 - *
			FCB	$0A
			FCB	C_B05C - *
			FCB	$0B
			FCB	13F - *
			FCB	$00

C_B048			LDX	#S_LFO_EDIT
			BRA	12F
C_B04D			LDX	#S_SENS_EDIT
			BRA	12F
C_B052			LDX	#S_FREQ
			BRA	11F
C_B057			LDX	#S_1_2_3_4
			BRA	12F
C_B05C			LDX	#S_FUNCTION
			BRA	12F
11			JSR	PUTSTRX
			LDX	#$4F50
			STX	LCD_BUFFER + 13
			LDAA	OPERATOR_NUM
			ANDA	#$03
			ADDA	#$31
			STAA	LCD_BUFFER + 15
			BRA	13F
12			JSR	PUTSTRX
13			RTS

;-------

F_B07A			TST	M7788
			BNE	4F
			TST	>M00A5
			BEQ	2F
			LDX	#S_UT
			JSR	PUTSTRX
			LDX	#LCD_BUFFER + 4
			STX	DPTR
			LDAB	M7774
			CMPB	#$1D
			BEQ	1F
			CMPB	#$1E
			BNE	2F
			LDX	#S_RECALL_EDIT
			BRA	3F
1			LDX	#S_INIT_VOICE
			BRA	3F
2			LDX	#S_UTILITY_MODE
3			JSR	PUTSTRX
			BRA	13F
4			LDX	#S_UT
			JSR	PUTSTRX
			LDX	#LCD_BUFFER + 4
			STX	DPTR
			LDAB	M7788
			CMPB	#$02
			BCC	14F

			LDAB	M7774
			JSR	JMPOFF1
			FCB	13F - *
			FCB	$15
			FCB	C_B0D0 - *
			FCB	$16
			FCB	13F - *
			FCB	$18
			FCB	C_B0DC - *
			FCB	$19
			FCB	C_B0E0 - *
			FCB	$1D
			FCB	13F - *
			FCB	$00

C_B0D0			TST	>M00A5
			BEQ	6F
			LDAB	#$0A
			BRA	9F
6			CLRB
			BRA	9F

C_B0DC			LDAB	#$01
			BRA	9F

C_B0E0			SUBB	#$17
9			LDX	#DVEC_B14D
C_B0E5			ASLB
			ABX
			LDX	,X
			JSR	PUTSTRX
			CMPB	#$01
			BEQ	12F
			CMPB	#$02
			BEQ	11F
			CMPB	#$03
			BNE	13F
			LDAA	M778A
			CMPA	#$01
			BCS	13F
			CMPA	#$05
			BCC	13F
			LDX	#LCD_BUFFER + 13
			STX	DPTR
			LDX	#S_KEY
			JSR	PUTSTRX
			BRA	13F
11			LDX	#LCD_BUFFER + 13
			STX	DPTR
			LDAB	M7789
			ADDB	#$3C
			JSR	F_B43F
			BRA	13F
12			JSR	F_B47B
13			RTS
14			LDAB	M7774
			CMPB	#$1B
			BNE	15F
			LDAB	#$06
			BRA	9B
15			CMPB	#$1C
			BEQ	16F
			CMPB	#$15
			BNE	13B
			BRA	C_B0D0
16			LDAB	M7789
			ANDB	#$01
			BNE	18F
			LDAB	#$07
			TST	M7789
			BEQ	17F
			INCB
17			BRA	9B
18			LDAB	#$09
			BRA	9B

DVEC_B14D		FDB     S_MIDI_CONTROL
			FDB     S_CASS_CONTROL
			FDB     S_EDIT_EFFECT_1
			FDB     S_EDIT_EFFECT_2
			FDB     S_EDIT_EFFECT_3
			FDB     S_MICRO_TUNE
			FDB     S_CHORD
			FDB     S_MICRO___OCT
			FDB     S_MICRO___FULL
			FDB     S_INIT_
			FDB     S_INIT_P_CNG

;-------

F_B163			LDAB	#'P'
			JSR	TAG_PFM_EDITED
			JSR	PUTCHAR
			LDX	#S__ED
			JSR	PUTSTRX

			LDAB	M7774
			JSR	JMPOFF1
			FCB	9F - *
			FCB	$28
			FCB	C_B189 - *
			FCB	$29
			FCB	C_B18F - *
			FCB	$2A
			FCB	C_B1A4 - *
			FCB	$2B
			FCB	C_B193 - *
			FCB	$30
			FCB	9F - *
			FCB	$31
			FCB	C_B197 - *
			FCB	$34
			FCB	C_B189 - *
			FCB	$36
			FCB	9F - *
			FCB	$00

C_B189			CLRB
			LDX	#LCD_BUFFER + 1
			BRA	6F

C_B18F			LDAB	#$01
			BRA	5F

C_B193			SUBB	#$29
			BRA	5F

C_B197			SUBB	#$2A
5			LDX	#LCD_BUFFER + 5
6			STX	DPTR
			LDX	#DVEC_B1BA
			JMP	C_B0E5

C_B1A4			LDX	#LCD_BUFFER + 5
			STX	DPTR
			LDAA	M778C
			CMPA	#$08
			BCS	8F
			CLRA
8			JSR	GET_VOICE_PTR_A
			LDAB	#77
			JSR	SHOW_NAMEX
9			RTS

DVEC_B1BA		FDB     S_ERFORMANCE_EDIT
			FDB     S_MAX_NOTES
			FDB     S_RECEIVE_CH
			FDB     S_LIMIT_L
			FDB     S_LIMIT_H
			FDB     S_INST_DETUNE
			FDB     S_NOTE_SHIFT
			FDB     S_OUT_ASSIGN
			FDB     S_LFO_SELECT
			FDB     S_MICTUN

;-------

F_B1CE			LDX	#S_P_UT
			JSR	PUTSTRX
			LDX	#LCD_BUFFER + 5
			STX	DPTR
			LDAB	M7774
			CMPB	#$3C
			BNE	1F
			LDX	#S_VOICE_EDIT_
			BRA	4F
1			CMPB	#$3D
			BNE	5F
			TST	>M00A5
			BEQ	3F
			LDX	#S_INIT__
			JSR	PUTSTRX
2			LDAB	M777E
			ASLB
			LDX	#DVEC_STD_PFM_NAMES
			ABX
			LDX	,X
			BRA	4F
3			LDX	#LCD_BUFFER + 2
			STX	DPTR
			LDX	#S_UTILITY
			JSR	PUTSTRX
			LDX	#LCD_BUFFER + 11
			STX	DPTR
			BRA	2B
4			JSR	PUTSTRX
			BRA	6F
5			LDX	#LCD_BUFFER + 2
			STX	DPTR
			LDX	#S_UTILITY
			BRA	4B
6			RTS

DVEC_STD_PFM_NAMES	FDB	S_PFM_SINGLE
			FDB	S_PFM_DUAL
			FDB	S_PFM_SPLIT
			FDB	S_PFM_MONO8
			FDB	S_PFM_POLY4

;-------

F_B22C			PSHA				; save A
			LDAB	#$40			; set CGCHARs 0 and 1
			LDX	#CG_ARROW_SE		; to the SE and SW arrow
1			JSR	SET_CGCHAR		; -
			CMPB	#$50			; -
			BNE	1B			; -
			PULB				; B <- original A
			CMPB	#$08
			BCS	2F
			CLRB
2			JSR	JMPOFFB
			FCB	C_B24A - *
			FCB	C_B258 - *
			FCB	C_B26B - *
			FCB	C_B27E - *
			FCB	C_B299 - *
			FCB	C_B2A6 - *
			FCB	C_B2BC - *
			FCB	C_B2C4 - *

C_B24A			LDX	#LCD_BOTTOM + 6
			STX	DPTR
			LDX	#S_ALG_1
			JSR	PUTSTRX
			JMP	14F

C_B258			LDD	#'3' << 8
			STD	LCD_BUFFER + 8
			LDX	#LCD_BOTTOM + 8
			STX	DPTR
			LDX	#S_ALG_2
			JSR	PUTSTRX
			BRA	14F

C_B26B			LDD	#'4' << 8
			STD	LCD_BUFFER + 10
			LDX	#LCD_BOTTOM + 8
			STX	DPTR
			LDX	#S_ALG_3
			JSR	PUTSTRX
			BRA	14F

C_B27E			LDX	#LCD_BUFFER + 8
			STX	DPTR
			LDX	#S_ALG_4
			JSR	PUTSTRX
			CLR	LCD_BUFFER + 11
8			LDX	#LCD_BOTTOM + 10
			STX	DPTR
			LDX	#S_ALG_5
			JSR	PUTSTRX
			BRA	14F

C_B299			LDX	#LCD_BUFFER + 10
			STX	DPTR
			LDX	#S_ALG_6
			JSR	PUTSTRX
			BRA	8B

C_B2A6			LDD	#$0134
			STD	LCD_BUFFER + 9
			CLR	LCD_BUFFER + 11
11			LDX	#LCD_BOTTOM + 8
			STX	DPTR
			LDX	#S_ALG_7
			JSR	PUTSTRX
			BRA	14F

C_B2BC			LDD	#$0134
			STD	LCD_BUFFER + 13
			BRA	11B

C_B2C4			LDX	#LCD_BUFFER + 8
			STX	DPTR
			LDX	#S_ALG_7
			JSR	PUTSTRX
			LDAB	#$34
			STAB	LCD_BUFFER + 14
			LDX	#LCD_BOTTOM + 8
			STX	DPTR
			LDX	#S_PLUS_MINUS
			JSR	PUTSTRX
14			RTS

; CGCHAR
CG_ARROW_SE		FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00010000		; |   #    |
			FCB	%00001001		; |    #  #|
			FCB	%00000101		; |     # #|
			FCB	%00000001		; |       #|
			FCB	%00001111		; |    ####|
			FCB	%00000000		; |        |
; CGCHAR
CG_ARROW_SW		FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000001		; |       #|
			FCB	%00010010		; |   #  # |
			FCB	%00010100		; |   # #  |
			FCB	%00010000		; |   #    |
			FCB	%00011110		; |   #### |
			FCB	%00000000		; |        |

S_ALG_1			FCC	"4~3~2~1~"
			FCB	$00
S_ALG_2			FCC	"4~2~1~"
			FCB	$00
S_ALG_3			FCC	"3~2~1~"
			FCB	$00
S_ALG_4			FCC	"4~3"
			FCB	$00
S_ALG_5			FCC	"2~1~"
			FCB	$00
S_ALG_6			FCC	"4~3~"
			FCB	$00
S_ALG_7			FCC	"1 2 3"
			FCB	$00
S_PLUS_MINUS		FCC	"+-+-+-+"
			FCB	$00

;-------
;
; sets the CGCHARs with bitmaps showing the TX's built-in waveforms
; X = pointer to bitmaps
; on exit A destroyed
;

SET_CGCHAR_WAVES	LDAB	#$40
			LDX	#CG_WAVES
1			BSR	SET_CGCHAR
			CMPB	#$80
			BNE	1B
			RTS

;-------
;
; set a single LCD CGCAR
; B = initial address ($40 = CGCHAR 0)
; X = pointer to bitmap
;
; on exit B and X point to the next character, A is destroyed
;
SET_CGCHAR		CLRA				; A <- 0
1			PSHA				; save A
			LDAA	,X			; A <- @X
			JSR	LCD_DO_CMD_DATA		; send data
			INX				; X <- X + 1
			INCB				; B <- B + 1
			PULA				; restore A
			INCA				; A <- A + 1
			CMPA	#$08			; A == 8?
			BNE	1B			; no?  go around
			RTS				; done

CG_WAVES
			FCB	%00000100		; |     #  |
			FCB	%00001010		; |    # # |
			FCB	%00010001		; |   #   #|
			FCB	%00010000		; |   #    |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |

			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000001		; |       #|
			FCB	%00010001		; |   #   #|
			FCB	%00001010		; |    # # |
			FCB	%00000100		; |     #  |
			FCB	%00000000		; |        |

			FCB	%00000100		; |     #  |
			FCB	%00000100		; |     #  |
			FCB	%00001010		; |    # # |
			FCB	%00010001		; |   #   #|
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |

			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00010001		; |   #   #|
			FCB	%00001010		; |    # # |
			FCB	%00000100		; |     #  |
			FCB	%00000100		; |     #  |
			FCB	%00000000		; |        |

			FCB	%00001000		; |    #   |
			FCB	%00010100		; |   # #  |
			FCB	%00010100		; |   # #  |
			FCB	%00010101		; |   # # #|
			FCB	%00000101		; |     # #|
			FCB	%00000101		; |     # #|
			FCB	%00000010		; |      # |
			FCB	%00000000		; |        |

			FCB	%00001000		; |    #   |
			FCB	%00001000		; |    #   |
			FCB	%00010100		; |   # #  |
			FCB	%00010101		; |   # # #|
			FCB	%00000101		; |     # #|
			FCB	%00000010		; |      # |
			FCB	%00000010		; |      # |
			FCB	%00000000		; |        |

			FCB	%00001010		; |    # # |
			FCB	%00010101		; |   # # #|
			FCB	%00010101		; |   # # #|
			FCB	%00010101		; |   # # #|
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |

			FCB	%00001010		; |    # # |
			FCB	%00001010		; |    # # |
			FCB	%00010101		; |   # # #|
			FCB	%00010101		; |   # # #|
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |
			FCB	%00000000		; |        |

SET_CG0_ROMAN_II	LDX	#CG_ROMAN_II
			LDAB	#$40
			BRA	SET_CGCHAR

; CGCHAR 0
CG_ROMAN_II		FCB	%00011111		; |   #####|
			FCB	%00001010		; |    # # |
			FCB	%00001010		; |    # # |
			FCB	%00001010		; |    # # |
			FCB	%00001010		; |    # # |
			FCB	%00001010		; |    # # |
			FCB	%00011111		; |   #####|
			FCB	%00000000		; |        |

SET_CG_NEGATIVE		LDX	#CG_NEGATIVE
			LDAB	#$40
			BSR	SET_CGCHAR
			JMP	SET_CGCHAR

CG_NEGATIVE		FCB	%00000010		; |      # |
			FCB	%00000101		; |     # #|
			FCB	%00000001		; |       #|
			FCB	%00011001		; |   ##  #|
			FCB	%00000010		; |      # |
			FCB	%00000100		; |     #  |
			FCB	%00000111		; |     ###|
			FCB	%00000000		; |        |

			FCB	%00000010		; |      # |
			FCB	%00000110		; |     ## |
			FCB	%00000010		; |      # |
			FCB	%00011010		; |   ## # |
			FCB	%00000010		; |      # |
			FCB	%00000010		; |      # |
			FCB	%00000111		; |     ###|
			FCB	%00000000		; |        |

;-------
;
; B -> Command, A -> Data
;
LCD_DO_CMD_DATA 	JSR	LCD_WAIT
			STAB	LCD_CMD
			JSR	LCD_WAIT
			STAA	LCD_DATA
			RTS

;-------

F_B3B5			TST	>M00A3
			BNE	1F
			JSR	F_B3E9
1			LDAA	M776D
			COMA
			LSRA
			JSR	F_B4DA
			CLRB
2			SUBA	#$05
			BMI	3F
			INCB
			BRA	2B
3			ADDA	#$05
			PSHA
			LDX	#LCD_BOTTOM
			STX	DPTR
			TBA
			BEQ	5F
			LDAB	#$04
4			JSR	PUTCHAR
			DECA
			BNE	4B
5			PULB
			TSTB
			BEQ	6F
			DECB
			JSR	PUTCHAR
6			RTS

;-------

F_B3E9			LDAB	#$40
			LDAA	#$20
1			PSHB
			ANDB	#$07
			BNE	2F
			LSRA
			ORAA	#$10
2			CMPB	#$07
			PULB
			BNE	3F
			PSHA
			CLRA
			BRA	4F
3			PSHA
4			BSR	LCD_DO_CMD_DATA
			PULA
			INCB
			CMPB	#$68
			BNE	1B
			RTS

;-------

F_B408			LDAB	#$40
1			PSHB
			COMB
			ANDB	#$38
			LSRB
			LSRB
			LSRB
			DECB
			STAB	M00AB
			PULB
			CLRA
2			PSHA
			CMPA	#$07
			BEQ	3F
			CMPA	M00AB
			BCC	4F
3			CLRA
			BRA	5F
4			LDAA	#$1F
5			BSR	LCD_DO_CMD_DATA
			INCB
			PULA
			INCA
			CMPA	#$08
			BNE	2B
			CMPB	#$78
			BNE	1B
			RTS

;-------

F_B432			LDX	#S_ON
			TSTA
			BNE	1F
			LDX	#S_OFF
1			JSR	PUTSTRX
			RTS

;-------

F_B43F			PSHB
			JSR	SET_CG_NEGATIVE
			PULB
			LDX	DPTR
			LDAA	#$2D
1			INCA
			SUBB	#$0C
			BCC	1B
			CMPA	#$30
			BCC	2F
			SUBA	#$2E
2			STAA	$02,X
			ADDB	#$0C
			ASLB
			PSHX
			LDX	#S_SHARPS
			ABX
			LDD	,X
			PULX
			STD	,X
			RTS

;-------

F_B463			SUBA	#$40

;-------	fallthrough

F_B465			BHI	1F
			BMI	2F
			LDAB	#$20
			BRA	3F
1			LDAB	#$2B
			BRA	3F
2			NEGA
			LDAB	#'-'
3			JSR	PUTCHAR
			CLRB
			JMP	PUT_DEC_NN

;-------

F_B47B			LDAA	PFM_EDIT_MICTUN
			BNE	1F
			LDX	#S_OCT
			BRA	2F
1			CMPA	#$02
			BCC	3F
			LDX	#S_FULL
2			JSR	PUTSTRX
			BRA	8F
3			DECA
			CMPA	#$0A
			BCC	7F
			PSHA
			JSR	PUTDIGIT
			PULA
			CMPA	#$02
			BCS	8F
			CMPA	#$06
			BCC	8F
			LDAB	PFM_EDIT_KEY
			LDAA	PFM_EDIT_MICTUN
			CMPA	#$04
			BNE	5F
			ADDB	#$09
			CMPB	#$0C
			BCS	4F
			SUBB	#$0C
4			ASLB
			LDX	#S_SHARPS
			BRA	6F
5			ASLB
			LDX	#S_FLATS
6			ABX
			LDD	,X
			STD	LCD_BUFFER + 14
			BRA	8F
7			CLRB
			JSR	PUT_DEC_NN
8			RTS

S_OCT			FCC	"Oct."
			FCB	$00
S_FULL			FCC	"Full"
			FCB	$00

;-------

F_B4D6			LDAB	#200
			MUL
			RTS

;-------

F_B4DA			LDAB	#142
			MUL
			RTS

;-------

F_B4DE			LDAB	#38
			MUL
			RTS

;-------

GET_VOICE_PTR_A		LDAB	#110
			MUL
			ADDD	#VCED
			XGDX
			RTS

;-------

D_B4EA			FCB	$00,$01,$02,$03,$04,$05,$06,$07
			FCB	$08,$09,$0C,$0A,$0B,$10,$0D,$0E
			FCB	$14,$0F,$11,$18,$12,$13,$1C,$15
			FCB	$16,$20,$19,$17,$24,$1A,$1D,$28
			FCB	$1B,$1E,$2C,$21,$30,$1F,$22,$25
			FCB	$34,$23,$38,$29,$26,$3C,$2D,$27
			FCB	$2A,$31,$2E,$2B,$35,$32,$2F,$39
			FCB	$36,$33,$3D,$3A,$37,$3E,$3B,$3F

;-------
;
; table of mapping from operator number to structure offset
; (operators are arrange in memory in the order 4, 2, 3, 1)

D_OPERATOR_MAP		FCB	$03,$01,$02,$00

			INCLUDE	"inc/ptr.asm"
			INCLUDE	"inc/jmpoff.asm"

0	 		BRA	0B

			ORG	$D1C0

			INCLUDE	"inc/voice.asm"
			INCLUDE	"inc/pfm.asm"
			INCLUDE	"inc/vecs.asm"
