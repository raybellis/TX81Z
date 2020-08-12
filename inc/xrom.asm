;
; Entry point for cross-bank function calls.
;
; This function exists at the same place in both banks, with the
; effect that as soon as the first instruction is executed the
; code then continues from the -other- bank, until the point at
; which the bank select port gets restored to its original value
;
; The implementations differ only in whether they set or reset
; pin P63, and the base address at which the jump vector is
; stored
;

XROM_CALL		BANK_SW				; select other bank
			LDX	#XROM_VEC		; reached via call made within HI ROM
			PSHB
			LDAB	XROM
			ABX
			ABX
			PULB
			LDX	,X
			JSR	,X
			BANK_SW				; (re-)select original bank
			RTS

; unused
XROM_CALL2		BANK_SW
			BSR	XROM_LOOKUP
			LDAA	,X
			BANK_SW
			RTS

; unused
XROM_CALL3		BANK_SW
			BSR	XROM_LOOKUP
			LDAB	,X
			BANK_SW
			RTS

; unused
XROM_CALL4		BANK_SW
			BSR	XROM_LOOKUP
			ABX
			LDD	,X
			BANK_SW
			RTS
; unused
XROM_CALL5		BANK_SW
			BSR	XROM_LOOKUP
			ABX
			ABX
			LDX	,X
			BANK_SW
			RTS

; unused
XROM_LOOKUP		LDX	#XROM_VEC2
			ABX
			ABX
			LDX	,X
			TAB
			ABX
			RTS
