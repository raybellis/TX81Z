;****************************************************
;* TX81Z Hardware memory map			    *
;****************************************************

;
; CPU registers
;
DDR2			EQU	$0001
PORT2			EQU	$0003
TCSR1			EQU	$0008
FRCH			EQU	$0009
FRCL			EQU	$000A
OCR1H			EQU	$000B
TCSR2			EQU	$000F
RMCR			EQU	$0010
TRCSR			EQU	$0011
RDR			EQU	$0012
TDR			EQU	$0013
RP5CR			EQU	$0014
PORT5			EQU	$0015
DDR6			EQU	$0016
PORT6			EQU	$0017
TCSR3			EQU	$001B
TCONR			EQU	$001C
T2CNT			EQU	$001D

;
; Yamaha YM2414 OPZ FM chip
;
OPZ_ADDRESS		EQU	$2000
OPZ_DATA		EQU	$2001

;
; HD44780 16x02 LCD
;
LCD_CMD 		EQU	$4000
LCD_DATA		EQU	$4001

;
; 8kB RAM ($8000 - $7FFF)
;
RAM			EQU	$6000

;****************************************************
; Field names for CPU IO registers		    *
;****************************************************

; TRCSR
RDRF			EQU	%10000000	; Receive Data Register Full
ORFE			EQU	%01000000	; Overrun Framing Error
TDRE			EQU	%00100000	; Transimit Data Register Empty
RIE			EQU	%00010000	; Receive Interrupt Enable
RE			EQU	%00001000	; Receive Enable
TIE			EQU	%00000100	; Transmit Interrupt Enable
TE			EQU	%00000010	; Transmit Enable
WU			EQU	%00000001	; Wake-Up

; TCSR3
ECMI			EQU	%01000000	; Enable Counter Match Interrupt

;****************************************************
; Field names for GPIO ports			    *
;****************************************************

; PORT6
LED4			EQU	%10000000	; P67 - LED 4 (Utility)
LED3			EQU	%01000000	; P66 - LED 3 (Edit / Compare)
LED2			EQU	%00100000	; P65 - LED 2 (Play / Perform)
LED1			EQU	%00010000	; P64 - LED 1 (Cursor)
BANKSEL			EQU	%00001000	; P63 - ROM bank select
SW10			EQU	%00000100	; P62 - SW10 (Utility)
SW9			EQU	%00000010	; P61 - SW9 (Edit / Compare)
SW8			EQU	%00000001	; P60 - SW8 (Play / Perform)

; PORT5
SW7			EQU	%10000000	; P57 - SW7 (PARAM-)
SW6			EQU	%01000000	; P56 - SW6 (PARAM+)
SW5			EQU	%00100000	; P55 - SW5 (DEC)
SW4			EQU	%00010000	; P54 - SW4 (INC)
						; P53 - unused
						; P52 - MRDY
SW11			EQU	%00000010	; P51 - SW11 (Store / EQ Copy)
						; P50 - IRQ1

; PORT2
SW3			EQU	%10000000	; P27 - SW3 (Master volume up)
SW2			EQU	%01000000	; P26 - SW2 (Master volume down)
SW1			EQU	%00100000	; P25 - SW1 (Cursor)
						; P24 - MIDI Out
						; P23 - MIDI In
						; P22 - Clock input
CASS_IN			EQU	%00000010	; P21 - Cassette interface input
CASS_OUT		EQU	%00000001	; P20 - Cassette interface output
