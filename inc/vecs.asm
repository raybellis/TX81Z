;
; Interrupt Vectors - $ffea - $ffff
;

			ORG	$FFEA

svec_IRQ2		FDB	hdlr_RST	; $FFEA
svec_CMI		FDB	hdlr_CMI	; $FFEC
svec_TRAP		FDB	hdlr_RST	; $FFEE
svec_SIO		FDB	hdlr_SIO	; $FFF0
svec_TOI		FDB	hdlr_RST	; $FFF2
svec_OCI		FDB	hdlr_OCI	; $FFF4
svec_ICI		FDB	hdlr_RST	; $FFF6
svec_IRQ1		FDB	hdlr_IRQ1	; $FFF8
svec_SWI		FDB	hdlr_RST	; $FFFA
svec_NMI		FDB	hdlr_RST	; $FFFC
svec_RST		FDB	hdlr_RST	; $FFFE
