;****************************************************
;* Identified RAM memory locations		    *
;****************************************************

;-------
;
; CPU RAM ($40 - $FF)
;
XROM			EQU	$0040			; storage for XROM call number

NOTE_NUMBER_STOP	EQU	$0051			; MIDI note to be stopped
NOTE_NUMBER		EQU	$0052			; MIDI note to be started
LOOP_COUNT		EQU	$0055			; counts iterations of main loop (modulo 16)

SWITCH_LO		EQU	$009B			; switch state (1 .. 8)
SWITCH_HI		EQU	$009C			; switch state (9 .. 11)

SWITCH_LO_N		EQU	$009D			; pressed switches (1 .. 8)
SWITCH_HI_N		EQU	$009E			; pressed switches (9 .. 11)

DPTR			EQU	$00A7			; destination pointer for copy operations
SPTR			EQU	$00A9			; source pointer for copy operations

PTR_TX			EQU	$00B4			; pointer for next MIDI TX
PTR_RX			EQU	$00B6			; pointer for pending MIXI RX data
PTR_TX_TAIL		EQU	$00B8			; pointer for last MIDI TX sent
PTR_RX_TAIL		EQU	$00BA			; pointer for next MIDI RX
MIDI_TX_CMD		EQU	$00BC			; last MIDI command sent
MIDI_RX_CMD		EQU	$00BD			; last MIDI command received
MIDI_RX_DATA_1		EQU	$00BE			; first MIDI data byte received

SYSEX_CHAN		EQU	$00BF			; header bytes from RX sysex
SYSEX_OP		EQU	$00C0			; -
SYSEX_B3		EQU	$00C1			; -
SYSEX_B4		EQU	$00C2			; -
SYSEX_B5		EQU	$00C3			; -

MIDI_RX_DATA_COUNT	EQU	$00C4			; how many data bytes received
MIDI_TX_CRC		EQU	$00C5			; rolling MIDI TX SysEx CRC
MIDI_RX_CRC		EQU	$00C6			; rolling MIDI RX SysEx CRC
SYSEX_INDEX		EQU	$00C7			; entry count within TX sysex bulk dumps
SYSEX_MODE		EQU	$00C9			; type of SysEx RX being handled
MIDI_RX_ERR		EQU	$00CA			; non-zero if MIDI RX error

;-------
;
; 32 x 72 bytes of user preset data
;
USER_VOICE		EQU	$6001			; user voices (32 x 78 bytes = 2496)
USER_VOICE_END		EQU	USER_VOICE + 32 * 78	; $69C1

;-------

; TBC			EQU	$69C1

;--------
;
; 8 x 110 bytes of live voice data
;
VCED			EQU	$6A67

VCED_OPS		EQU	VCED			; 4 operators (13 bytes each)
VCED_OPS_END		EQU	VCED + 4 * 13

VCED_PARAMS		EQU	VCED_OPS_END		; other voice parameter data

VCED_TRANSPOSE		EQU	VCED_PARAMS + 10
VCED_POLYMODE		EQU	VCED_PARAMS + 11
VCED_PORTATIME		EQU	VCED_PARAMS + 14

VCED_END		EQU	VCED + 87		; end of VCED data

ACED			EQU	VCED + 87		; start of additional voice data

ACED_FINE		EQU	ACED + 2		; frequency range fine

ACED_END		EQU	ACED + 23		; 110 bytes in total

VCED_TABLE_END		EQU	VCED + 8 * 110

;-------
;
; Performance edit buffer
;
PFM_EDIT_BUF		EQU	$6DD7			; performance edit buffer (110 bytes)
PFM_EDIT_INST_0		EQU	PFM_EDIT_BUF
PFM_EDIT_INST_4		EQU	PFM_EDIT_BUF + 4 * 12
PFM_EDIT_INST_END	EQU	PFM_EDIT_BUF + 96
PFM_EDIT_MICTUN		EQU	PFM_EDIT_INST_END + 0
PFM_EDIT_ASSIGN		EQU	PFM_EDIT_INST_END + 1	; assign mode
PFM_EDIT_EFFECT		EQU	PFM_EDIT_INST_END + 2	; effect select
PFM_EDIT_KEY		EQU	PFM_EDIT_INST_END + 3	; microtune key
PFM_EDIT_NAME		EQU	PFM_EDIT_INST_END + 4
PFM_EDIT_BUF_END	EQU	PFM_EDIT_NAME + 10

;
;
;
USER_PFM		EQU	$6E45			; user PFMs (24 x 76 bytes = 1824)
							; $6E45 .. $7564

;-------
;
; System Parameters, arranged in memory per the
; bulk data format on p78 of the manual.
;
SYS_PARAMS		EQU	$7565

SYS_TUNE		EQU	SYS_PARAMS + 0		; master tune
SYS_MIDBCH		EQU	SYS_PARAMS + 1		; Basic recv. chan.  16 = Omni
SYS_MIDTCH		EQU	SYS_PARAMS + 2		; Trans. chan.
SYS_PCINF		EQU	SYS_PARAMS + 3		; Program Change Switch
SYS_COINF		EQU	SYS_PARAMS + 4		; Cont. chang switch
SYS_PBSW		EQU	SYS_PARAMS + 5		; Pitchbend SW
SYS_NOTESW		EQU	SYS_PARAMS + 6		; 0 = All / 1 = Odd / 2 = Even
SYS_SYSAVL		EQU	SYS_PARAMS + 7		; Exclusive on / off
SYS_MLOCK		EQU	SYS_PARAMS + 8		; Mem. Protect
SYS_CMBIN		EQU	SYS_PARAMS + 9		; Combine
SYS_AT			EQU	SYS_PARAMS + 10		; Aftertouch

SYS_PARAMS_END		EQU	SYS_PARAMS + 11

;-------
;
; TBD - 2 * 64 bytes
;
PROG_CHANGES		EQU	$7571
PROG_CHANGES_END	EQU	PROG_CHANGES + 128

;-------
;
; Effects parameters, arranged in memory per the
; bulk data format on p75 of the manual.  55 bytes.
;
EFFECTS_PARAMS		EQU	$75F1

EF1T			EQU	EFFECTS_PARAMS + 0
EF1P			EQU	EFFECTS_PARAMS + 1
EF1F			EQU	EFFECTS_PARAMS + 2
EF1L			EQU	EFFECTS_PARAMS + 3

EF2D			EQU	EFFECTS_PARAMS + 4
EF2S			EQU	EFFECTS_PARAMS + 5
EF2R			EQU	EFFECTS_PARAMS + 6

CHORD			EQU	EFFECTS_PARAMS + 7	; 48 bytes
CHORD_END		EQU	CHORD + 48

EFFECTS_PARAMS_END	EQU	CHORD_END

;-------
;
; TBC - 24 bytes
;
MICROTUNE_OCT		EQU	$7628
MICROTUNE_OCT_END	EQU	MICROTUNE_OCT + 24

;-------
;
; Full microtune table
;
MICROTUNE_FULL		EQU	$7640
MICROTUNE_FULL_END	EQU	MICROTUNE_FULL + 256

;-------
;
; Greeting string - 16 byte string
;
GREETING		EQU	$7740

;-------

EF2R_VALUE		EQU	$7750

CHORD_NOTE		EQU	$7756
NOTE_VELOCITY		EQU	$7769
POLL_ENABLE		EQU	$776C			; set to 0 to skip polling

OP_ENABLE		EQU	$776E			;
OP_ENABLE_END		EQU	OP_ENABLE + 4		;

OPERATOR_NUM		EQU	$777B			; current operator number

MENU_VALUE		EQU	$777E			; value selected in menus

VOICE_NUM		EQU	$778B			; current voice number

PFM_EDITED		EQU	$7791			; Performance data changed
VOICE_EDITED		EQU	$7792			; Voice data changed
VOICE_COMPARE		EQU	$7793			; Voice compare mode

OPZ_E0_REG_COPY		EQU	$77CE			; values of OPZ registers $E0 .. $FF
OPZ_C0_REG_COPY		EQU	$77EE			; values of OPZ registers $C0 .. $DF

INST_MODULATION		EQU	$7D53			; CC modulation (8 bytes)
INST_BREATH		EQU	$7D5B			; CC breath (8 bytes)
INST_FOOT		EQU	$7D63			; CC foot (8 bytes)
INST_VOLUME		EQU	$7D6B			; scaled 0..255 (8 bytes)

; TBC			EQU	$7D83			; per voice TDB (8 bytes)

LCD_COPY		EQU	$7D8B			; copy of current LCD output (32 bytes)
LCD_BUFFER		EQU	$7DAB			; buffer for pending LCD output (32 bytes)
LCD_BOTTOM		EQU	LCD_BUFFER + 16

MIDI_TXBUF		EQU	$7DCC			; .. $7E0B (64 bytes)
MIDI_TXBUF_END		EQU	MIDI_TXBUF + 64

MIDI_RXBUF		EQU	$7E0C			; .. $7EE7 (220 bytes)
MIDI_RXBUF_END		EQU	MIDI_RXBUF + 220

; 7EE9 8 bytes (indexed by instrument number) TBC

MIDI_CHANS		EQU	$7F89			; (16 bytes)

STACK_TOP		EQU	$7FFF			; the top of the stack
