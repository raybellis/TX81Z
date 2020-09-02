;****************************************************
;* Identified RAM memory locations		    *
;****************************************************

XROM			EQU	$0040	; storage for XROM call number
LOOP_COUNT		EQU	$0055	; counts iterations of main loop (modulo 16)

PTR_TX			EQU	$00B4	; pointer for next MIDI TX
PTR_RX			EQU	$00B6	; pointer for pending MIXI RX data
PTR_TX_TAIL		EQU	$00B8	; pointer for last MIDI TX sent
PTR_RX_TAIL		EQU	$00BA	; pointer for next MIDI RX
MIDI_TX_CMD		EQU	$00BC	; last MIDI command sent
MIDI_RX_CMD		EQU	$00BD	; last MIDI command received
MIDI_RX_DATA_1		EQU	$00BE	; first MIDI data byte received
MIDI_RX_DATA_COUNT	EQU	$00C4	; how many data bytes received
MIDI_CRC		EQU	$00C5	; rolling MIDI SysEx CRC
MIDI_RX_ERR		EQU	$00CA	; non-zero if 

USER_VOICE		EQU	$6001	; user voices (32 x 78 bytes = 2496)
					; $6001 .. $69C0

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
; Effects parameters, arranged in memory per the
; bulk data format on p75 of the manual
;
EFFECTS_PARAMS		EQU	$75F1

EF1T			EQU	$75F1

;-------
POLL_ENABLE		EQU	$776C	; set to 0 to skip polling

LCD_COPY		EQU	$7D8B	; copy of current LCD output (32 bytes)
LCD_BUFFER		EQU	$7DAB	; buffer for pending LCD output (32 bytes)

MIDI_TXBUF		EQU	$7DCC	; .. $7E0B (64 bytes)
MIDI_TXBUF_END		EQU	$7E0B

MIDI_RXBUF		EQU	$7E0C	; .. $7EE7 (220 bytes)
MIDI_RXBUF_END		EQU	$7EE7	;

MIDI_CHANS		EQU	$7F89	; (16 bytes)

STACK_TOP		EQU	$7FFF	; the top of the stack
