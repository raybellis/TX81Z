;
; Default voice
;
INIT_VOICE		FCB	$1F,$1F,$00,$0F,$0F,$00,$00,$00,$04,$03
			FCB	$1F,$1F,$00,$0F,$0F,$00,$00,$00,$04,$03
			FCB	$1F,$1F,$00,$0F,$0F,$00,$00,$00,$04,$03
			FCB	$1F,$1F,$00,$0F,$0F,$00,$00,$5A,$04,$03
			FCB	$00,$23,$00,$00,$00,$62,$18,$04
			FCB	$04,$00,$28,$32,$00,$00,$00,$32
			FCB	$00
			FCC	"INIT VOICE"
			FCB	$00,$00,$00,$00,$00,$00,$00,$00
			FCB	$00,$00,$00

;
; Strings that appear in both banks
;
S_TX			FCC	"(TX)"
			FCB	$00
S_DX			FCC	"(DX)"
			FCB	$00
S_MEM_PROTECTED		FCC	"Memory Protected"
			FCB	$00
S_GOOD_MORNING		FCC	"<Good morning!!>"
			FCB	$00
