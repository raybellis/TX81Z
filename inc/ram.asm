;****************************************************
;* Common RAM memory locations			    *
;****************************************************

XROM			EQU	$0040	; storage for XROM call number

PTR_TX			EQU	$00B4	; pointer for next MIDI TX
PTR_RX_TAIL		EQU	$00B6	; pointer for first MIDI RX
PTR_TX_TAIL		EQU	$00B8	; pointer for last MIDI TX
PTR_RX			EQU	$00BA	; pointer for next MIDI RX
M_TX_RUNSTAT		EQU	$00BC	; last MIDI command sent

USER_VOICE		EQU	$6001	; user voices (32 x 78 bytes = 2496)
					; $6001 .. $69C0

USER_PFM		EQU	$6E45	; user PFMs (24 x 76 bytes = 1824)
					; $6E45 .. $7564

LCD_COPY		EQU	$7D8B	; copy of current LCD output (32 bytes)
LCD_BUFFER		EQU	$7DAB	; buffer for pending LCD output (32 bytes)

MIDI_TXBUF		EQU	$7DCC	; .. $7E0C (64 bytes)
MIDI_RXBUF		EQU	$7E0C	; .. $7EE7 (220 bytes)
MIDI_RXBUF_END		EQU	$7EE7	;

STACK_TOP		EQU	$7FFF	; the top of the stack
