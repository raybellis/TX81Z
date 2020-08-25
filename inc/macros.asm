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
; Bank swap macro is conditional, depending on which bank we're in
;
			IFC	&BANK,HI
BANK_SW                 MACRO
&0                      AIM     #%11110111,PORT6
			ENDM
			ELSE
BANK_SW                 MACRO
&0                      OIM     #%00001000,PORT6
			ENDM
			ENDIF


