;
; Port 63 controls which ROM bank is selected
;
BANK_LO                 MACRO
&0                      AIM     #%11110111,PORT6
                        ENDM

BANK_HI                 MACRO
&0                      OIM     #%00001000,PORT6
                        ENDM

;
; Bank swap depends on which bank we're in
;
BANK_SW                 MACRO
			IFC	&BANK,HI
&0                      BANK_LO
			ELSE
&0                      BANK_HI
			ENDIF
			ENDM

;
; A 2 byte, 3 cycle NOP
;
SPIN3			MACRO
&0			BRN	*
			ENDM

;
; A 3 byte, 4 cycle NOP
;
SPIN4			MACRO
&0			SPIN3
			NOP
			ENDM

;
; A forward branching 2 byte, 3 cycle NOP
;
SPIN3F			MACRO
&0			BRN	* + 2
			ENDM

;
; A forward branching 3 byte, 4 cycle NOP
;
SPIN4F			MACRO
&0			SPIN3F
			NOP
			ENDM
;
;
; Wait for OPZ busy flag to clear
;
OPZ_POLL		MACRO
&0
5000			TST	OPZ_DATA
			BMI	5000B
			ENDM

;
; Write A to OPZ register B
;
OPZ_OUT_A		MACRO
&0			STAB	OPZ_ADDRESS
			SPIN4
			STAA	OPZ_DATA
			ENDM
;
; Write B to OPZ register A
;
OPZ_OUT_B		MACRO
&0			STAA	OPZ_ADDRESS
			SPIN4
			STAB	OPZ_DATA
			ENDM
