;
; Interrupt Vectors
;
svec_SIO		FDB	hdlr_RST
svec_CMI		FDB	hdlr_CMI
svec_TRAP		FDB	hdlr_RST
svec_DIV0		FDB	hdlr_DIV0
svec_SWI3		FDB	hdlr_RST
svec_SWI2		FDB	hdlr_SWI2
svec_FIRQ		FDB	hdlr_RST
svec_IRQ		FDB	hdlr_IRQ
svec_SWI		FDB	hdlr_RST
svec_NMI		FDB	hdlr_RST
svec_RST		FDB	hdlr_RST
