;-------
;
; returns pointer in X to the data for the current operator
; of the current voice
;
GET_OPERATOR_PTR	LDAB	OPERATOR_NUM

;-------	fallthrough
;
; returns pointer in X to the data for operator B
; (13 bytes per operator)
;

GET_OPERATOR_PTR_B	LDAA	#13

;-------	fallthrough
;
; returns pointer in X to per-operator data
;
; B = operator number
; A = structure size multiplier
;
; result X sometimes used with A = 5 and $57,X and beyond
; to point to the per-operator data within the ACED structure
;
GET_OP_PTR_BA		LDX	#D_OPERATOR_MAP		; X <- operator map table
			ABX				; X <- X + B
			LDAB	,X			; B <- @X
			MUL				; D <- A * B
			BSR	GET_VOICE_PTR		; X <- voice entry
			ABX				; X <- X + B
			RTS

;-------
;
; returns pointer in X to the current voice's raw data
;
GET_VOICE_PTR		XGDX				; X <-> D
			LDAB	VOICE_NUM		; B <- voice number
			LDAA	#110			; A <- 110
			MUL				; D <- B * 110
			ADDD	#VCED			; D <- D + @voice table
			XGDX				; X <-> D (restores A/B)
			RTS

