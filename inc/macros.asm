BANK_LO                 MACRO
&0                      AIM     #%11110111,PORT6
                        ENDM

BANK_HI                 MACRO
&0                      OIM     #%00001000,PORT6
                        ENDM

			IFC	&BANK,HI

BANK_SW                 MACRO
&0                      AIM     #%11110111,PORT6
			ENDM

			ELSE
BANK_SW                 MACRO
&0                      OIM     #%00001000,PORT6
			ENDM

			ENDIF
