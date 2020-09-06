;****************************************************
;* Identified RAM memory locations		    *
;****************************************************

;-------
;
; CPU RAM ($40 - $FF)
;
XROM			EQU	$0040	; storage for XROM call number

NOTE_NUMBER		EQU	$0052	; MIDI note to be played
LOOP_COUNT		EQU	$0055	; counts iterations of main loop (modulo 16)

SWITCH_LO		EQU	$009D	; pressed switches (1 .. 8)
SWITCH_HI		EQU	$009E	; pressed switches (9 .. 11)

PTR_TX			EQU	$00B4	; pointer for next MIDI TX
PTR_RX			EQU	$00B6	; pointer for pending MIXI RX data
PTR_TX_TAIL		EQU	$00B8	; pointer for last MIDI TX sent
PTR_RX_TAIL		EQU	$00BA	; pointer for next MIDI RX
MIDI_TX_CMD		EQU	$00BC	; last MIDI command sent
MIDI_RX_CMD		EQU	$00BD	; last MIDI command received
MIDI_RX_DATA_1		EQU	$00BE	; first MIDI data byte received
MIDI_RX_DATA_COUNT	EQU	$00C4	; how many data bytes received
MIDI_TX_CRC		EQU	$00C5	; rolling MIDI TX SysEx CRC
MIDI_RX_CRC		EQU	$00C6	; rolling MIDI RX SysEx CRC
MIDI_RX_ERR		EQU	$00CA	; non-zero if MIDI RX error

;-------
;
;

USER_VOICE		EQU	$6001	; user voices (32 x 78 bytes = 2496)
					; $6001 .. $69C0

;				# $6A67 + 8 * 110 = $6DD7

PFM_EDIT_BUF		EQU	$6DD7	; performance edit buffer (110 bytes)
PFM_EDIT_INST_0		EQU	PFM_EDIT_BUF
PFM_EDIT_INST_4		EQU	PFM_EDIT_BUF + 4 * 12
PFM_EDIT_INST_END	EQU	PFM_EDIT_BUF + 96
PFM_EDIT_MICTUN		EQU	PFM_EDIT_INST_END + 0
PFM_EDIT_ASSIGN		EQU	PFM_EDIT_INST_END + 1	; assign mode
PFM_EDIT_EFFECT		EQU	PFM_EDIT_INST_END + 2	; effect select
PFM_EDIT_KEY		EQU	PFM_EDIT_INST_END + 3	; microtune key
PFM_EDIT_NAME		EQU	PFM_EDIT_INST_END + 4
PFM_EDIT_BUF_END	EQU	PFM_EDIT_NAME + 10

USER_PFM		EQU	$6E45	; user PFMs (24 x 76 bytes = 1824)
					; $6E45 .. $7564

;-------
;
; System Parameters, arranged in memory per the
; bulk data format on p78 of the manual.
;
SYS_PARAMS		EQU	$7565

SYS_TUNE		EQU	$7565	; master tune
SYS_MIDBCH		EQU	$7566	; Basic recv. chan.  16 = Omni
SYS_MIDTCH		EQU	$7567	; Trans. chan.
SYS_PCINF		EQU	$7568	; Program Change Switch
SYS_COINF		EQU	$7569	; Cont. chang switch
SYS_PBSW		EQU	$756A	; Pitchbend SW
SYS_NOTESW		EQU	$756B	; 0 = All / 1 = Odd / 2 = Even
SYS_SYSAVL		EQU	$756C	; Exclusive on / off
SYS_MLOCK		EQU	$756D	; Mem. Protect
SYS_CMBIN		EQU	$756E	; Combine
SYS_AT			EQU	$756F	; Aftertouch

;-------
;
; TBD - 2 * 64 bytes
;
;M7571			EQU	$7571

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
;M7628			EQU	$7628

;-------
;
; TBC - 4 * 64 bytes (?)
;
;M7640			EQU	$7640

;-------
;
; TBC - 16 bytes
;
;M7740			EQU	$7740

;-------
NOTE_VELOCITY		EQU	$7769
POLL_ENABLE		EQU	$776C	; set to 0 to skip polling

OP_ENABLE		EQU	$776E		;
OP_ENABLE_END		EQU	OP_ENABLE + 4	;

FLAG_EDITED		EQU	$7792	; Data changed
FLAG_COMPARE		EQU	$7793	; Compare mode

LCD_COPY		EQU	$7D8B	; copy of current LCD output (32 bytes)
LCD_BUFFER		EQU	$7DAB	; buffer for pending LCD output (32 bytes)

MIDI_TXBUF		EQU	$7DCC	; .. $7E0B (64 bytes)
MIDI_TXBUF_END		EQU	MIDI_TXBUF + 64

MIDI_RXBUF		EQU	$7E0C	; .. $7EE7 (220 bytes)
MIDI_RXBUF_END		EQU	MIDI_RXBUF + 220

; 7EE9 8 bytes (indexed by instrument number) TBC

MIDI_CHANS		EQU	$7F89	; (16 bytes)

STACK_TOP		EQU	$7FFF	; the top of the stack
