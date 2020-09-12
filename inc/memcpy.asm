;-------
;
; Copy B bytes from @SPTR to @X
;
MEMCPYX			STX	DPTR

;-------	fallthrough
;
; Copy B bytes from @SPTR to $DPTR
; - uses A, X
; - B = 0 at end
;
MEMCPY
0			LDX	SPTR
			LDAA	,X
			INX
			STX	SPTR
			LDX	DPTR
			STAA	,X
			INX
			STX	DPTR
			DECB
			BNE	0B
			RTS
