;
; LCD special characters
;
CH_RIGHT		EQU	$7E		; right arrow
CH_LEFT			EQU	$7F		; left arrow

;
; MIDI commands
;
SYX			EQU	$F0		; SysEx start
EOX			EQU	$F7		; SysEx end
SENSE			EQU	$FE		; Active Sense

;
; MIDI manufacturer IDs
;
MFR_YAMAHA		EQU	$43		; Yamaha's ID code

;
; MIDI controllers
;
CC_MODULATION		EQU	$01
CC_BREATH		EQU	$02
CC_FOOT			EQU	$04
CC_PORTAMENTO_TIME	EQU	$05
CC_VOLUME		EQU	$07
CC_PAN			EQU	$10
CC_SUSTAIN		EQU	$40
CC_PORTAMENTO		EQU	$41

CC_ALL_NOTES_OFF	EQU	$7B
CC_OMNI_OFF		EQU	$7C
CC_OMNI_ON		EQU	$7D
CC_MONO_ON		EQU	$7E
CC_POLY_ON		EQU	$7F
