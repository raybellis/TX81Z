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

; TCSR1 ($08)
EOCI1			EQU	%00001000	; Enable Output Compare Interrupt 1

; TCSR2 ($0F)
EOCI2			EQU	%00001000	; Enable Output Compare Interrupt 2

; RCMR  ($10)
SS000			EQU	%00000000	; Speed Select 000 (E / 16)
SS001			EQU	%00000001	; Speed Select 001 (E / 128)
SS010			EQU	%00000010	; Speed Select 010 (E / 1024)
SS011			EQU	%00000011	; Speed Select 011 (E / 4096)

CC011			EQU	%00001100	; Clock Control / Format Select

; TRCSR ($11)
WU			EQU	%00000001	; Wake-Up
TE			EQU	%00000010	; Transmit Enable
TIE			EQU	%00000100	; Transmit Interrupt Enable
RE			EQU	%00001000	; Receive Enable
RIE			EQU	%00010000	; Receive Interrupt Enable
TDRE			EQU	%00100000	; Transimit Data Register Empty
ORFE			EQU	%01000000	; Overrun Framing Error
RDRF			EQU	%10000000	; Receive Data Register Full

; RP5CR ($14)
IRQ1E			EQU	%00000001	; IRQ1 Enable
IRQ2E			EQU	%00000010	; IRQ2 Enable
MRE			EQU	%00000100	; Memory Ready Enable
RAME			EQU	%01000000	; RAM Enable

; TCSR3 ($1B)
CKS00			EQU	%00000000	; Input Clock Select
CKS01			EQU	%00000001
CKS10			EQU	%00000010
CKS11			EQU	%00000011

TOS00			EQU	%00000000	; Timer Output Select
TOS01			EQU	%00000100
TOS10			EQU	%00001000
TOS11			EQU	%00001100

T2E			EQU	%00010000	; Timer 2 Enable
ECMI			EQU	%01000000	; Enable Counter Match Interrupt
CMF			EQU	%10000000	; Counter Match Flag

;****************************************************
; Field names for GPIO ports			    *
;****************************************************

; PORT6
SW8			EQU	%00000001	; P60 - SW8 (Play / Perform)
SW9			EQU	%00000010	; P61 - SW9 (Edit / Compare)
SW10			EQU	%00000100	; P62 - SW10 (Utility)
BANKSEL			EQU	%00001000	; P63 - ROM bank select
LED1			EQU	%00010000	; P64 - LED 1 (Cursor)
LED2			EQU	%00100000	; P65 - LED 2 (Play / Perform)
LED3			EQU	%01000000	; P66 - LED 3 (Edit / Compare)
LED4			EQU	%10000000	; P67 - LED 4 (Utility)
LEDS			EQU	%11110000	; P64 .. P67 - all LEDs

; PORT5
						; P50 - IRQ1
SW11			EQU	%00000010	; P51 - SW11 (Store / EQ Copy)
						; P52 - MRDY
						; P53 - unused
SW4			EQU	%00010000	; P54 - SW4 (INC)
SW5			EQU	%00100000	; P55 - SW5 (DEC)
SW6			EQU	%01000000	; P56 - SW6 (PARAM+)
SW7			EQU	%10000000	; P57 - SW7 (PARAM-)

; PORT2
CASS_OUT		EQU	%00000001	; P20 - Cassette interface output
CASS_IN			EQU	%00000010	; P21 - Cassette interface input
						; P22 - Clock input
						; P23 - MIDI In
						; P24 - MIDI Out
SW1			EQU	%00100000	; P25 - SW1 (Cursor)
SW2			EQU	%01000000	; P26 - SW2 (Master volume down)
SW3			EQU	%10000000	; P27 - SW3 (Master volume up)
