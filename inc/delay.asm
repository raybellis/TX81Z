;-------
;
;
;
DELAY_300MS		LDAB	#30

;-------	fallthrough
;
; inner loop takes four cycles
; total cycle count including JSR
; = 6 + B * (3 + 4500 * (1 + 3) + 1 + 3) +  5
; = 11 + B * 18007
; at CPU clock of 1.789772 ~= B * 0.01006s
;
DELAY_10MS_X_B
0			LDX	#4500			; 3 cycles

1			DEX				; 1 cycle
			BNE	1B			; 3 cycles

			DECB				; 1 cycle
			BNE	0B			; 3 cycles

1000			RTS				; 5 cycles
