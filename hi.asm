; f9dasm: M6800/1/2/3/8/9 / H6309 Binary/OS9/FLEX9 Disassembler V1.79
; Loaded binary file hi.bin

;****************************************************
;* Used Labels					    *
;****************************************************

			OPT	H03,NCL,NOW	       
FILCHR			TEXT	$FF		       
M0000			EQU	$0000		       
DDR2			EQU	$0001		       
M0002			EQU	$0002		       
PORT2			EQU	$0003		       
M0004			EQU	$0004		       
TCSR1			EQU	$0008		       
FRCH			EQU	$0009		       
OCR1H			EQU	$000B		       
TCSR2			EQU	$000F		       
RMCR			EQU	$0010		       
TRSCR			EQU	$0011		       
RDR			EQU	$0012		       
TDR			EQU	$0013		       
RP5CR			EQU	$0014		       
PORT5			EQU	$0015		       
DDR6			EQU	$0016		       
PORT6			EQU	$0017		       
M0018			EQU	$0018		       
TCSR3			EQU	$001B		       
TCONR			EQU	$001C		       
T2CNT			EQU	$001D		       
M0020			EQU	$0020		       
Z0025			EQU	$0025		       
XROM			EQU	$0040		       
M0041			EQU	$0041		       
M0045			EQU	$0045		       
M0048			EQU	$0048		       
M0049			EQU	$0049		       
M0050			EQU	$0050		       
M0051			EQU	$0051		       
M0052			EQU	$0052		       
M0053			EQU	$0053		       
M0054			EQU	$0054		       
M0055			EQU	$0055		       
M0056			EQU	$0056		       
M0057			EQU	$0057		       
M0058			EQU	$0058		       
M0059			EQU	$0059		       
M005A			EQU	$005A		       
M005B			EQU	$005B		       
M0060			EQU	$0060		       
M0069			EQU	$0069		       
M006B			EQU	$006B		       
M006C			EQU	$006C		       
M006D			EQU	$006D		       
M006E			EQU	$006E		       
M006F			EQU	$006F		       
M0070			EQU	$0070		       
M0071			EQU	$0071		       
M0072			EQU	$0072		       
M0073			EQU	$0073		       
M0074			EQU	$0074		       
M0076			EQU	$0076		       
M0077			EQU	$0077		       
M0079			EQU	$0079		       
M007B			EQU	$007B		       
M007E			EQU	$007E		       
M0080			EQU	$0080		       
M0081			EQU	$0081		       
M0082			EQU	$0082		       
M0083			EQU	$0083		       
M0084			EQU	$0084		       
M0085			EQU	$0085		       
M0086			EQU	$0086		       
M0088			EQU	$0088		       
M0089			EQU	$0089		       
M008C			EQU	$008C		       
M008D			EQU	$008D		       
M008E			EQU	$008E		       
M0090			EQU	$0090		       
M0091			EQU	$0091		       
M0092			EQU	$0092		       
M0093			EQU	$0093		       
M0095			EQU	$0095		       
M0097			EQU	$0097		       
M0098			EQU	$0098		       
M009A			EQU	$009A		       
M009B			EQU	$009B		       
M009D			EQU	$009D		       
M009E			EQU	$009E		       
M009F			EQU	$009F		       
M00A0			EQU	$00A0		       
M00A1			EQU	$00A1		       
M00A2			EQU	$00A2		       
M00A3			EQU	$00A3		       
M00A4			EQU	$00A4		       
M00A5			EQU	$00A5		       
M00A6			EQU	$00A6		       
M00A7			EQU	$00A7		       
M00A9			EQU	$00A9		       
M00AD			EQU	$00AD		       
M00AE			EQU	$00AE		       
M00AF			EQU	$00AF		       
M00B0			EQU	$00B0		       
M00B2			EQU	$00B2		       
M00B3			EQU	$00B3		       
M00B4			EQU	$00B4		       
M00B6			EQU	$00B6		       
M00B8			EQU	$00B8		       
M00BA			EQU	$00BA		       
M00BC			EQU	$00BC		       
M00BD			EQU	$00BD		       
M00BE			EQU	$00BE		       
M00BF			EQU	$00BF		       
M00C0			EQU	$00C0		       
M00C1			EQU	$00C1		       
M00C2			EQU	$00C2		       
M00C3			EQU	$00C3		       
M00C4			EQU	$00C4		       
M00C5			EQU	$00C5		       
M00C6			EQU	$00C6		       
M00C7			EQU	$00C7		       
M00C8			EQU	$00C8		       
M00C9			EQU	$00C9		       
M00CA			EQU	$00CA		       
M00CB			EQU	$00CB		       
M00CC			EQU	$00CC		       
M00CE			EQU	$00CE		       
M00DA			EQU	$00DA		       
M00DC			EQU	$00DC		       
M00DF			EQU	$00DF		       
M00E0			EQU	$00E0		       
M00E1			EQU	$00E1		       
M00E2			EQU	$00E2		       
M00E3			EQU	$00E3		       
M00E5			EQU	$00E5		       
M00E7			EQU	$00E7		       
M00EF			EQU	$00EF		       
M00F0			EQU	$00F0		       
M00F1			EQU	$00F1		       
M00F2			EQU	$00F2		       
M00F3			EQU	$00F3		       
M00F4			EQU	$00F4		       
M00F5			EQU	$00F5		       
M00F6			EQU	$00F6		       
M00FE			EQU	$00FE		       
M0100			EQU	$0100		       
M0101			EQU	$0101		       
Z020A			EQU	$020A		       
M0C00			EQU	$0C00		       
M1194			EQU	$1194		       
M1300			EQU	$1300		       
M1700			EQU	$1700		       
OPZ_R0			EQU	$2000		       
OPZ_R1			EQU	$2001		       
M2710			EQU	$2710		       
M373B			EQU	$373B		       
M3FFF			EQU	$3FFF		       
LCD_CMD 		EQU	$4000		       
LCD_DATA		EQU	$4001		       
M4145			EQU	$4145		       
M4304			EQU	$4304		       
M4530			EQU	$4530		       
M4531			EQU	$4531		       
M5045			EQU	$5045		       
M504D			EQU	$504D		       
M5330			EQU	$5330		       
M5331			EQU	$5331		       
M5332			EQU	$5332		       
M6001			EQU	$6001		       
M69C1			EQU	$69C1		       
M6A19			EQU	$6A19		       
M6A67			EQU	$6A67		       
M6AA6			EQU	$6AA6		       
M6AA9			EQU	$6AA9		       
M6AAD			EQU	$6AAD		       
M6ABE			EQU	$6ABE		       
M6AC1			EQU	$6AC1		       
M6AC4			EQU	$6AC4		       
M6AD5			EQU	$6AD5		       
M6DD7			EQU	$6DD7		       
M6DE0			EQU	$6DE0		       
M6E37			EQU	$6E37		       
M6E38			EQU	$6E38		       
M6E39			EQU	$6E39		       
M6E3A			EQU	$6E3A		       
M6E45			EQU	$6E45		       
M7565			EQU	$7565		       
M7566			EQU	$7566		       
M7567			EQU	$7567		       
M7568			EQU	$7568		       
M7569			EQU	$7569		       
M756A			EQU	$756A		       
M756B			EQU	$756B		       
M756C			EQU	$756C		       
M756D			EQU	$756D		       
M756E			EQU	$756E		       
M756F			EQU	$756F		       
M7570			EQU	$7570		       
M7571			EQU	$7571		       
M75F1			EQU	$75F1		       
M75F2			EQU	$75F2		       
M75F3			EQU	$75F3		       
M75F4			EQU	$75F4		       
M75F5			EQU	$75F5		       
M75F6			EQU	$75F6		       
M75F7			EQU	$75F7		       
M75F8			EQU	$75F8		       
M7628			EQU	$7628		       
M7640			EQU	$7640		       
M76C0			EQU	$76C0		       
M7735			EQU	$7735		       
M7740			EQU	$7740		       
M7750			EQU	$7750		       
M7751			EQU	$7751		       
M7752			EQU	$7752		       
M7753			EQU	$7753		       
M7754			EQU	$7754		       
M7755			EQU	$7755		       
M7756			EQU	$7756		       
M775B			EQU	$775B		       
M775C			EQU	$775C		       
M775D			EQU	$775D		       
M775F			EQU	$775F		       
M7761			EQU	$7761		       
M7763			EQU	$7763		       
M7765			EQU	$7765		       
M7766			EQU	$7766		       
M7767			EQU	$7767		       
M7769			EQU	$7769		       
M776A			EQU	$776A		       
M776B			EQU	$776B		       
M776C			EQU	$776C		       
M776D			EQU	$776D		       
M776E			EQU	$776E		       
M776F			EQU	$776F		       
M7770			EQU	$7770		       
M7771			EQU	$7771		       
M7772			EQU	$7772		       
M7773			EQU	$7773		       
M7774			EQU	$7774		       
M7775			EQU	$7775		       
M7776			EQU	$7776		       
M7777			EQU	$7777		       
M7778			EQU	$7778		       
M7779			EQU	$7779		       
M777A			EQU	$777A		       
M777B			EQU	$777B		       
M777C			EQU	$777C		       
M777D			EQU	$777D		       
M777E			EQU	$777E		       
M777F			EQU	$777F		       
M7780			EQU	$7780		       
M7781			EQU	$7781		       
M7783			EQU	$7783		       
M7784			EQU	$7784		       
M7786			EQU	$7786		       
M7787			EQU	$7787		       
M7788			EQU	$7788		       
M7789			EQU	$7789		       
M778A			EQU	$778A		       
M778B			EQU	$778B		       
M778C			EQU	$778C		       
M778D			EQU	$778D		       
M778E			EQU	$778E		       
M778F			EQU	$778F		       
M7790			EQU	$7790		       
M7791			EQU	$7791		       
M7792			EQU	$7792		       
M7793			EQU	$7793		       
M7794			EQU	$7794		       
M7795			EQU	$7795		       
M7796			EQU	$7796		       
M77A6			EQU	$77A6		       
M77B6			EQU	$77B6		       
M77C6			EQU	$77C6		       
M77CE			EQU	$77CE		       
M77EE			EQU	$77EE		       
M780E			EQU	$780E		       
M781E			EQU	$781E		       
M782E			EQU	$782E		       
M7836			EQU	$7836		       
M7846			EQU	$7846		       
M784E			EQU	$784E		       
M784F			EQU	$784F		       
M7850			EQU	$7850		       
M7851			EQU	$7851		       
M7852			EQU	$7852		       
M7853			EQU	$7853		       
M7873			EQU	$7873		       
M7893			EQU	$7893		       
M78A3			EQU	$78A3		       
M78C3			EQU	$78C3		       
M78D3			EQU	$78D3		       
M7913			EQU	$7913		       
M791B			EQU	$791B		       
M7923			EQU	$7923		       
M792B			EQU	$792B		       
M7933			EQU	$7933		       
M7937			EQU	$7937		       
M793B			EQU	$793B		       
M7942			EQU	$7942		       
M7943			EQU	$7943		       
M7CE3			EQU	$7CE3		       
M7CF1			EQU	$7CF1		       
M7CF3			EQU	$7CF3		       
M7D01			EQU	$7D01		       
M7D03			EQU	$7D03		       
M7D13			EQU	$7D13		       
M7D15			EQU	$7D15		       
M7D17			EQU	$7D17		       
M7D19			EQU	$7D19		       
M7D1B			EQU	$7D1B		       
M7D23			EQU	$7D23		       
M7D2B			EQU	$7D2B		       
M7D3B			EQU	$7D3B		       
M7D53			EQU	$7D53		       
M7D5A			EQU	$7D5A		       
M7D5B			EQU	$7D5B		       
M7D62			EQU	$7D62		       
M7D63			EQU	$7D63		       
M7D6A			EQU	$7D6A		       
M7D6B			EQU	$7D6B		       
M7D72			EQU	$7D72		       
M7D73			EQU	$7D73		       
M7D7B			EQU	$7D7B		       
M7D83			EQU	$7D83		       
M7D8A			EQU	$7D8A		       
M7D8B			EQU	$7D8B		       
M7DAB			EQU	$7DAB		       
M7DCB			EQU	$7DCB		       
M7DCC			EQU	$7DCC		       
M7E0B			EQU	$7E0B		       
M7E0C			EQU	$7E0C		       
M7EE7			EQU	$7EE7		       
M7EE8			EQU	$7EE8		       
M7EE9			EQU	$7EE9		       
M7EF1			EQU	$7EF1		       
M7EF9			EQU	$7EF9		       
M7F01			EQU	$7F01		       
M7F08			EQU	$7F08		       
M7F09			EQU	$7F09		       
M7F29			EQU	$7F29		       
M7F39			EQU	$7F39		       
M7F89			EQU	$7F89		       
M7F99			EQU	$7F99		       
M7F9A			EQU	$7F9A		       
M7FB2			EQU	$7FB2		       
M7FFF			EQU	$7FFF		       
Z811F			EQU	$811F		       

;****************************************************
;* Program Code / Data Areas			    *
;****************************************************

			ORG	$8000		       

hdlr_RST		OIM	#$08,PORT6	       
			LDAA	#$F8		       
			STAA	DDR6		       
			OIM	#$08,PORT6	       
			JMP	Z8200		       
hdlr_SWI2		JSR	Z8F8B		       
			RTI			       
			JSR	Z8F8B		       
			AIM	#$F7,PORT6	       
			RTI			       
hdlr_CMI		JSR	Z8F1F		       
			RTI			       
			JSR	Z8F1F		       
			AIM	#$F7,PORT6	       
			RTI			       
hdlr_DIV0		JSR	ZE014		       
			RTI			       
			JSR	ZE014		       
			AIM	#$F7,PORT6	       
			RTI			       
hdlr_IRQ		JSR	Z8FF6		       
			RTI			       
			JSR	Z8FF6		       
			AIM	#$F7,PORT6	       
			RTI			       
XROM_CALL1		AIM	#$F7,PORT6	       
			LDX	#M8264		       
			PSHB			       
			LDAB	XROM		       
			ABX			       
			ABX			       
			PULB			       
			LDX	,X		       
			JSR	,X		       
			AIM	#$F7,PORT6	       
			RTS			       
XROM_CALL2		AIM	#$F7,PORT6	       
			BSR	XROM_LOOKUP	       
			LDAA	,X		       
			AIM	#$F7,PORT6	       
			RTS			       
XROM_CALL3		AIM	#$F7,PORT6	       
			BSR	XROM_LOOKUP	       
			LDAB	,X		       
			AIM	#$F7,PORT6	       
			RTS			       
XROM_CALL4		AIM	#$F7,PORT6	       
			BSR	XROM_LOOKUP	       
			ABX			       
			LDD	,X		       
			AIM	#$F7,PORT6	       
			RTS			       
XROM_CALL5		AIM	#$F7,PORT6	       
			BSR	XROM_LOOKUP	       
			ABX			       
			ABX			       
			LDX	,X		       
			AIM	#$F7,PORT6	       
			RTS			       
XROM_LOOKUP		LDX	#M82A0		       
			ABX			       
			ABX			       
			LDX	,X		       
			TAB			       
			ABX			       
			RTS			       
INIT_VOICE		FCB	$1F,$1F,$00,$0F,$0F,$00,$00,$00,$04,$03,$1F,$1F,$00
			FCB	$0F,$0F,$00,$00,$00,$04,$03,$1F,$1F,$00,$0F,$0F,$00
			FCB	$00,$00,$04,$03,$1F,$1F,$00,$0F,$0F,$00,$00,$5A,$04
			FCB	$03,$00,$23,$00,$00,$00,$62,$18,$04,$04,$00,$28,$32
			FCB	$00,$00,$00,$32,$00    
			FCC	"INIT VOICE"	       
			FCB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
			FCC	"(TX)"		       
			FCB	$00		       
Z80D9			FCC	"(DX)"		       
			FCB	$00		       
Z80DE			FCC	"Memory Protected"     
			FCB	$00		       
M80EF			FCC	"<Good morning!!>"     
			FCB			       

			ORG	$8200		       

Z8200			SEI			       
			LDAA	#$44		       
			STAA	RP5CR		       
			CLRA			       
			STAA	TCSR1		       
			STAA	TCSR2		       
			LDAA	#$02		       
			STAA	TCSR3		       
			LDS	#M7FFF		       
			LDAA	#$08		       
			STAA	PORT6		       
			CLR	>PORT2		       
			LDAA	#$01		       
			STAA	DDR2		       
			CLR	>PORT2		       
			JSR	Z909D		       
			LDX	#XROM		       
			LDAB	#$C0		       
			CLRA			       
Z8228			STAA	,X		       
			INX			       
			DECB			       
			BNE	Z8228		       
			LDAA	#$FF		       
			STAA	M0051		       
			JSR	HI_CALL_08	       
			JSR	LCD_INIT	       
			JSR	ZC548		       
			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	Z8248		       
			JSR	ZB820		       
			JSR	LO_CALL_08	       
Z8248			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			JSR	Z91FE		       
			LDAA	#$00		       
			STAA	T2CNT		       
			LDAA	#$48		       
			STAA	TCONR		       
			LDAA	#$52		       
			STAA	TCSR3		       
			OIM	#$01,RP5CR	       
			CLRA			       
			TAP			       
			BRA	Z82A2		       
; jump table
M8264			FDB	HI_CALL_00,HI_CALL_01,HI_CALL_02,HI_CALL_03
			FDB	HI_CALL_04,HI_CALL_05,HI_CALL_06,HI_CALL_07
			FDB	HI_CALL_08,HI_CALL_09,HI_CALL_0A,HI_CALL_0B
			FDB	HI_CALL_0C,HI_CALL_0D,HI_CALL_0E,HI_CALL_0F
			FDB	HI_CALL_10,HI_CALL_11,HI_CALL_12,HI_CALL_13
			FDB	HI_CALL_14,HI_CALL_15,HI_CALL_16,HI_CALL_17
			FDB	HI_CALL_18,HI_CALL_19,HI_CALL_1A,HI_CALL_1B
			FDB	HI_CALL_1C,HI_CALL_1D  
M82A0			FDB	hdlr_RST	       
Z82A2			OIM	#$40,TCSR3	       
			LDAA	M0055		       
			INCA			       
			ANDA	#$0F		       
			STAA	M0055		       
			BNE	Z82B1		       
			JSR	Z89F9		       
Z82B1			JSR	ZCB3F		       
			JSR	ZCB3F		       
			NOP			       
			BRA	Z82A2		       
HI_CALL_1D		STAB	M00E0		       
			LDX	#M00F6		       
			ABX			       
			LDAA	,X		       
			BNE	Z82C7		       
			JMP	Z83BF		       
Z82C7			PSHA			       
			LDAB	M0052		       
			JSR	Z8803		       
			BCS	Z82D3		       
			PULA			       
Z82D0			JMP	Z83BF		       
Z82D3			LDX	#M7EE9		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			STAA	M0053		       
			JSR	Z87CA		       
			LDAB	M7772		       
			ANDB	#$04		       
			BEQ	Z82F5		       
			TST	M6E38		       
			BEQ	Z82F5		       
			PULA			       
			LDAA	M7EF9		       
			INCA			       
			BEQ	Z82D0		       
			BRA	Z8302		       
Z82F5			LDAA	M00E0		       
			JSR	Z9A2F		       
			TST	$3F,X		       
			PULA			       
			BEQ	Z8302		       
			JMP	Z8406		       
Z8302			LDX	#M7EF1		       
			LDAB	M00E0		       
			ABX			       
			LDAB	,X		       
			ASLB			       
			STAB	M00E1		       
			LDAB	$08,X		       
			ASLB			       
			STAB	M00E2		       
			LDAB	M0053		       
Z8314			CMPB	M00E2		       
			BLS	Z831A		       
			LDAB	M00E1		       
Z831A			LDX	#M7CE3		       
			ABX			       
			TIM	#$02,$01,X	       
			BNE	Z8328		       
			TIM	#$01,$01,X	       
			BEQ	Z8344		       
Z8328			INCB			       
			INCB			       
			DECA			       
			BNE	Z8314		       
			LDX	M00E3		       
			LDAB	,X		       
			LDAA	#$FF		       
			STAA	,X		       
			CPX	M0079		       
			BNE	Z833D		       
			LDX	M0077		       
			BRA	Z833E		       
Z833D			INX			       
Z833E			STX	M00E3		       
			LDX	#M7CE3		       
			ABX			       
Z8344			STAB	M0053		       
			LSRB			       
			STX	M00E1		       
			JSR	Z9169		       
			LDAB	M0053		       
			LSRB			       
			LDAA	#$08		       
			SEI			       
Z8352			BRN	Z8352		       
Z8354			TST	OPZ_R1		       
			BMI	Z8354		       
			STAA	OPZ_R0		       
Z835C			BRN	Z835C		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
			LDX	#M7F29		       
			LDAB	M00E0		       
			ASLB			       
			ABX			       
			LDD	,X		       
			PSHX			       
			LDX	M00E1		       
			STD	$20,X		       
			LDAB	M0053		       
			LSRB			       
			LDAA	M0052		       
			JSR	Z890E		       
			LDX	M00E1		       
			STD	$10,X		       
			PULX			       
			STD	,X		       
			LDX	M00E1		       
			LDAA	M0052		       
			LDAB	#$02		       
			ORAB	M0058		       
			STD	,X		       
			LDAB	M0053		       
			LDX	M00E5		       
			STAB	,X		       
			CPX	M0079		       
			BNE	Z8398		       
			LDX	M0077		       
			BRA	Z8399		       
Z8398			INX			       
Z8399			STX	M00E5		       
			BSR	Z83C0		       
			LDAA	M0053		       
			LSRA			       
			INCA			       
			LDX	#M7EE9		       
			LDAB	M00E0		       
			ABX			       
			CMPA	$10,X		       
			BLS	Z83AD		       
			LDAA	$08,X		       
Z83AD			ASLA			       
			STAA	,X		       
			LDX	#M7F09		       
			LDAB	M00E0		       
			ASLB			       
			ABX			       
			LDD	M00E3		       
			STD	,X		       
			LDD	M00E5		       
			STD	$10,X		       
Z83BF			RTS			       
Z83C0			AIM	#$FE,RP5CR	       
			LDAA	M0053		       
			LSRA			       
			LDAB	M00F1		       
			STAB	M00F0		       
			LDAB	M0052		       
			SUBB	#$0D		       
			JSR	ZA155		       
			LDAB	M0053		       
			LSRB			       
			JSR	Z8525		       
			LDAB	M0053		       
			LSRB			       
			LDAA	#$01		       
Z83DC			DECB			       
			BMI	Z83E2		       
			ASLA			       
			BRA	Z83DC		       
Z83E2			ORAA	M00EF		       
			STAA	M00EF		       
			LDAB	M0053		       
			LSRB			       
			LDX	#M7913		       
			ABX			       
			LDAA	#$40		       
			ORAA	,X		       
			ADDB	#$20		       
			SEI			       
Z83F4			BRN	Z83F4		       
Z83F6			TST	OPZ_R1		       
			BMI	Z83F6		       
			STAB	OPZ_R0		       
Z83FE			BRN	Z83FE		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			RTS			       
Z8406			LDAA	M00E0		       
			LDAB	M006C		       
			ASLB			       
			MUL			       
			ADDD	#M7F39		       
			STD	M00E1		       
			LDX	#M7F01		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			STAA	M005A		       
			LDX	M00E1		       
			TSTA			       
			BEQ	Z8441		       
			CMPA	M006C		       
			BEQ	Z8430		       
			LDAB	M006C		       
Z8426			TST	,X		       
			BEQ	Z8441		       
			INX			       
			INX			       
			DECB			       
			BNE	Z8426		       
			RTS			       
Z8430			JSR	Z84EB		       
			LDAA	M0052		       
			LDAB	#$02		       
			ORAB	M0058		       
			STD	,X		       
			LDAB	M00E0		       
			LDAA	#$03		       
			BRA	Z8456		       
Z8441			LDAA	M0052		       
			LDAB	#$02		       
			ORAB	M0058		       
			STD	,X		       
			LDAA	M005A		       
			INCA			       
			STAA	M005A		       
			LDX	#M7F01		       
			LDAB	M00E0		       
			ABX			       
			STAA	,X		       
Z8456			LDX	#M7EF1		       
			ABX			       
			LDAB	,X		       
			LDX	#M7CE3		       
			ASLB			       
			ABX			       
			LSRB			       
			CMPA	#$01		       
			BNE	Z84A4		       
			PSHB			       
			PSHX			       
			JSR	Z9169		       
			PULX			       
			LDAA	#$08		       
			PULB			       
			PSHB			       
			SEI			       
Z8471			BRN	Z8471		       
Z8473			TST	OPZ_R1		       
			BMI	Z8473		       
			STAA	OPZ_R0		       
Z847B			BRN	Z847B		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
			PSHX			       
			LDAA	M0052		       
			JSR	Z890E		       
			PULX			       
			PSHX			       
			STD	$10,X		       
			PSHA			       
			PSHB			       
			LDAA	M00E0		       
			JSR	Z9A2F		       
			TST	$41,X		       
			PULB			       
			PULA			       
			PULX			       
			BEQ	Z849C		       
			STD	$20,X		       
Z849C			PULB			       
			ASLB			       
			STAB	M0053		       
			JSR	Z83C0		       
			RTS			       
Z84A4			CMPA	#$02		       
			BNE	Z84CC		       
			LDAA	M0052		       
			PSHX			       
			PSHB			       
			CLRB			       
			LDX	M00E1		       
			SUBD	,X		       
			BCC	Z84B6		       
			CLRA			       
			BRA	Z84B8		       
Z84B6			LDAA	#$01		       
Z84B8			LDX	#M005B		       
			LDAB	M00E0		       
			ABX			       
			STAA	,X		       
Z84C0			LDAA	M0052		       
			STAA	$08,X		       
			PULB			       
			JSR	Z890E		       
			PULX			       
			STD	$10,X		       
			RTS			       
Z84CC			PSHX			       
			PSHB			       
			LDX	#M005B		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			BEQ	Z84E0		       
			LDAA	M0052		       
			SUBA	$08,X		       
			BCS	Z84E8		       
			BRA	Z84C0		       
Z84E0			LDAA	M0052		       
			SUBA	$08,X		       
			BCC	Z84E8		       
			BRA	Z84C0		       
Z84E8			PULB			       
			PULX			       
			RTS			       
Z84EB			LDX	#M005B		       
			LDAB	M00E0		       
			ABX			       
			CLR	>M006B		       
			TST	,X		       
			BEQ	Z84FB		       
			COM	>M006B		       
Z84FB			CLRB			       
Z84FC			PSHX			       
			LDX	M00E1		       
			ASLB			       
			ABX			       
			LSRB			       
			LDAA	,X		       
			PULX			       
			BEQ	Z8519		       
			TST	,X		       
			BNE	Z8511		       
			CMPA	M006B		       
			BCS	Z8519		       
			BRA	Z8515		       
Z8511			CMPA	M006B		       
			BHI	Z8519		       
Z8515			STAA	M006B		       
			STAB	M007B		       
Z8519			INCB			       
			CMPB	M006C		       
			BNE	Z84FC		       
			LDX	M00E1		       
			LDAB	M007B		       
			ASLB			       
			ABX			       
			RTS			       
Z8525			TBA			       
			PSHA			       
			LDX	#M7846		       
			ABX			       
			LDAB	,X		       
			ANDB	#$03		       
			CMPB	#$01		       
			BNE	Z8544		       
			LDAB	M7850		       
			BMI	Z856C		       
			LDX	#M782E		       
			ABX			       
			TST	,X		       
			BEQ	Z856C		       
			LDAB	#$10		       
			BRA	Z8557		       
Z8544			CMPB	#$02		       
			BNE	Z856F		       
			LDAB	M7851		       
			BMI	Z856C		       
			LDX	#M782E		       
			ABX			       
			TST	,X		       
			BEQ	Z856C		       
			LDAB	#$20		       
Z8557			ORAB	M7852		       
			LDAA	#$1B		       
			SEI			       
Z855D			TST	OPZ_R1		       
			BMI	Z855D		       
			STAA	OPZ_R0		       
Z8565			BRN	Z8565		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
Z856C			PULB			       
			BRA	Z8582		       
Z856F			PULB			       
			LDX	#M782E		       
			ABX			       
			TST	,X		       
			BEQ	Z8582		       
			LDX	#M7836		       
			ASLB			       
			ABX			       
			LDD	#M3FFF		       
			STD	,X		       
Z8582			CLRB			       
			LDX	#M782E		       
			ABX			       
			TST	,X		       
			BEQ	Z8595		       
			LDX	#M7836		       
			ASLB			       
			ABX			       
			LDD	#M3FFF		       
			STD	,X		       
Z8595			RTS			       
HI_CALL_1C		STAB	M00E0		       
			LDX	#M00F6		       
			ABX			       
			TST	,X		       
			BNE	Z85A3		       
			JMP	Z8630		       
Z85A3			LDAB	M0051		       
			JSR	Z8803		       
			BCS	Z85AD		       
			JMP	Z8630		       
Z85AD			JSR	Z87CA		       
			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	Z85BC		       
			TST	M6E38		       
			BNE	Z85C8		       
Z85BC			LDAA	M00E0		       
			JSR	Z9A2F		       
			TST	$3F,X		       
			BEQ	Z85C8		       
			JMP	Z86C7		       
Z85C8			LDX	#M7EF1		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			TAB			       
			LDX	#M7CE3		       
			ASLB			       
			ABX			       
Z85D6			LDAB	M0051		       
			CMPB	,X		       
			BNE	Z85E9		       
			TIM	#$02,$01,X	       
			BEQ	Z85E9		       
			LDAB	M0058		       
			EORB	$01,X		       
			ANDB	#$7C		       
			BEQ	Z85FA		       
Z85E9			INX			       
			INX			       
			PSHX			       
			LDX	#M7EF9		       
			LDAB	M00E0		       
			ABX			       
			CMPA	,X		       
			PULX			       
			BEQ	Z8630		       
			INCA			       
			BRA	Z85D6		       
Z85FA			PSHX			       
			PSHB			       
			LDX	#M0049		       
			LDAB	M00E0		       
			ABX			       
			PULB			       
			TIM	#$80,$00,X	       
			PULX			       
			BNE	Z862A		       
Z8609			CLR	$01,X		       
			AIM	#$FE,RP5CR	       
			LDAB	#$08		       
			SEI			       
Z8611			BRN	Z8611		       
Z8613			TST	OPZ_R1		       
			BMI	Z8613		       
			STAB	OPZ_R0		       
Z861B			BRN	Z861B		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			PSHA			       
			BSR	Z8631		       
			PULA			       
			BSR	Z8664		       
			BRA	Z8630		       
Z862A			OIM	#$01,$01,X	       
			AIM	#$FD,$01,X	       
Z8630			RTS			       
Z8631			AIM	#$FE,RP5CR	       
			LDAB	#$01		       
			PSHA			       
Z8637			DECA			       
			BMI	Z863D		       
			ASLB			       
			BRA	Z8637		       
Z863D			COMB			       
			ANDB	M00EF		       
			STAB	M00EF		       
			PULA			       
			TAB			       
			LDX	#M7913		       
			ABX			       
			LDAA	,X		       
			ANDA	#$BF		       
			ADDB	#$20		       
			SEI			       
Z864F			BRN	Z864F		       
Z8651			TST	OPZ_R1		       
			BMI	Z8651		       
			STAB	OPZ_R0		       
Z8659			BRN	Z8659		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			OIM	#$01,RP5CR	       
			RTS			       
Z8664			ASLA			       
			STAA	M0054		       
			LDX	M0077		       
Z8669			LDAA	,X		       
			CMPA	M0054		       
			BEQ	Z8676		       
			CPX	M0079		       
			BEQ	Z86B7		       
			INX			       
			BRA	Z8669		       
Z8676			CPX	M00E3		       
			BEQ	Z86A8		       
Z867A			CPX	M0079		       
			BEQ	Z868B		       
			INX			       
			CPX	M00E5		       
			BEQ	Z869F		       
			DEX			       
			LDAA	$01,X		       
			STAA	,X		       
			INX			       
			BRA	Z867A		       
Z868B			PSHX			       
			LDX	M00E5		       
			CPX	M0077		       
			PULX			       
			BEQ	Z86A0		       
			PSHX			       
			LDX	M0077		       
			LDAA	,X		       
			PULX			       
			STAA	,X		       
			LDX	M0077		       
			BRA	Z867A		       
Z869F			DEX			       
Z86A0			STX	M00E5		       
			LDAA	#$FF		       
			STAA	,X		       
			BRA	Z86B7		       
Z86A8			LDAA	#$FF		       
			STAA	,X		       
			CPX	M0079		       
			BNE	Z86B4		       
			LDX	M0077		       
			BRA	Z86B5		       
Z86B4			INX			       
Z86B5			STX	M00E3		       
Z86B7			LDX	#M7F09		       
			LDAB	M00E0		       
			ASLB			       
			ABX			       
			LDD	M00E3		       
			STD	,X		       
			LDD	M00E5		       
			STD	$10,X		       
			RTS			       
Z86C7			LDX	#M7F01		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			STAA	M005A		       
			TSTA			       
			BLE	Z8730		       
			LDAA	M00E0		       
			LDAB	M006C		       
			ASLB			       
			MUL			       
			ADDD	#M7F39		       
			STD	M00E1		       
			JSR	Z876B		       
			BCS	Z8730		       
Z86E4			LDAA	M005A		       
			DECA			       
			STAA	M005A		       
			PSHX			       
			LDX	#M7F01		       
			LDAB	M00E0		       
			ABX			       
			STAA	,X		       
			PULX			       
			BNE	Z8731		       
			LDX	M00E1		       
			PSHX			       
			LDX	#M0049		       
			LDAB	M00E0		       
			ABX			       
			TST	,X		       
			PULX			       
			BMI	Z872A		       
Z8703			CLR	$01,X		       
			AIM	#$FE,RP5CR	       
			LDX	#M7EF1		       
			LDAB	M00E0		       
			ABX			       
			LDAB	,X		       
			LDAA	#$08		       
			SEI			       
Z8713			BRN	Z8713		       
Z8715			TST	OPZ_R1		       
			BMI	Z8715		       
			STAA	OPZ_R0		       
Z871D			BRN	Z871D		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
			TBA			       
			JSR	Z8631		       
			BRA	Z8730		       
Z872A			OIM	#$01,$01,X	       
			AIM	#$FD,$01,X	       
Z8730			RTS			       
Z8731			LDD	#M0000		       
			STD	,X		       
			JSR	Z8787		       
			PSHB			       
			PSHA			       
			PSHX			       
			LDX	#M7EF1		       
			LDAB	M00E0		       
			ABX			       
			LDAB	,X		       
			PSHB			       
			JSR	Z890E		       
			STD	M00DC		       
			PULB			       
			LDX	#M7CF3		       
			ASLB			       
			ABX			       
			LDD	M00DC		       
			STD	,X		       
			PULX			       
			LDAA	M005A		       
			CMPA	#$01		       
			BNE	Z8768		       
			LDD	#M0000		       
			STD	,X		       
			LDX	M00E1		       
			PULA			       
			PULB			       
			STD	,X		       
			BRA	Z876A		       
Z8768			PULA			       
			PULB			       
Z876A			RTS			       
Z876B			LDAB	M006C		       
			LDX	M00E1		       
Z876F			LDAA	,X		       
			CMPA	M0051		       
			BNE	Z877D		       
			LDAA	M0058		       
			EORA	$01,X		       
			ANDA	#$7C		       
			BEQ	Z8785		       
Z877D			INX			       
			INX			       
			DECB			       
			BNE	Z876F		       
			SEC			       
			BRA	Z8786		       
Z8785			CLC			       
Z8786			RTS			       
Z8787			LDX	M00E1		       
			STX	M0079		       
			LDX	#M005B		       
			LDAB	M00E0		       
			ABX			       
			CLR	$08,X		       
			CLRB			       
			TST	,X		       
			BNE	Z879A		       
			COM	$08,X		       
Z879A			PSHX			       
			LDX	M0079		       
			LDAA	,X		       
			PULX			       
			BEQ	Z87B4		       
			TST	,X		       
			BEQ	Z87AC		       
			CMPA	$08,X		       
			BCS	Z87B4		       
			BRA	Z87B0		       
Z87AC			CMPA	$08,X		       
			BHI	Z87B4		       
Z87B0			STAA	$08,X		       
			STAB	M007B		       
Z87B4			PSHX			       
			LDX	M0079		       
			INX			       
			INX			       
			STX	M0079		       
			PULX			       
			INCB			       
			CMPB	M006C		       
			BNE	Z879A		       
			LDX	M00E1		       
			LDAB	M007B		       
			ASLB			       
			ABX			       
			LDD	,X		       
			RTS			       
Z87CA			LDAB	M00E0		       
			LDX	#M7EF1		       
			ABX			       
			LDAB	,X		       
			BMI	Z87F7		       
			PSHX			       
			LDX	#M00E7		       
			ABX			       
			STX	M0077		       
			PULX			       
			LDAB	$08,X		       
			BMI	Z87F7		       
			LDX	#M00E7		       
			ABX			       
			STX	M0079		       
			LDX	#M7F09		       
			LDAB	M00E0		       
			ASLB			       
			ABX			       
			LDD	,X		       
			STD	M00E3		       
			LDD	$10,X		       
			STD	M00E5		       
			BRA	Z8802		       
Z87F7			LDX	#M00E7		       
			STX	M0077		       
			STX	M0079		       
			STX	M00E3		       
			STX	M00E5		       
Z8802			RTS			       
Z8803			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	Z882F		       
			PSHB			       
			LDAA	M00E0		       
			LDAB	#$0C		       
			MUL			       
			LDX	#M6DD7		       
			ABX			       
			PULB			       
			LDAA	$05,X		       
			CMPA	$04,X		       
			BCC	Z8825		       
			CMPB	$04,X		       
			BCC	Z882F		       
			CMPB	$05,X		       
			BLS	Z882F		       
			BRA	Z882D		       
Z8825			CMPB	$04,X		       
			BCS	Z882D		       
			CMPB	$05,X		       
			BLS	Z882F		       
Z882D			CLC			       
			RTS			       
Z882F			SEC			       
			RTS			       
Z8831			PSHA			       
			LDAA	M7772		       
			ANDA	#$04		       
			PULA			       
			BEQ	Z885D		       
			PSHB			       
			LDAB	#$0C		       
			MUL			       
			LDX	#M6DD7		       
			ABX			       
			PULB			       
			LDAA	$05,X		       
			CMPA	$04,X		       
			BCC	Z8853		       
			CMPB	$04,X		       
			BCC	Z885D		       
			CMPB	$05,X		       
			BLS	Z885D		       
			BRA	Z885B		       
Z8853			CMPB	$04,X		       
			BCS	Z885B		       
			CMPB	$05,X		       
			BLS	Z885D		       
Z885B			CLC			       
			RTS			       
Z885D			SEC			       
			RTS			       
Z885F			STAB	M00E0		       
			LDX	#M0041		       
			ABX			       
			LDAA	,X		       
			ANDA	#$80		       
			PSHX			       
			PSHA			       
			COMA			       
			ANDA	$08,X		       
			BEQ	Z88D4		       
			JSR	Z87CA		       
			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	Z887F		       
			TST	M6E38		       
			BNE	Z888B		       
Z887F			LDAA	M00E0		       
			JSR	Z9A2F		       
			TST	$3F,X		       
			BEQ	Z888B		       
			JMP	Z88D9		       
Z888B			LDX	#M7EF1		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			TAB			       
			LDX	#M7CE3		       
			ASLB			       
			ABX			       
Z8899			TIM	#$01,$01,X	       
			BEQ	Z88C3		       
			AIM	#$FE,RP5CR	       
			LDAB	#$08		       
			SEI			       
Z88A4			BRN	Z88A4		       
Z88A6			TST	OPZ_R1		       
			BMI	Z88A6		       
			STAB	OPZ_R0		       
Z88AE			BRN	Z88AE		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			CLR	$01,X		       
			PSHX			       
			PSHA			       
			JSR	Z8631		       
			PULA			       
			PSHA			       
			JSR	Z8664		       
			PULA			       
			PULX			       
Z88C3			INX			       
			INX			       
			PSHX			       
			LDX	#M7EF9		       
			LDAB	M00E0		       
			ABX			       
			CMPA	,X		       
			PULX			       
			BEQ	Z88D4		       
			INCA			       
			BRA	Z8899		       
Z88D4			PULA			       
			PULX			       
			STAA	$08,X		       
			RTS			       
Z88D9			LDAA	M00E0		       
			LDAB	M006C		       
			ASLB			       
			MUL			       
			ADDD	#M7F39		       
			XGDX			       
			TIM	#$01,$01,X	       
			BEQ	Z890C		       
			CLR	$01,X		       
			AIM	#$FE,RP5CR	       
			LDX	#M7EF1		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			LDAB	#$08		       
			SEI			       
Z88F8			BRN	Z88F8		       
Z88FA			TST	OPZ_R1		       
			BMI	Z88FA		       
			STAB	OPZ_R0		       
Z8902			BRN	Z8902		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			JSR	Z8631		       
Z890C			BRA	Z88D4		       
Z890E			STAB	M00DC		       
			LDX	#M793B		       
			ABX			       
			LDAB	,X		       
			PSHB			       
			LDAB	M7772		       
			BITB	#$04		       
			BNE	Z8921		       
			JMP	Z89A6		       
Z8921			PULB			       
			PSHA			       
			LDX	#M6DD7		       
			LDAA	#$0C		       
			MUL			       
			ABX			       
			PULA			       
			PSHX			       
			TST	$0B,X		       
			BEQ	Z895D		       
			LDAB	M6E37		       
			CMPB	#$01		       
			BNE	Z8943		       
			TAB			       
			ASLB			       
			LDX	#M7640		       
			ABX			       
			LDD	,X		       
			ASLB			       
			ASLB			       
			BRA	Z895E		       
Z8943			TAB			       
			CLRA			       
Z8945			SUBB	#$0C		       
			BMI	Z894E		       
			ADDA	M7F99		       
			BRA	Z8945		       
Z894E			ADDB	#$0C		       
			LDX	#M7F9A		       
			ASLB			       
			ABX			       
			ADDA	,X		       
			LDAB	$01,X		       
			ASLB			       
			ASLB			       
			BRA	Z895E		       
Z895D			CLRB			       
Z895E			SUBA	#$0D		       
			STD	M008E		       
			LDAB	M00DC		       
			LDX	#M791B		       
			ABX			       
			ADDA	,X		       
Z896A			BLT	Z8974		       
Z896C			CMPA	#$60		       
			BCS	Z8978		       
			SUBA	#$0C		       
			BRA	Z896C		       
Z8974			ADDA	#$0C		       
			BRA	Z896A		       
Z8978			STAA	M008E		       
			PULX			       
			LDAA	#$9F		       
			LDAB	M008E		       
			SBA			       
			LSRA			       
			LSRA			       
			LDAB	$06,X		       
			SUBB	#$07		       
			BPL	Z8997		       
			NEGB			       
			MUL			       
			LSRD			       
			LSRD			       
			STD	M00DC		       
			LDD	M008E		       
			SUBD	M00DC		       
			BPL	Z89A5		       
			CLRA			       
			BRA	Z89A5		       
Z8997			MUL			       
			LSRD			       
			LSRD			       
			STD	M00DC		       
			LDD	M008E		       
			ADDD	M00DC		       
			CMPA	#$60		       
			BCS	Z89A5		       
			CLRA			       
Z89A5			RTS			       
Z89A6			PULB			       
			TST	M7F99		       
			BEQ	Z89D9		       
			LDAB	M7789		       
			CMPB	#$02		       
			BEQ	Z89CD		       
			TAB			       
			CLRA			       
Z89B5			SUBB	#$0C		       
			BMI	Z89BE		       
			ADDA	M7F99		       
			BRA	Z89B5		       
Z89BE			ADDB	#$0C		       
			LDX	#M7F9A		       
			ASLB			       
			ABX			       
			ADDA	,X		       
			LDAB	$01,X		       
			ASLB			       
			ASLB			       
			BRA	Z89DA		       
Z89CD			TAB			       
			ASLB			       
			LDX	#M7640		       
			ABX			       
			LDD	,X		       
			ASLB			       
			ASLB			       
			BRA	Z89DA		       
Z89D9			CLRB			       
Z89DA			SUBA	#$0D		       
			STD	M008E		       
			LDAB	M00DC		       
			LDX	#M791B		       
			ABX			       
			ADDA	,X		       
Z89E6			BLT	Z89F0		       
Z89E8			CMPA	#$60		       
			BCS	Z89F4		       
			SUBA	#$0C		       
			BRA	Z89E8		       
Z89F0			ADDA	#$0C		       
			BRA	Z89E6		       
Z89F4			STAA	M008E		       
			LDD	M008E		       
			RTS			       
Z89F9			JSR	HI_CALL_17	       
			TSTB			       
			BEQ	Z8A08		       
			CLR	>M00CC		       
			CLR	>M0056		       
			CLR	>M0057		       
Z8A08			CMPB	#$03		       
			BCS	Z8A1C		       
			CMPB	#$04		       
			BEQ	Z8A1C		       
			LDAA	#$FF		       
			STAA	M7795		       
			CMPB	#$0A		       
			BCC	Z8A1C		       
			STAA	M7794		       
Z8A1C			LDAA	M7772		       
			JSR	JMPOFF1 	       
			FCB	$BB,$01,$15,$03,$9C,$08,$A2,$0A,$06,$0C,$07,$0D,$02
			FCB	$00		       
			JMP	Z8B9E		       
			JMP	Z8BB3		       
Z8A36			JMP	Z8BBB		       
			CMPA	#$12		       
			BCC	Z8AB1		       
			JSR	JMPOFFA 	       
			FCB	$46,$45,$27,$9A,$42,$41,$0C,$96,$95,$6A,$6E,$92,$91
			FCB	$90,$6F,$8E,$8D,$62    
			DECB			       
			TST	M7795		       
			BMI	Z8A60		       
			TSTB			       
			BNE	Z8A76		       
			JSR	ZB88D		       
			BRA	Z8A76		       
Z8A60			JSR	Z8D02		       
			TAB			       
Z8A64			JSR	ZB7C3		       
			BRA	Z8A36		       
			SUBB	#$01		       
			TST	M7795		       
			BMI	Z8A7D		       
			TSTB			       
			BNE	Z8A76		       
			JSR	ZB83F		       
Z8A76			LDAA	#$FF		       
			STAA	M7795		       
			BRA	Z8A36		       
Z8A7D			JSR	Z8CCE		       
			TAB			       
Z8A81			JSR	ZB784		       
			BRA	Z8A36		       
			ANDA	#$18		       
			BNE	Z8ADD		       
			TST	M7794		       
			BMI	Z8A9D		       
			CMPB	#$01		       
			BNE	Z8A96		       
			JSR	ZB8A7		       
Z8A96			LDAA	#$FF		       
			STAA	M7794		       
			BRA	Z8A36		       
Z8A9D			JSR	ZB931		       
			BCS	Z8AA9		       
			JSR	ZBC2A		       
			BCS	Z8A36		       
			BRA	Z8ADD		       
Z8AA9			TST	>M00CE		       
			BEQ	Z8A36		       
			CLR	>M00CE		       
Z8AB1			BRA	Z8ADD		       
			JSR	ZB8E3		       
			BRA	Z8AC7		       
			JSR	ZB862		       
			BRA	Z8AC7		       
			JSR	ZB884		       
			BRA	Z8AC7		       
			SUBB	#$03		       
			JSR	ZAF7B		       
Z8AC7			JMP	Z8BBB		       
			SUBB	#$08		       
			CMPA	#$07		       
			BCC	Z8ADD		       
			CLR	>M00A4		       
			JSR	JMPOFFA 	       
			FCB	$10,$0F,$98,$7E,$06,$08,$01
Z8ADD			JMP	Z8BC1		       
			JMP	Z8B8D		       
			JMP	Z8B79		       
			LDAA	M7788		       
			BEQ	Z8B3F		       
			CMPA	#$01		       
			BEQ	Z8B2C		       
			CMPA	#$02		       
			BHI	Z8ADD		       
			LDAA	M7774		       
			CMPA	#$1C		       
			BNE	Z8B27		       
			LDAA	M7789		       
			BEQ	Z8B27		       
			CMPA	#$02		       
			BEQ	Z8B22		       
			TST	M778C		       
			BEQ	Z8B10		       
			JSR	Z8C90		       
			LDAB	M7774		       
			BRA	Z8B6B		       
Z8B10			COMB			       
			ANDB	#$01		       
			LDAA	#$0A		       
			STAA	M00A7		       
			LDAA	M778A		       
			JSR	Z8D0C		       
			STAA	M778A		       
			BRA	Z8B3A		       
Z8B22			JSR	Z8C64		       
			BCS	Z8B3A		       
Z8B27			JSR	Z8C42		       
			BRA	Z8B3A		       
Z8B2C			LDAA	M7789		       
			PSHA			       
			JSR	Z8C06		       
			JSR	Z8BC2		       
			PULA			       
			JSR	Z8D48		       
Z8B3A			LDAB	M7774		       
			BRA	Z8B6B		       
Z8B3F			LDAA	M7772		       
			CMPA	#$01		       
			BEQ	Z8B5A		       
			LDAA	#$14		       
			STAA	M00A9		       
			LDAA	#$1E		       
			STAA	M00A7		       
			LDAA	M7774		       
			JSR	Z8CA9		       
			TAB			       
			BRA	Z8B6B		       
			JMP	Z8BBB		       
Z8B5A			LDAA	#$0A		       
			STAA	M00A7		       
			CLR	>M00A9		       
			LDAA	M7774		       
			JSR	Z8CA9		       
			TAB			       
			JSR	Z8DB2		       
Z8B6B			JSR	ZB1DD		       
			BRA	Z8BBB		       
			JSR	Z8CE7		       
			TAB			       
			JSR	ZB784		       
			BRA	Z8BBB		       
Z8B79			LDAA	#$35		       
			STAA	M00A7		       
			LDAA	#$28		       
			STAA	M00A9		       
			LDAA	M7774		       
			JSR	Z8CA9		       
			TAB			       
			JSR	Z8D1D		       
			BRA	Z8B6B		       
Z8B8D			LDAA	#$3E		       
			STAA	M00A7		       
			LDAA	#$3C		       
			STAA	M00A9		       
			LDAA	M7774		       
			JSR	Z8CA9		       
			TAB			       
			BRA	Z8B6B		       
Z8B9E			TST	M7790		       
			BEQ	Z8BAE		       
			CMPB	#$0C		       
			BCC	Z8BC1		       
			SUBB	#$0A		       
			JSR	Z8DCD		       
			BRA	Z8BBB		       
Z8BAE			JSR	ZAB9E		       
			BRA	Z8BBB		       
Z8BB3			COM	M7790		       
			BEQ	Z8BBB		       
			CLR	>M009A		       
Z8BBB			JSR	ZC95A		       
			JSR	ZC972		       
Z8BC1			RTS			       
Z8BC2			LDAA	M7774		       
			CMPA	#$04		       
			BEQ	Z8BED		       
			CMPA	#$15		       
			BNE	Z8C05		       
			LDAA	M7789		       
			TSTB			       
			BEQ	Z8BD9		       
			CMPA	#$08		       
			BNE	Z8C05		       
			BRA	Z8BDD		       
Z8BD9			CMPA	#$0A		       
			BNE	Z8C05		       
Z8BDD			TST	M756C		       
			BNE	Z8C05		       
			JSR	Z8C06		       
			JSR	Z8C06		       
			JSR	Z8C06		       
			BRA	Z8C05		       
Z8BED			PSHB			       
			JSR	ZB6A8		       
			TSTB			       
			BNE	Z8C04		       
			TAB			       
			LDAA	#$05		       
			JSR	ZAF64		       
			TST	$57,X		       
			BNE	Z8C04		       
			PULB			       
			JSR	Z8C06		       
			BRA	Z8C05		       
Z8C04			PULB			       
Z8C05			RTS			       
Z8C06			LDAA	M7789		       
			CMPA	M778D		       
			BHI	Z8C1C		       
			TSTB			       
			BNE	Z8C16		       
			DECA			       
			BPL	Z8C3E		       
			BRA	Z8C1C		       
Z8C16			INCA			       
			CMPA	M778D		       
			BLS	Z8C3E		       
Z8C1C			CLR	M7788		       
			CLR	M7789		       
			LDAA	#$01		       
			STAA	M00A4		       
			LDAA	M7774		       
			CMPA	#$19		       
			BCS	Z8C41		       
			CMPA	#$1C		       
			BCC	Z8C41		       
			PSHB			       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			JSR	Z91FE		       
			PULB			       
			BRA	Z8C41		       
Z8C3E			STAA	M7789		       
Z8C41			RTS			       
Z8C42			LDAA	M778A		       
			CMPA	M778E		       
			BHI	Z8C58		       
			TSTB			       
			BNE	Z8C52		       
			DECA			       
			BPL	Z8C60		       
			BRA	Z8C58		       
Z8C52			INCA			       
			CMPA	M778E		       
			BLS	Z8C60		       
Z8C58			LDAA	#$01		       
			STAA	M7788		       
			STAA	M00A4		       
			CLRA			       
Z8C60			STAA	M778A		       
			RTS			       
Z8C64			PSHB			       
			LDX	#M7CE3		       
			LDAB	#$08		       
Z8C6A			TIM	#$02,$01,X	       
			BNE	Z8C86		       
			INX			       
			INX			       
			DECB			       
			BNE	Z8C6A		       
			LDX	#M7F39		       
			LDAB	M006C		       
Z8C79			TIM	#$02,$01,X	       
			BNE	Z8C86		       
			INX			       
			INX			       
			DECB			       
			BNE	Z8C79		       
			CLC			       
			BRA	Z8C8E		       
Z8C86			LDAA	,X		       
			ANDA	#$7F		       
			STAA	M778A		       
			SEC			       
Z8C8E			PULB			       
			RTS			       
Z8C90			LDAA	M778F		       
			TSTB			       
			BEQ	Z8C9E		       
			INCA			       
			CMPA	#$0C		       
			BCS	Z8CA5		       
			CLRA			       
			BRA	Z8CA5		       
Z8C9E			DECA			       
			CMPA	#$0C		       
			BCS	Z8CA5		       
			LDAA	#$0B		       
Z8CA5			STAA	M778F		       
			RTS			       
Z8CA9			CMPA	M00A7		       
			BHI	Z8CC2		       
			TSTB			       
			BNE	Z8CC6		       
			DECA			       
			TST	>M00A9		       
			BEQ	Z8CBE		       
			CMPA	M00A9		       
			BCC	Z8CCD		       
			LDAA	M00A9		       
			BRA	Z8CCD		       
Z8CBE			CMPA	M00A7		       
			BCS	Z8CCD		       
Z8CC2			LDAA	M00A9		       
			BRA	Z8CCD		       
Z8CC6			INCA			       
			CMPA	M00A7		       
			BLS	Z8CCD		       
			LDAA	M00A7		       
Z8CCD			RTS			       
Z8CCE			LDAA	M7773		       
			TSTB			       
			BEQ	Z8CD7		       
			DECA			       
			BRA	Z8CD8		       
Z8CD7			INCA			       
Z8CD8			ANDA	#$1F		       
			LDAB	M7773		       
			ANDB	#$E0		       
			ABA			       
			CMPA	#$A0		       
			BCS	Z8CE6		       
			LDAA	#$80		       
Z8CE6			RTS			       
Z8CE7			LDAA	M7773		       
			TSTB			       
			BNE	Z8CF9		       
			SUBA	#$20		       
			CMPA	#$A0		       
			BCS	Z8D01		       
			ANDA	#$1F		       
			ADDA	#$80		       
			BRA	Z8D01		       
Z8CF9			ADDA	#$20		       
			CMPA	#$A0		       
			BCS	Z8D01		       
			ANDA	#$1F		       
Z8D01			RTS			       
Z8D02			LDAA	#$17		       
			STAA	M00A7		       
			LDAA	M7779		       
			JMP	Z8D0C		       
Z8D0C			TSTB			       
			BEQ	Z8D16		       
			DECA			       
			BPL	Z8D1C		       
			LDAA	M00A7		       
			BRA	Z8D1C		       
Z8D16			INCA			       
			CMPA	M00A7		       
			BLS	Z8D1C		       
			CLRA			       
Z8D1C			RTS			       
Z8D1D			CMPB	#$33		       
			BNE	Z8D2E		       
			LDAA	M778C		       
			ADDA	#$02		       
			CMPA	#$0A		       
			BCS	Z8D44		       
			LDAA	#$09		       
			BRA	Z8D44		       
Z8D2E			CMPB	#$35		       
			BNE	Z8D35		       
			CLRA			       
			BRA	Z8D44		       
Z8D35			LDAA	M7774		       
			CMPA	#$33		       
			BNE	Z8D47		       
			LDAA	M778C		       
			SUBA	#$02		       
			BPL	Z8D44		       
			CLRA			       
Z8D44			STAA	M778C		       
Z8D47			RTS			       
Z8D48			PSHB			       
			TST	M7788		       
			BEQ	Z8D7F		       
			LDAB	M7774		       
			CMPB	#$03		       
			BNE	Z8D8D		       
			CMPA	#$01		       
			BNE	Z8D6B		       
			LDAA	M7789		       
			BEQ	Z8D81		       
			LDAA	M778C		       
			CMPA	#$05		       
			BCC	Z8D81		       
			DECA			       
			BPL	Z8D7C		       
			CLRA			       
			BRA	Z8D7C		       
Z8D6B			LDAA	M7789		       
			BEQ	Z8D81		       
			CMPA	#$01		       
			BNE	Z8D84		       
			LDAA	M778C		       
			CMPA	#$04		       
			BCC	Z8D81		       
			INCA			       
Z8D7C			STAA	M778C		       
Z8D7F			PULB			       
			RTS			       
Z8D81			CLRA			       
			BRA	Z8D7C		       
Z8D84			LDAA	M778C		       
			CMPA	#$04		       
			BCS	Z8D7F		       
			BRA	Z8D81		       
Z8D8D			CMPB	#$04		       
			BNE	Z8DA6		       
			LDAA	M7789		       
			BEQ	Z8D81		       
			CMPA	#$03		       
			BEQ	Z8D81		       
			CMPA	#$06		       
			BEQ	Z8D81		       
			CMPA	#$09		       
			BEQ	Z8D81		       
			LDAA	#$01		       
			BRA	Z8D7C		       
Z8DA6			CMPB	#$07		       
			BNE	Z8DAC		       
			BRA	Z8D84		       
Z8DAC			CMPB	#$09		       
			BNE	Z8D7F		       
			BRA	Z8D84		       
Z8DB2			TSTB			       
			BEQ	Z8DC8		       
			CMPB	#$05		       
			BEQ	Z8DC1		       
			CMPB	#$06		       
			BEQ	Z8DC1		       
			CMPB	#$08		       
			BNE	Z8DCC		       
Z8DC1			LDAA	M778C		       
			CMPA	#$04		       
			BCS	Z8DCC		       
Z8DC8			CLRA			       
			STAA	M778C		       
Z8DCC			RTS			       
Z8DCD			CMPA	#$09		       
			BEQ	Z8DD5		       
			CMPA	#$11		       
			BNE	Z8DD8		       
Z8DD5			JMP	Z8F10		       
Z8DD8			CMPA	#$07		       
			BCC	Z8DE6		       
			JSR	JMPOFFA 	       
			FCB	$0B,$58,$05,$04,$4B,$D7,$02
Z8DE6			RTS			       
			JMP	Z8EF6		       
			LDAA	M776B		       
			ANDA	#$F7		       
			STAA	M776B		       
			LDAA	M7774		       
			CMPA	#$1F		       
			BNE	Z8DFC		       
			JMP	Z8EB7		       
Z8DFC			CMPA	#$1B		       
			BNE	Z8E09		       
			LDAA	M7788		       
			CMPA	#$02		       
			BNE	Z8DE6		       
			BRA	Z8E64		       
Z8E09			CMPA	#$1C		       
			BNE	Z8DE6		       
			LDAA	M7788		       
			CMPA	#$02		       
			BNE	Z8DE6		       
			LDAA	M7789		       
			CMPA	#$01		       
			BEQ	Z8E1F		       
			CMPA	#$03		       
			BNE	Z8E89		       
Z8E1F			LDAA	M778A		       
			CMPA	#$01		       
			BCS	Z8E2A		       
			CMPA	#$05		       
			BCS	Z8E89		       
Z8E2A			CLRA			       
			JMP	Z8F03		       
			LDAA	M7774		       
			CMPA	#$3C		       
			BNE	Z8DE6		       
			JMP	Z8EF6		       
			LDAA	M7774		       
			BEQ	Z8E5F		       
			CMPA	#$0B		       
			BCC	Z8DE6		       
			CMPA	#$03		       
			BCS	Z8DE6		       
			BNE	Z8E69		       
			LDAA	M7788		       
			BEQ	Z8DE6		       
			CMPA	#$01		       
			BNE	Z8DE6		       
			LDAA	M7789		       
			BEQ	Z8E5F		       
			CMPA	#$01		       
			BEQ	Z8E5C		       
			JMP	Z8EF6		       
Z8E5C			JMP	Z8F0C		       
Z8E5F			LDAA	#$04		       
			JMP	Z8EF8		       
Z8E64			LDAA	#$03		       
			JMP	Z8EF8		       
Z8E69			CMPA	#$04		       
			BNE	Z8E8D		       
			LDAA	M7788		       
			CMPA	#$01		       
			BNE	Z8EA2		       
			LDAA	M7789		       
			BEQ	Z8E5F		       
			CMPA	#$03		       
			BEQ	Z8E5F		       
			CMPA	#$06		       
			BEQ	Z8E5F		       
			CMPA	#$09		       
			BEQ	Z8E5F		       
			LDAA	#$05		       
			BRA	Z8EF8		       
Z8E89			LDAA	#$01		       
			BRA	Z8EF8		       
Z8E8D			CMPA	#$07		       
			BCS	Z8EF6		       
			BEQ	Z8E9B		       
			CMPA	#$09		       
			BCS	Z8EF6		       
			BEQ	Z8E9B		       
			BHI	Z8EA5		       
Z8E9B			LDAA	M7788		       
			CMPA	#$01		       
			BEQ	Z8EF6		       
Z8EA2			JMP	Z8DE6		       
Z8EA5			LDAA	M7788		       
			CMPA	#$01		       
			BNE	Z8EA2		       
			LDAA	M7789		       
			CMPA	#$0F		       
			BNE	Z8EA2		       
Z8EB3			LDAA	#$09		       
			BRA	Z8EF8		       
Z8EB7			LDAA	#$0F		       
			BRA	Z8EF8		       
			LDAA	M7774		       
			CMPA	#$28		       
			BEQ	Z8EA2		       
			CMPA	#$34		       
			BEQ	Z8EA2		       
			CMPA	#$36		       
			BCC	Z8EA2		       
			CMPA	#$35		       
			BEQ	Z8EB3		       
			CMPA	#$33		       
			BNE	Z8EF6		       
			LDAA	M6E37		       
			CMPA	#$03		       
			BCS	Z8EDD		       
			CMPA	#$07		       
			BCS	Z8EB3		       
Z8EDD			LDAA	M778C		       
			BEQ	Z8EEE		       
			CMPA	#$02		       
			BNE	Z8EB3		       
			TSTB			       
			BNE	Z8EB3		       
			DEC	M778C		       
			BRA	Z8EB3		       
Z8EEE			TSTB			       
			BEQ	Z8EB3		       
			INC	M778C		       
			BRA	Z8EB3		       
Z8EF6			LDAA	#$07		       
Z8EF8			STAA	M00A7		       
			CLR	>M00A9		       
			LDAA	M778C		       
			JSR	Z8CA9		       
Z8F03			STAA	M778C		       
			LDAB	M7774		       
			JMP	ZB1DD		       
Z8F0C			LDAA	#$08		       
			BRA	Z8EF8		       
Z8F10			LDAA	#$01		       
			STAA	M00A7		       
			CLR	>M00A9		       
			LDAA	M0059		       
			JSR	Z8CA9		       
			STAA	M0059		       
			RTS			       
Z8F1F			LDAA	#$12		       
			STAA	TCSR3		       
			LDAA	TCSR1		       
			PSHA			       
			AIM	#$F7,TCSR1	       
			LDAA	TCSR2		       
			PSHA			       
			AIM	#$F7,TCSR2	       
			LDAA	RP5CR		       
			PSHA			       
			AIM	#$FE,RP5CR	       
			LDAA	XROM		       
			PSHA			       
			CLI			       
			COM	>M006D		       
			JSR	ZEC17		       
			JSR	ZE8D0		       
			JSR	ZABC7		       
			TST	>M006D		       
			BPL	Z8F58		       
			JSR	ZA390		       
			JSR	ZAAF7		       
			JSR	ZAA1A		       
			JSR	ZA538		       
			BRA	Z8F78		       
Z8F58			JSR	ZA64D		       
			LDAA	M776B		       
			ANDA	#$02		       
			BEQ	Z8F6F		       
			LDAA	M7767		       
			BEQ	Z8F6F		       
			ANDA	#$03		       
			DECA			       
			STAA	M7767		       
			BRA	Z8F75		       
Z8F6F			JSR	ZECFE		       
			JSR	ZA68F		       
Z8F75			JSR	ZA94B		       
Z8F78			SEI			       
Z8F79			BRN	Z8F79		       
			PULA			       
			STAA	XROM		       
			PULA			       
			STAA	RP5CR		       
			PULA			       
			STAA	TCSR2		       
			PULA			       
			STAA	TCSR1		       
			OIM	#$40,TCSR3	       
			RTS			       
Z8F8B			LDAA	RP5CR		       
			PSHA			       
			AIM	#$FE,RP5CR	       
			LDAA	TCSR3		       
			PSHA			       
			LDAA	TCSR2		       
			PSHA			       
			AIM	#$F7,TCSR1	       
			AIM	#$F7,TCSR2	       
			AIM	#$BF,TCSR3	       
			LDD	FRCH		       
			ADDD	#M373B		       
			STD	OCR1H		       
			CLI			       
			PULB			       
			ROLB			       
			ROLB			       
			BCS	Z8FB6		       
			ROLB			       
			BCS	Z8FB2		       
			BRA	Z8FEC		       
Z8FB2			NOP			       
			NOP			       
			BRA	Z8FDF		       
Z8FB6			LDAA	M776B		       
			BITA	#$01		       
			BEQ	Z8FEC		       
			LDAA	XROM		       
			PSHA			       
			LDX	M0077		       
			PSHX			       
			LDX	M0079		       
			PSHX			       
			LDAA	M007B		       
			PSHA			       
			JSR	ZEAE6		       
			PULA			       
			STAA	M007B		       
			PULX			       
			STX	M0079		       
			PULX			       
			STX	M0077		       
			PULA			       
			STAA	XROM		       
			LDAA	M776B		       
			BITA	#$01		       
			BEQ	Z8FEC		       
Z8FDF			SEI			       
			OIM	#$08,TCSR1	       
Z8FE3			BRN	Z8FE3		       
			PULA			       
			STAA	TCSR3		       
			PULA			       
			STAA	RP5CR		       
			RTS			       
Z8FEC			SEI			       
Z8FED			BRN	Z8FED		       
			PULA			       
			STAA	TCSR3		       
			PULA			       
			STAA	RP5CR		       
			RTS			       
Z8FF6			LDAA	TCSR3		       
			PSHA			       
			AIM	#$BF,TCSR3	       
			AIM	#$FE,RP5CR	       
			CLI			       
			LDAB	OPZ_R1		       
			BITB	#$20		       
			BEQ	Z9081		       
			ANDB	#$1C		       
			LSRB			       
			LSRB			       
			TST	>M00EF		       
			BEQ	Z901F		       
			PSHB			       
			TBA			       
			LDAB	#$01		       
Z9014			DECA			       
			BMI	Z901A		       
			ASLB			       
			BRA	Z9014		       
Z901A			ANDB	M00EF		       
			BNE	Z9026		       
			PULB			       
Z901F			PSHB			       
			JSR	Z91B0		       
			PULB			       
			BRA	Z9049		       
Z9026			COMB			       
			ANDB	M00EF		       
			STAB	M00EF		       
			PULB			       
			PSHB			       
			JSR	Z91B0		       
			PULB			       
			ORAB	#$78		       
			LDAA	#$08		       
			SEI			       
Z9036			BRN	Z9036		       
Z9038			TST	OPZ_R1		       
			BMI	Z9038		       
			STAA	OPZ_R0		       
Z9040			BRN	Z9040		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
			ANDB	#$07		       
Z9049			LDX	#M7913		       
			ABX			       
			LDAA	,X		       
			ANDA	#$BF		       
			ADDB	#$20		       
			SEI			       
Z9054			BRN	Z9054		       
Z9056			TST	OPZ_R1		       
			BMI	Z9056		       
			STAB	OPZ_R0		       
Z905E			BRN	Z905E		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			LDAB	#$40		       
Z9067			LDAA	#$14		       
			SEI			       
Z906A			BRN	Z906A		       
Z906C			TST	OPZ_R1		       
			BMI	Z906C		       
			STAA	OPZ_R0		       
Z9074			BRN	Z9074		       
			NOP			       
			STAB	OPZ_R1		       
			OIM	#$01,RP5CR	       
			PULA			       
			STAA	TCSR3		       
			RTS			       
Z9081			LDAB	#$30		       
			BRA	Z9067		       
Z9085			TST	OPZ_R1		       
			BMI	Z9085		       
			RTS			       
Z908B			LDAB	#$A5		       
			MUL			       
			ASLD			       
			ASLD			       
			RTS			       
Z9091			LDAB	#$C8		       
			MUL			       
			RTS			       
			LDAB	#$8E		       
			MUL			       
			RTS			       
			LDAB	#$26		       
			MUL			       
			RTS			       
Z909D			CLRB			       
			LDAA	#$09		       
			JSR	Z90CB		       
			LDAA	#$0F		       
			JSR	Z90C8		       
			LDAA	#$1C		       
			JSR	Z90C8		       
			LDAA	#$1E		       
			JSR	Z90C8		       
			LDAA	#$0A		       
			LDAB	#$04		       
			JSR	Z90C8		       
			LDAA	#$14		       
			LDAB	#$70		       
			JSR	Z90C8		       
			LDAA	#$15		       
			LDAB	#$01		       
			JSR	Z90C8		       
			RTS			       
Z90C8			JSR	Z9085		       
Z90CB			STAA	OPZ_R0		       
Z90CE			BRN	Z90CE		       
			NOP			       
			STAB	OPZ_R1		       
			RTS			       
HI_CALL_01		PSHA			       
			PSHB			       
			PSHX			       
			AIM	#$F7,TCSR1	       
			JSR	HI_CALL_16	       
			CLRA			       
			CLRB			       
			LDX	#M7CE3		       
Z90E3			STD	,X		       
			INX			       
			INX			       
			CPX	#M7CF3		       
			BNE	Z90E3		       
			LDD	#M1700		       
Z90EF			STD	,X		       
			INX			       
			INX			       
			CPX	#M7D13		       
			BNE	Z90EF		       
			LDD	#M1700		       
			LDX	#M7F29		       
Z90FE			STD	,X		       
			INX			       
			INX			       
			CPX	#M7F39		       
			BNE	Z90FE		       
			CLRA			       
			CLRB			       
			LDX	#M7F39		       
Z910C			STD	,X		       
			INX			       
			INX			       
			CPX	#M7F89		       
			BNE	Z910C		       
			LDX	#M00E7		       
			LDAA	#$FF		       
Z911A			STAA	,X		       
			INX			       
			CPX	#M00EF		       
			BNE	Z911A		       
			JSR	Z993C		       
			JSR	Z995A		       
			PULX			       
			PULB			       
			PULA			       
			RTS			       
HI_CALL_00		PSHA			       
			PSHB			       
			PSHX			       
			AIM	#$FE,RP5CR	       
			AIM	#$F7,TCSR1	       
			CLR	>M00EF		       
			BSR	Z915E		       
			LDAA	#$08		       
			CLRB			       
Z913D			SEI			       
Z913E			BRN	Z913E		       
			JSR	Z9085		       
			STAA	OPZ_R0		       
Z9146			BRN	Z9146		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
			INCB			       
			CMPB	#$08		       
			BNE	Z913D		       
			LDAA	#$01		       
			STAA	M777D		       
			OIM	#$01,RP5CR	       
			PULX			       
			PULB			       
			PULA			       
			RTS			       
Z915E			CLRB			       
Z915F			PSHB			       
			BSR	Z9169		       
			PULB			       
			INCB			       
			CMPB	#$08		       
			BNE	Z915F		       
			RTS			       
Z9169			PSHB			       
			CLRA			       
			ADDB	#$E0		       
Z916D			PSHA			       
			LDAA	#$FE		       
			SEI			       
Z9171			TST	OPZ_R1		       
			BMI	Z9171		       
			STAB	OPZ_R0		       
Z9179			BRN	Z9179		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			ADDB	#$08		       
			PULA			       
			INCA			       
			CMPA	#$04		       
			BNE	Z916D		       
			PULB			       
			CLRA			       
Z918A			PSHA			       
			PSHB			       
			LDX	#M77EE		       
			ABX			       
			LDAA	,X		       
			ANDA	#$E8		       
			ADDB	#$C0		       
			SEI			       
Z9197			TST	OPZ_R1		       
			BMI	Z9197		       
			STAB	OPZ_R0		       
Z919F			BRN	Z919F		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			PULB			       
			ADDB	#$08		       
			PULA			       
			INCA			       
			CMPA	#$04		       
			BNE	Z918A		       
			RTS			       
Z91B0			TBA			       
			PSHA			       
			CLRB			       
Z91B3			PSHB			       
			LDX	#M77CE		       
			TAB			       
			ABX			       
			LDAB	,X		       
			PSHA			       
			ADDA	#$E0		       
			SEI			       
Z91BF			TST	OPZ_R1		       
			BMI	Z91BF		       
			STAA	OPZ_R0		       
Z91C7			BRN	Z91C7		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
			PULA			       
			ADDA	#$08		       
			PULB			       
			INCB			       
			CMPB	#$04		       
			BNE	Z91B3		       
			PULA			       
			CLRB			       
Z91D9			PSHB			       
			LDX	#M77EE		       
			TAB			       
			ABX			       
			LDAB	,X		       
			PSHA			       
			ADDA	#$C0		       
			SEI			       
Z91E5			TST	OPZ_R1		       
			BMI	Z91E5		       
			STAA	OPZ_R0		       
Z91ED			BRN	Z91ED		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
			PULA			       
			ADDA	#$08		       
			PULB			       
			INCB			       
			CMPB	#$04		       
			BNE	Z91D9		       
			RTS			       
Z91FE			PSHA			       
			PSHB			       
			PSHX			       
			JSR	HI_CALL_0F	       
			BRA	Z9212		       
HI_CALL_05		PSHA			       
			PSHB			       
			PSHX			       
			JSR	HI_CALL_0F	       
			LDX	#M9EEC		       
			JSR	Z92DB		       
Z9212			LDX	#M9E95		       
			JSR	Z92DB		       
			LDX	#M9EB9		       
			JSR	Z92DB		       
			LDX	#M9ECC		       
			JSR	Z92DB		       
			LDX	#M9E8A		       
			JSR	Z92DB		       
			LDX	#M9A41		       
			JSR	Z92E3		       
			LDX	#M9F00		       
			JSR	Z92DB		       
			LDX	#M9DD7		       
			JSR	Z92DB		       
			LDX	#M9E58		       
			JSR	Z92DB		       
			LDX	#M9FEC		       
			JSR	Z92DB		       
			LDX	#M9D68		       
			JSR	Z92DB		       
			LDX	#M9E6D		       
			JSR	Z92DB		       
			LDX	#M9D91		       
			JSR	Z92E3		       
			JSR	Z9A87		       
			LDX	#M9B02		       
			JSR	Z92E3		       
			LDX	#M9C35		       
			JSR	Z92E3		       
			LDX	#M9AC2		       
			JSR	Z92E3		       
			JSR	Z9C76		       
			LDX	#M9D12		       
			JSR	Z92E3		       
			LDX	#MA049		       
			JSR	Z92E3		       
			LDX	#MA01B		       
			JSR	Z92E3		       
			LDX	#MA0D1		       
			JSR	Z92E3		       
			LDX	#MA0F1		       
			JSR	Z92E3		       
			LDX	#MA100		       
			JSR	Z92E3		       
			LDX	#MA110		       
			JSR	Z92E3		       
			JSR	HI_CALL_18	       
			JSR	HI_CALL_11	       
			LDAA	M777D		       
			CMPA	#$01		       
			BNE	Z92B2		       
			LDX	#M9EEC		       
			JSR	Z92DB		       
			CLR	M777D		       
Z92B2			PULX			       
			PULB			       
			PULA			       
			RTS			       
			LDX	#M9D91		       
			JSR	Z92E3		       
			JSR	Z9A87		       
			LDX	#M9B02		       
			JSR	Z92E3		       
			LDX	#M9C35		       
			JSR	Z92E3		       
			LDX	#M9AC2		       
			JSR	Z92E3		       
			JSR	Z9C76		       
			LDX	#M9D12		       
			JSR	Z92E3		       
			RTS			       
Z92DB			STX	M0079		       
			LDX	#Z9306		       
			JMP	Z92E8		       
Z92E3			STX	M0079		       
			JMP	Z9306		       
Z92E8			LDD	M006F		       
			PSHA			       
			PSHB			       
			CLRA			       
			CLRB			       
			STD	M006F		       
Z92F0			PSHX			       
			JSR	,X		       
			PULX			       
			INC	>M006F		       
			LDAB	#$0D		       
			ADDB	M0070		       
			STAB	M0070		       
			CMPB	#$34		       
			BNE	Z92F0		       
			PULB			       
			PULA			       
			STD	M006F		       
			RTS			       
Z9306			FCB	$7F,$00,$73,$CC,$00,$00,$DD,$74,$7F,$00,$76
Z9311			LDX	#M00F6		       
			LDAB	M0073		       
			CMPB	#$08		       
			BEQ	Z9337		       
			ABX			       
			LDAB	,X		       
			STAB	M007B		       
			BEQ	Z9325		       
			LDX	M0079		       
			JSR	,X		       
Z9325			CLRA			       
			LDAB	#$6E		       
			ADDD	M0074		       
			STD	M0074		       
			LDAA	M0076		       
			CMPA	#$08		       
			BEQ	Z9337		       
			INC	>M0073		       
			BRA	Z9311		       
Z9337			RTS			       
HI_CALL_0F		LDAA	TCSR1		       
			PSHA			       
			AIM	#$F7,TCSR1	       
			LDX	#M00F6		       
			STX	M0079		       
			LDAB	M7772		       
			ANDB	#$04		       
			BNE	Z937F		       
			CLRB			       
Z934B			CMPB	#$01		       
			BNE	Z935D		       
			LDAA	M7774		       
			CMPA	#$1A		       
			BNE	Z9374		       
			TST	M7788		       
			BEQ	Z9374		       
			BRA	Z936C		       
Z935D			TSTB			       
			BNE	Z9374		       
			LDAA	M7774		       
			CMPA	#$1A		       
			BNE	Z9370		       
			TST	M7788		       
			BEQ	Z9370		       
Z936C			LDAA	#$04		       
			BRA	Z9375		       
Z9370			LDAA	#$08		       
			BRA	Z9375		       
Z9374			CLRA			       
Z9375			STAA	,X		       
			INX			       
			INCB			       
			CMPB	#$08		       
			BNE	Z934B		       
			BRA	Z9382		       
Z937F			JSR	Z95F5		       
Z9382			LDAA	#$FF		       
			LDAB	#$08		       
			LDX	#M7942		       
Z9389			STAA	,X		       
			DEX			       
			DECB			       
			BNE	Z9389		       
			LDX	#M793B		       
			STX	M0079		       
			LDX	#M00F6		       
			CLRB			       
Z9398			LDAA	,X		       
			PSHX			       
			LDX	M0079		       
			TSTA			       
			BEQ	Z93A8		       
Z93A0			STAB	,X		       
			INX			       
			DECA			       
			BNE	Z93A0		       
			BRA	Z93A8		       
Z93A8			INCB			       
			STX	M0079		       
			CPX	#M7943		       
			PULX			       
			BEQ	Z93B7		       
			INX			       
			CPX	#M00FE		       
			BNE	Z9398		       
Z93B7			LDAB	#$FF		       
			STAB	M784E		       
			STAB	M784F		       
			CLRB			       
Z93C0			PSHB			       
			LDX	#M00F6		       
			ABX			       
			TST	,X		       
			BEQ	Z93DB		       
			TST	M784E		       
			BPL	Z93D3		       
			STAB	M784E		       
			BRA	Z93DB		       
Z93D3			TST	M784F		       
			BPL	Z93DB		       
			STAB	M784F		       
Z93DB			PULB			       
			INCB			       
			CMPB	#$08		       
			BNE	Z93C0		       
			LDX	#M7846		       
			STX	M0079		       
			CLRB			       
Z93E7			PSHB			       
			LDX	#M793B		       
			ABX			       
			LDAB	,X		       
			BMI	Z9410		       
			LDX	#M6DD7		       
			LDAA	#$0C		       
			MUL			       
			ABX			       
			LDAB	$0A,X		       
			BEQ	Z9410		       
			CMPB	#$03		       
			BCC	Z9413		       
			PSHB			       
			DECB			       
			LDX	#M784E		       
			ABX			       
			LDAA	,X		       
			BMI	Z940F		       
			ASLA			       
			ASLA			       
			PULB			       
			ABA			       
			BRA	Z9414		       
Z940F			PULB			       
Z9410			CLRA			       
			BRA	Z9414		       
Z9413			TBA			       
Z9414			LDX	M0079		       
			STAA	,X		       
			INX			       
			STX	M0079		       
			PULB			       
			INCB			       
			CMPB	#$08		       
			BNE	Z93E7		       
			LDAB	#$FF		       
			STAB	M7850		       
			STAB	M7851		       
			CLRB			       
Z942A			PSHB			       
			LDX	#M7846		       
			ABX			       
			LDAA	,X		       
			ANDA	#$03		       
			BEQ	Z944F		       
			CMPA	#$03		       
			BCC	Z944F		       
			CMPA	#$01		       
			BNE	Z9447		       
			TST	M7850		       
			BPL	Z944F		       
			STAB	M7850		       
			BRA	Z944F		       
Z9447			TST	M7851		       
			BPL	Z944F		       
			STAB	M7851		       
Z944F			PULB			       
			INCB			       
			CMPB	#$08		       
			BNE	Z942A		       
			JSR	Z95C4		       
			LDAB	M7772		       
			ANDB	#$04		       
			BNE	Z94A9		       
			LDAA	M7774		       
			CMPA	#$1A		       
			BNE	Z9481		       
			TST	M7788		       
			BEQ	Z9481		       
			LDAA	#$04		       
			LDX	#M793B		       
Z9470			DEX			       
			STAA	,X		       
			CPX	#M7933		       
			BEQ	Z948E		       
			CPX	#M7937		       
			BHI	Z9470		       
			LDAA	#$02		       
			BRA	Z9470		       
Z9481			LDAA	#$07		       
			LDX	#M793B		       
Z9486			DEX			       
			STAA	,X		       
			CPX	#M7933		       
			BNE	Z9486		       
Z948E			LDAA	#$01		       
			LDX	#M784E		       
Z9493			DEX			       
			STAA	,X		       
			CPX	#M7846		       
			BNE	Z9493		       
			CLR	M7850		       
			LDAA	#$FF		       
			STAA	M7851		       
			LDAA	#$08		       
			STAA	M006C		       
			BRA	Z94B0		       
Z94A9			LDAA	#$05		       
			STAA	M006C		       
			JSR	ZC7FF		       
Z94B0			JSR	Z98A1		       
			JSR	Z995A		       
			LDAA	TCSR3		       
			PSHA			       
			AIM	#$BF,TCSR3	       
			JSR	HI_CALL_15	       
			PULA			       
			STAA	TCSR3		       
			JSR	HI_CALL_03	       
			PULA			       
			STAA	TCSR1		       
			RTS			       
Z94C9			PSHA			       
			PSHB			       
			PSHX			       
			BRA	Z94D7		       
			PSHA			       
			PSHB			       
			PSHX			       
			LDX	#M9EEC		       
			JSR	Z9575		       
Z94D7			LDX	#M9E95		       
			JSR	Z9575		       
			LDX	#M9EB9		       
			JSR	Z9575		       
			LDX	#M9ECC		       
			JSR	Z9575		       
			LDX	#M9E8A		       
			JSR	Z9575		       
			LDX	#M9A41		       
			JSR	Z957D		       
			LDX	#M9F00		       
			JSR	Z9575		       
			LDX	#M9DD7		       
			JSR	Z9575		       
			LDX	#M9E58		       
			JSR	Z9575		       
			LDX	#M9FEC		       
			JSR	Z9575		       
			LDX	#M9D68		       
			JSR	Z9575		       
			LDX	#M9E6D		       
			JSR	Z9575		       
			LDX	#M9D91		       
			JSR	Z957D		       
			JSR	Z9A87		       
			LDX	#M9B02		       
			JSR	Z957D		       
			LDX	#M9C35		       
			JSR	Z957D		       
			LDX	#M9AC2		       
			JSR	Z957D		       
			JSR	Z9C76		       
			LDX	#M9D12		       
			JSR	Z957D		       
			LDX	#MA049		       
			JSR	Z957D		       
			LDX	#MA01B		       
			JSR	Z957D		       
			LDX	#MA0D1		       
			JSR	Z957D		       
			LDX	#MA0F1		       
			JSR	Z957D		       
			LDX	#MA100		       
			JSR	Z957D		       
			LDX	#MA110		       
			JSR	Z957D		       
			LDAA	M777D		       
			CMPA	#$01		       
			BNE	Z9571		       
			LDX	#M9EEC		       
			JSR	Z9575		       
			CLR	M777D		       
Z9571			PULX			       
			PULB			       
			PULA			       
			RTS			       
Z9575			STX	M0079		       
			LDX	#Z9582		       
			JMP	Z92E8		       
Z957D			STX	M0079		       
			JMP	Z9582		       
Z9582			LDAB	M0073		       
			LDX	#M7EF1		       
			ABX			       
			LDAA	,X		       
			STAA	M0076		       
			LDX	#M00F6		       
			LDAB	M0073		       
			ABX			       
			LDAB	,X		       
			STAB	M007B		       
			BEQ	Z95A3		       
			LDAA	M0073		       
			LDAB	#$6E		       
			MUL			       
			STD	M0074		       
			LDX	M0079		       
			JSR	,X		       
Z95A3			RTS			       
Z95A4			LDX	#M7EF1		       
			ABX			       
			LDAA	,X		       
			LDX	#M00F6		       
			ABX			       
			TAB			       
			LDAA	,X		       
			BEQ	Z95C3		       
Z95B3			PSHA			       
			PSHB			       
			JSR	Z9169		       
			PULB			       
			INCB			       
			PULA			       
			DECA			       
			BNE	Z95B3		       
			LDAA	#$01		       
			STAA	M777D		       
Z95C3			RTS			       
Z95C4			CLR	>M0076		       
Z95C7			JSR	Z9A1C		       
			LDAA	$09,X		       
			LDX	#M7933		       
			LDAB	M0076		       
			ABX			       
			ASLA			       
			CMPA	#$06		       
			BNE	Z95D9		       
			ORAA	#$01		       
Z95D9			STAA	,X		       
			INC	>M0076		       
			LDAB	M0076		       
			CMPB	#$08		       
			BNE	Z95C7		       
			RTS			       
Z95E5			JSR	Z95C4		       
			LDX	#M9A41		       
			JSR	Z92E3		       
			LDX	#M9F00		       
			JSR	Z92DB		       
			RTS			       
Z95F5			CLRB			       
Z95F6			PSHB			       
			LDX	#M6DD7		       
			LDAA	#$0C		       
			MUL			       
			ABX			       
			LDAA	,X		       
			LDX	M0079		       
			STAA	,X		       
			INX			       
			STX	M0079		       
			PULB			       
			INCB			       
			CMPB	#$08		       
			BNE	Z95F6		       
			RTS			       
HI_CALL_03		LDAB	M7772		       
			ANDB	#$04		       
			BNE	Z9624		       
			JSR	Z9881		       
			TAB			       
			LDAA	M778F		       
			BRA	Z962A		       
Z961E			LDX	#M7628		       
			JMP	Z9677		       
Z9624			LDAB	M6E37		       
			LDAA	M6E3A		       
Z962A			CMPB	#$02		       
			BCS	Z961E		       
			SUBB	#$02		       
			JSR	Z969B		       
			LDX	#M7F9A		       
			STX	M00A9		       
			LDX	#M7F9A		       
			STX	M00A7		       
			CLRB			       
Z963E			PSHB			       
			LDX	M00A9		       
			LDD	,X		       
			PSHA			       
			LDAA	M7772		       
			ANDA	#$04		       
			BNE	Z9650		       
			JSR	Z9881		       
			BRA	Z9653		       
Z9650			LDAA	M6E37		       
Z9653			CMPA	#$0B		       
			PULA			       
			BCS	Z9662		       
			BNE	Z965E		       
			SUBA	#$1E		       
			BRA	Z9664		       
Z965E			SUBA	#$0F		       
			BRA	Z9664		       
Z9662			SUBA	#$3C		       
Z9664			INX			       
			INX			       
			STX	M00A9		       
			LDX	M00A7		       
			STD	,X		       
			INX			       
			INX			       
			STX	M00A7		       
			PULB			       
			INCB			       
			CMPB	#$0C		       
			BNE	Z963E		       
Z9676			RTS			       
Z9677			STX	M00A9		       
			LDX	#M7F9A		       
			STX	M00A7		       
			CLRB			       
Z967F			PSHB			       
			LDX	M00A9		       
			LDD	,X		       
			SUBA	#$3C		       
			INX			       
			INX			       
			STX	M00A9		       
			LDX	M00A7		       
			STD	,X		       
			INX			       
			INX			       
			STX	M00A7		       
			PULB			       
			INCB			       
			CMPB	#$0C		       
			BNE	Z967F		       
			JMP	Z9676		       
Z969B			LDX	#M9703		       
			ABX			       
			ABX			       
			LDX	,X		       
			STX	M00A9		       
			TSTB			       
			BEQ	Z96AB		       
			CMPB	#$05		       
			BCS	Z96B6		       
Z96AB			LDAB	#$18		       
			LDX	#M7F9A		       
			JSR	ZAE8A		       
			JMP	Z9702		       
Z96B6			ASLA			       
			PSHA			       
			DECB			       
			LDAA	#$18		       
			MUL			       
			PULA			       
			PSHA			       
			ABA			       
			TAB			       
			LDX	#M9821		       
			ABX			       
			LDD	,X		       
			STD	M007E		       
			LDX	#M7F9A		       
			PULB			       
			ABX			       
			STX	M00A7		       
			LDAB	#$0C		       
Z96D1			PSHB			       
			LDX	M00A9		       
			LDD	,X		       
			INX			       
			INX			       
			STX	M00A9		       
			SUBA	#$0D		       
			ASLB			       
			ASLB			       
			LSRD			       
			LSRD			       
			ADDD	M007E		       
			ASLD			       
			ASLD			       
			ADDA	#$0D		       
			LSRB			       
			LSRB			       
			LDX	M00A7		       
			CPX	#M7FB2		       
			BCS	Z96F6		       
			XGDX			       
			SUBD	#M0018		       
			XGDX			       
			SUBA	#$0C		       
Z96F6			STD	,X		       
			LDX	M00A7		       
			INX			       
			INX			       
			STX	M00A7		       
			PULB			       
			DECB			       
			BNE	Z96D1		       
Z9702			RTS			       
M9703			FDB	M9719_via_dvec_9703,M9731_via_dvec_9705
			FDB	M9749_via_dvec_9707,M9761_via_dvec_9709
			FDB	M9779_via_dvec_970b,M9791_via_dvec_970d
			FDB	M97A9_via_dvec_970f,M97C1_via_dvec_9711
			FDB	M97D9_via_dvec_9713,M97F1_via_dvec_9715
			FDB	M9809_via_dvec_9717    
M9719_via_dvec_9703	FDB	$3C00,$3D00,$3E00,$3F00,LCD_CMD,$4100,$4200,$4300
			FDB	$4400,$4500,$4600,$4700
M9731_via_dvec_9705	FDB	$3C0A,$3C37,$3E0D,$3F14,LCD_DATA,$4109,$4136,$430B
			FDB	$4338,$4500,$4615,$4703
M9749_via_dvec_9707	FDB	$3C0A,$3C37,$3D3F,$3F14,LCD_DATA,$4109,$4136,$430B
			FDB	$4338,$4500,$4615,$4703
M9761_via_dvec_9709	FDB	$3C07,$3C37,$3E02,$3F0D,$3F3E,$4109,$4139,M4304
			FDB	$4335,$4500,$460B,$463C
M9779_via_dvec_970b	FDB	$3B3C,$3D05,$3D3F,$3E38,LCD_DATA,$403B,$4204,$423D
			FDB	$4406,$4500,$453A,$4703
M9791_via_dvec_970d	FDB	$3C08,$3D01,$3E03,$3F04,LCD_DATA,$4106,$4200,$4305
			FDB	$4403,$4500,$4605,$4703
M97A9_via_dvec_970f	FDB	$3C07,$3D00,$3E02,$3F03,$3F3E,$4105,$4200,M4304
			FDB	$4402,$4500,$4604,$463F
M97C1_via_dvec_9711	FDB	$3C04,$3D00,$3E01,$3F03,$3F3F,$4105,$413F,$4303
			FDB	$4401,$4500,$4604,$463D
M97D9_via_dvec_9713	FDB	$3C20,$3D20,$3E20,$3F20,$4020,$4120,$4220,$4320
			FDB	$4420,$4520,$4620,$4720
M97F1_via_dvec_9715	FDB	$4200,$4220,$4300,$4320,$4400,$4420,$4500,$4520
			FDB	$4600,$4620,$4700,$4720
M9809_via_dvec_9717	FDB	$3F00,$3F10,$3F20,$3F30,LCD_CMD,$4010,$4020,$4030
			FDB	$4100,$4110,$4120,$4130
M9821			FDB	M0000,M0048,$0075,M00CA,$00F7,$013F,$016C,$01B3
			FDB	$0209,$0236,$027D,$02AB,M0000,M0048,$0075,M00CA
			FDB	$00F7,$013F,$016C,$01C1,$0209,$0236,$027D,$02AB
			FDB	M0000,$004B,$007C,M00C7,$00F7,$0142,$0173,$01BE
			FDB	$0209,$0239,$0284,$02B5,M0000,$003A,M0083,M00BC
			FDB	$0105,$013F,$0188,$01C1,$01FB,$0244,$027D,$02C6
Z9881			LDAA	M7774		       
			CMPA	#$1C		       
			BNE	Z989F		       
			LDAA	M7788		       
			CMPA	#$02		       
			BNE	Z989F		       
			LDAA	M7789		       
			BEQ	Z989F		       
			CMPA	#$02		       
			BEQ	Z989F		       
			LDAA	M778A		       
			ADDA	#$02		       
			BRA	Z98A0		       
Z989F			CLRA			       
Z98A0			RTS			       
Z98A1			CLR	>M0072		       
Z98A4			LDAB	M0072		       
			LDX	#M00F6		       
			ABX			       
			TST	,X		       
			BNE	Z98B2		       
			LDAA	#$FF		       
			BRA	Z98C1		       
Z98B2			CLRB			       
			CLRA			       
			LDX	#M00F6		       
Z98B7			CMPB	M0072		       
			BEQ	Z98C1		       
			ADDA	,X		       
			INCB			       
			INX			       
			BRA	Z98B7		       
Z98C1			LDAB	M0072		       
			LDX	#M7EF1		       
			ABX			       
			STAA	,X		       
			LDAB	M0072		       
			INCB			       
			STAB	M0072		       
			CMPB	#$08		       
			BNE	Z98A4		       
			CLRB			       
Z98D3			LDX	#M7EF1		       
			ABX			       
			LDAA	,X		       
			BPL	Z98DF		       
			LDAA	#$FF		       
			BRA	Z98E6		       
Z98DF			LDX	#M00F6		       
			ABX			       
			ADDA	,X		       
			DECA			       
Z98E6			LDX	#M7EF9		       
			ABX			       
			STAA	,X		       
			INCB			       
			CMPB	#$08		       
			BNE	Z98D3		       
			LDAB	M7772		       
			ANDB	#$04		       
			BEQ	Z9911		       
			TST	M6E38		       
			BEQ	Z9911		       
			CLRA			       
			CLRB			       
Z98FF			LDX	#M00F6		       
			ABX			       
			ADDA	,X		       
			INCB			       
			CMPB	#$08		       
			BNE	Z98FF		       
			DECA			       
			STAA	M7EF9		       
			CLR	M7EF1		       
Z9911			CLRB			       
Z9912			PSHB			       
			LDX	#M7EF1		       
			ABX			       
			LDAB	,X		       
			BPL	Z9920		       
			LDX	#M00E7		       
			BRA	Z9924		       
Z9920			LDX	#M00E7		       
			ABX			       
Z9924			STX	M0077		       
			LDX	#M7F09		       
			PULB			       
			PSHB			       
			ASLB			       
			ABX			       
			LDD	M0077		       
			STD	,X		       
			STD	$10,X		       
			PULB			       
			INCB			       
			CMPB	#$08		       
			BNE	Z9912		       
			BSR	Z993C		       
			RTS			       
Z993C			LDX	#M7EE9		       
			LDAB	#$08		       
Z9941			LDAA	$08,X		       
			BPL	Z9949		       
			LDAA	#$FF		       
			BRA	Z994A		       
Z9949			ASLA			       
Z994A			STAA	,X		       
			INX			       
			DECB			       
			BNE	Z9941		       
			CLRA			       
			LDX	#M7F08		       
			LDAB	#$08		       
			JSR	ZC7F8		       
			RTS			       
Z995A			LDX	#M7F89		       
Z995D			CLR	,X		       
			INX			       
			CPX	#M7F99		       
			BCS	Z995D		       
			LDAA	#$01		       
			STAA	M007B		       
			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	Z999F		       
			CLRA			       
Z9971			PSHA			       
			LDAB	#$0C		       
			MUL			       
			ADDD	#M6DD7		       
			XGDX			       
			LDAB	,X		       
			BEQ	Z9991		       
			LDAB	$03,X		       
			CMPB	#$10		       
			BNE	Z9987		       
			BSR	Z99DE		       
			BRA	Z9991		       
Z9987			LDX	#M7F89		       
			ABX			       
			LDAB	M007B		       
			ORAB	,X		       
			STAB	,X		       
Z9991			PULA			       
			TST	M6E38		       
			BNE	Z99CD		       
			INCA			       
			ASL	>M007B		       
			BNE	Z9971		       
			BRA	Z99CD		       
Z999F			CLRA			       
Z99A0			PSHA			       
			LDAB	M7566		       
			CMPB	#$10		       
			BEQ	Z99C9		       
			LDX	#M7F89		       
			ABX			       
			LDAB	M007B		       
			ORAB	,X		       
			STAB	,X		       
Z99B2			PULA			       
			LDAB	M7774		       
			CMPB	#$1A		       
			BNE	Z99CD		       
			TST	M7788		       
			BEQ	Z99CD		       
			INCA			       
			CMPA	#$02		       
			BEQ	Z99CD		       
			ASL	>M007B		       
			BRA	Z99A0		       
Z99C9			BSR	Z99DE		       
			BRA	Z99B2		       
Z99CD			LDAB	M00BD		       
			CMPB	#$F0		       
			BCC	Z99DD		       
			ANDB	#$0F		       
			LDX	#M7F89		       
			ABX			       
			LDAB	,X		       
			STAB	M00DA		       
Z99DD			RTS			       
Z99DE			CLRB			       
Z99DF			LDX	#M7F89		       
			ABX			       
			LDAA	M007B		       
			ORAA	,X		       
			STAA	,X		       
			INCB			       
			CMPB	#$10		       
			BNE	Z99DF		       
			RTS			       
			LDD	#M6A67		       
			ADDD	M0074		       
			XGDX			       
			LDAB	M0070		       
			ABX			       
			RTS			       
			LDAA	M006F		       
			LDAB	#$05		       
			MUL			       
			LDX	#M6ABE		       
			ABX			       
			XGDX			       
			ADDD	M0074		       
			XGDX			       
			RTS			       
Z9A07			TAB			       
			LDX	#M793B		       
			ABX			       
			LDAA	,X		       
			CMPA	#$08		       
			BCS	Z9A18		       
			CLRA			       
			BSR	Z9A2F		       
			SEC			       
			BRA	Z9A1B		       
Z9A18			BSR	Z9A2F		       
			CLC			       
Z9A1B			RTS			       
Z9A1C			LDX	#M793B		       
			LDAB	M0076		       
			ABX			       
			LDAB	,X		       
			BPL	Z9A27		       
			CLRB			       
Z9A27			LDX	#M6DD7		       
			LDAA	#$0C		       
			MUL			       
			ABX			       
			RTS			       
Z9A2F			LDAB	#$6E		       
			MUL			       
			ADDD	#M6A67		       
			XGDX			       
			RTS			       
HI_CALL_11		LDAA	M75F7		       
			JSR	Z908B		       
			STAA	M7750		       
			RTS			       
M9A41			FCB	$CC,$6A,$9B,$D3,$74,$18,$E6,$01,$58,$58,$58,$EA,$00
			FCB	$D7,$72,$CE,$79,$33,$D6,$76,$3A,$A6,$00,$84,$04,$27
			FCB	$04,$C6,$80,$20,$01,$5F,$DA,$72,$17,$CE,$79,$13,$D6
			FCB	$76,$3A,$A7,$00,$C6,$20,$DB,$76,$0F,$BD,$90,$85,$F7
			FCB	$20,$00,$21,$FE,$01,$B7,$20,$01,$0E,$7C,$00,$76,$7A
			FCB	$00,$7B,$26,$CA,$39    
Z9A87			CLR	>M0072		       
			LDAA	M784E		       
			BMI	Z9A98		       
			JSR	Z9A2F		       
			LDAA	$3B,X		       
			ANDA	#$03		       
			STAA	M0072		       
Z9A98			LDAA	M784F		       
			BMI	Z9AAA		       
			JSR	Z9A2F		       
			LDAA	$3B,X		       
			ANDA	#$03		       
			ASLA			       
			ASLA			       
			ORAA	M0072		       
			STAA	M0072		       
Z9AAA			LDAA	M0072		       
			STAA	M7852		       
			LDAB	#$1B		       
			SEI			       
Z9AB2			BRN	Z9AB2		       
			JSR	Z9085		       
			STAB	OPZ_R0		       
Z9ABA			BRN	Z9ABA		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			RTS			       
M9AC2			FCB	$BD,$A1,$20,$BD,$9A,$E2,$A6,$3A,$CE
			ASL	$2EDF		       
			STAA	$7E,X		       
			ORAA	$00D2		       
Z9AD2			LDX	M00A7		       
			LDAB	M0076		       
			ABX			       
			STAA	,X		       
			INC	>M0076		       
			DEC	>M007B		       
			BNE	Z9AD2		       
			RTS			       
			PSHX			       
			LDX	#M7846		       
			LDAB	M0076		       
			ABX			       
			LDAB	,X		       
			ANDB	#$03		       
			BEQ	Z9B00		       
			CMPB	#$03		       
			BEQ	Z9B00		       
			LDAB	,X		       
			PULX			       
			LSRB			       
			LSRB			       
			ANDB	#$07		       
			TBA			       
			JSR	Z9A2F		       
			BRA	Z9B01		       
Z9B00			PULX			       
Z9B01			RTS			       
M9B02			FCB	$C6,$36,$BD,$A1,$21,$3C,$CE,$78,$46,$D6,$76,$3A,$E6
			FCB	$00,$C4,$03,$27,$3B,$C1,$03,$27,$37,$37,$E6,$00,$54
			FCB	$54,$C4,$07,$17,$BD,$9A,$2F,$A6,$36,$BD,$90,$8B,$E6
			FCB	$3B,$C1,$03,$27,$08,$CE,$A8,$2B,$16,$3A,$A6,$00,$43
			FCB	$33,$C1,$01,$27,$04,$C6,$16,$20,$02,$C6,$18,$0F,$BD
			FCB	$90,$85,$F7,$20,$00,$21,$FE,$01,$B7,$20,$01,$0E,$38
			FCB	$E6,$00,$58,$CE,$9B,$6D,$3A,$EC,$00,$37,$CE,$78,$1E
			FCB	$D6,$76,$58,$3A,$33,$ED,$00,$7C,$00,$76,$7A,$00,$7B
			FCB	$26,$ED,$39,$00,$01,$00,$02,$00,$0E,$00,$1B,$00,$3D
			FCB	$00,$52,$00,$81,$00,$BF,$00,$EF,$01,$25,$01,$69,$01
			FCB	$C9,$02,$0D,$02,$6C,$02,$FB,$03,$46,$03,$D5,$04,$20
			FCB	$04,$8D,$05,$1D,$05,$F7,$06,$D1,$07,$1C,$07,$F6,$08
			FCB	$3A,$08,$D0,$0A,$39,$0A,$C8,$0B,$ED,$0C,$7D,$0D,$A2
			FCB	$0E,$31,$0F,$56,$10,$7B,$11,$0A,$11,$99,$12,$2F,$14
			FCB	$72,$15,$98,$16,$B6,$17,$DB,$19,$00,$1B,$43,$1C,$68
			FCB	$1D,$87,$1E,$AC,$1F,$D1,$20,$EF,$22,$14,$23,$39,$23
			FCB	$39,$26,$A2,$28,$E5,$28,$E5,$2B,$2F,$2D,$72,$2F,$B6
			FCB	$32,$00,$34,$43,$34,$43,$36,$87,$38,$D1,$3B,$14,$3B
			FCB	$14,$3D,$57,$3F,$A2,$41,$E5,$41,$E5,$44,$28,$44,$28
			FCB	$46,$72,$48,$B6,$48,$B6,$4D,$43,$51,$CA,$51,$CA,$56
			FCB	$57,$5A,$E5,$5A,$E5,$5F,$6C,$63,$F9,$63,$F9,$68,$87
			FCB	$68,$87,$6D,$0D,$71,$9B,$71,$9B,$76,$28,$76,$28,$7A
			FCB	$B6,$7A,$B6,$7F,$3C,$7F,$3C,$83,$CA,$83,$CA,$83,$CA
			FCB	$88,$57,$8C,$DE,$8C,$DE,$8C,$DE
M9C35			FCB	$C6,$37,$BD,$A1,$21,$3C,$CE,$78,$46,$D6,$76,$3A,$E6
			FCB	$00,$C4,$03,$27,$17,$C1,$03,$27,$13,$E6,$00,$54,$54
			FCB	$C4,$07,$17,$BD,$9A,$2F,$C6,$37,$3A,$BD,$9C,$F5,$38
			FCB	$20,$04,$38,$BD,$9C,$F5,$37,$CE,$78,$0E,$D6,$76,$58
			FCB	$3A,$33,$ED,$00,$7C,$00,$76,$7A,$00,$7B,$26,$ED,$39
Z9C76			FCB	$CE,$78,$4E,$DF,$A9,$CE,$7D,$13,$DF,$A7,$DE,$A9,$A6
			FCB	$00,$2B,$2D,$BD,$9A,$2F,$A6,$39,$BD,$90,$8B,$3C,$DE
			FCB	$A7,$A7,$00,$38,$A6,$48,$BD,$90,$8B,$3C,$DE,$A7,$A7
			FCB	$02,$38,$A6,$4A,$BD,$90,$8B,$3C,$DE,$A7,$A7,$04,$38
			FCB	$A6,$6D,$BD,$90,$8B,$DE,$A7,$A7,$06,$DE,$A7,$08,$DF
			FCB	$A7,$DE,$A9,$08,$DF,$A9,$8C,$78,$50,$26,$BE,$CE,$7D
			FCB	$3B,$DF,$A7,$4F,$36,$BD,$9A,$07,$A6,$47,$BD,$90,$8B
			FCB	$3C,$DE,$A7,$A7,$00,$38,$A6,$49,$BD,$90,$8B,$3C,$DE
			FCB	$A7,$A7,$08,$38,$A6,$6C,$BD,$90,$8B,$DE,$A7,$A7,$10
			FCB	$08,$DF,$A7,$32,$4C,$81,$08,$26,$D4,$39,$86,$63,$A0
			FCB	$00,$16,$C4,$70,$54,$54,$54,$54,$C0,$07,$50,$D7,$71
			FCB	$84,$0F,$8A,$10,$48,$5F,$04,$7A,$00,$71,$26,$FA,$39
M9D12			FCB	$BD,$A1,$20,$BD,$9A,$E2,$A6,$38,$BD,$90,$8B,$CE,$7D
			FCB	$7B,$DF,$A7,$7E,$9A,$D2,$D6,$6F,$58,$58,$58,$1B,$9B
			FCB	$76,$D6,$72,$0F,$BD,$90,$85,$B7,$20,$00,$21,$FE,$01
			FCB	$F7,$20,$01,$0E,$37,$81,$C0,$25,$1B,$81,$E0,$24,$0C
			FCB	$C5,$20,$27,$13,$16,$C0,$C0,$CE,$77,$EE,$20,$06,$16
			FCB	$C0,$E0,$CE,$77,$CE,$3A,$D6,$72,$E7,$00,$33,$4C,$7C
			FCB	$00,$76,$7A,$00,$7B,$26,$C8,$39
M9D68			FCB	$BD,$99,$EF,$E6,$07,$CE,$9D,$89,$3A,$A6,$00,$CE,$78
			FCB	$53,$D6,$6F,$58,$58,$58,$DB,$76,$3A,$A7,$00,$7C,$00
			FCB	$76,$7A,$00,$7B,$26,$EB,$39,$00,$25,$49,$6E,$92,$B7
			FCB	$DB,$FF 	       
M9D91			FCB	$CE,$78,$46,$D6,$76,$3A,$E6,$00,$C4,$03,$27,$1A,$C1
			FCB	$03,$27,$16,$37,$C6,$3C,$BD,$A1,$21,$48,$48,$48,$48
			FCB	$E6,$01,$1B,$33,$C1,$02,$26,$05,$8A,$84,$20,$01,$4F
			FCB	$16,$86,$38,$9B,$76,$8D,$09,$7C,$00,$76,$7A,$00,$7B
			FCB	$26,$F2,$39,$0F,$BD,$90,$85,$B7,$20,$00,$21,$FE,$01
			FCB	$F7,$20,$01,$0E,$39    
M9DD7			FCB	$BD,$99,$EF,$3C,$BD,$99,$F9,$6D,$00,$26,$03,$5F,$20
			FCB	$07,$C6,$01,$A6,$01,$38,$20,$0C,$38,$A6,$0C,$81,$03
			FCB	$24,$03,$43,$20,$02,$80,$03,$48,$48,$48,$48,$5D,$27
			FCB	$04,$E6,$0B,$20,$08,$E6,$0B,$CE,$9E,$18,$3A,$E6,$00
			FCB	$54,$54,$1B,$84,$7F,$97,$72,$86,$40,$BD,$9D,$25,$39
			FCB	$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0C,$0A,$0B
			FCB	$10,$0D,$0E,$14,$0F,$11,$18,$12,$13,$1C,$15,$16,$20
			FCB	$19,$17,$24,$1A,$1D,$28,$1B,$1E,$2C,$21,$30,$1F,$22
			FCB	$25,$34,$23,$38,$29,$26,$3C,$2D,$27,$2A,$31,$2E,$2B
			FCB	$35,$32,$2F,$39,$36,$33,$3D,$3A,$37,$3E,$3B,$3F
M9E58			FCB	$BD,$99,$F9,$A6,$03,$48,$48,$48,$48,$AB,$02,$8A,$80
			FCB	$97,$72,$86,$40,$BD,$9D,$25,$39
M9E6D			FCB	$BD,$99,$F9,$E6,$04,$58,$58,$58,$58,$58,$58,$37,$C6
			FCB	$6B,$BD,$A1,$21,$33,$1B,$8A,$28,$97,$72,$86,$C0,$BD
			FCB	$9D,$25,$39	       
M9E8A			FCB	$4F,$8A,$28,$97,$72,$86,$C0,$BD,$9D,$25,$39
M9E95			FCB	$BD,$99,$EF,$E6,$06,$58,$58,$58,$58,$58,$58,$EB,$00
			FCB	$37,$BD,$99,$F9,$33,$6D,$00,$27,$04,$CA,$20,$20,$02
			FCB	$C4,$DF,$D7,$72,$86,$80,$BD,$9D,$25,$39
M9EB9			FCB	$BD,$99,$EF,$E6,$08,$56,$56,$C4,$80,$EB,$01,$D7,$72
			FCB	$86,$A0,$BD,$9D,$25,$39
M9ECC			FCB	$BD,$99,$EF,$A6,$02,$E6,$0B,$CE,$9E,$18,$3A,$E6,$00
			FCB	$C4,$03,$58,$58,$58,$58,$58,$58,$1B,$84,$DF,$97,$72
			FCB	$86,$C0,$BD,$9D,$25,$39
M9EEC			FCB	$BD,$99,$EF,$A6,$04,$43,$48,$48,$48,$48,$AB,$03,$97
			FCB	$72,$86,$E0,$BD,$9D,$25,$39
M9F00			FCB	$BD,$99,$EF,$A6,$05,$BD,$90,$8B,$97,$7C,$C6,$0A,$3A
			FCB	$BD,$9F,$D9,$CE,$79,$13,$D6,$76,$3A,$E6,$00,$C4,$07
			FCB	$C0,$04,$25,$0C,$C1,$04,$25,$01,$5F,$BD,$AB,$95,$0C
			FCB	$15,$14,$1C,$D6,$6F,$C1,$03,$26,$1D,$20,$1E,$D6,$6F
			FCB	$C5,$02,$27,$15,$8B,$08,$20,$0B,$7D,$00,$6F,$27,$0C
			FCB	$8B,$0D,$20,$02,$8B,$10,$2A,$07,$86,$7F,$20,$03,$48
			FCB	$20,$1E,$48,$F6,$77,$72,$C4,$04,$27,$16,$CE,$79,$33
			FCB	$D6,$76,$3A,$6D,$00,$27,$0A,$CE,$79,$3B,$D6,$76,$3A
			FCB	$E6,$00,$2A,$02,$86,$FF,$97,$7D,$CE,$79,$43,$D6,$6F
			FCB	$86,$1D,$3D,$3A,$DF,$7E,$D6,$76,$86,$74,$3D,$D3,$7E
			FCB	$18,$5F,$37,$3C,$CE,$9F,$BC,$3A,$A6,$00,$38,$D6,$7C
			FCB	$3D,$9B,$7D,$24,$02,$86,$FF,$A7,$00,$08,$33,$5C,$C1
			FCB	$1D,$26,$E5,$7C,$00,$76,$7A,$00,$7B,$26,$C9,$39,$7F
			FCB	$7A,$76,$72,$6E,$6B,$68,$66,$64,$62,$60,$5E,$5C,$5A
			FCB	$58,$56,$55,$54,$52,$51,$00,$01,$02,$03,$04,$05,$06
			FCB	$07,$08,$09,$0B,$0E,$10,$13,$17,$1C,$21,$27,$2F,$39
			FCB	$43,$50,$5F,$71,$86,$A0,$BE,$E0,$FF,$E6,$00,$C1,$14
			FCB	$25,$06,$86,$63,$A0,$00,$20,$06,$CE,$9F,$A8,$3A,$A6
			FCB	$00,$39 	       
M9FEC			FCB	$BD,$99,$EF,$A6,$09,$27,$0B,$C6,$20,$3D,$A6,$09,$48
			FCB	$8A,$F0,$43,$20,$03,$CC,$00
MA000			FCB	$00,$37,$CE,$78,$D3,$D6,$6F,$58,$58,$58,$DB,$76,$3A
			FCB	$33,$A7,$00,$E7,$20,$7C,$00,$76,$7A,$00,$7B,$26,$E7
			FCB	$39		       
MA01B			FCB	$C6,$3E,$BD,$A1,$21,$80,$18,$F6,$77,$72,$C4,$04,$27
			FCB	$18,$CE,$79,$3B,$D6,$76,$3A,$E6,$00,$2B,$0E,$36,$CE
			FCB	$6D,$D7,$86,$0C,$3D,$3A,$E6,$07,$C0,$18,$32,$1B,$CE
			FCB	$79,$1B,$DF,$A7,$7E,$9A,$D2
MA049			FCB	$F6,$77,$72,$C4,$04,$27,$0A,$7D,$6E,$38,$27,$05,$F6
			FCB	$6A,$A9,$20,$05,$C6,$42,$BD,$A1,$21,$CE,$A0,$6D,$3A
			FCB	$A6,$00,$CE,$77,$C6,$DF,$A7,$7E,$9A,$D2,$FF,$FE,$F3
			FCB	$E8,$D3,$CA,$C1,$B9,$B2,$AB,$A5,$9F,$99,$93,$8D,$87
			FCB	$82,$7D,$78,$73,$6E,$6A,$66,$62,$5E,$5B,$58,$55,$52
			FCB	$4F,$4C,$4A,$48,$46,$44,$42,$40,$3E,$3C,$3A,$38,$36
			FCB	$35,$33,$31,$2F,$2E,$2C,$2A,$29,$27,$26,$25,$24,$22
			FCB	$21,$1F,$1E,$1C,$1B,$1A,$19,$18,$17,$16,$15,$14,$13
			FCB	$12,$12,$11,$10,$10,$0F,$0E,$0E,$0D,$0D,$0C,$0C,$0B
			FCB	$0B,$0A,$0A,$09,$09,$08,$08,$07,$07,$06,$06,$05,$05
			FCB	$04,$04,$03,$03,$02,$01
MA0D1			FCB	$C6,$40,$BD,$A1,$21,$CE,$A0,$E4,$3A,$A6,$00,$CE,$79
			FCB	$23,$DF,$A7,$7E,$9A,$D2,$00,$10,$21,$31,$41,$51,$61
			FCB	$71,$81,$91,$A2,$B2,$C2
MA0F1			FCB	$C6,$4B,$BD,$A1,$21,$80,$32,$CE,$79,$2B,$DF,$A7,$7E
			FCB	$9A,$D2 	       
MA100			FCB	$C6,$43,$BD,$A1,$21,$BD,$90,$8B,$CE,$7D,$1B,$DF,$A7
			FCB	$7E,$9A,$D2	       
MA110			FCB	$C6,$4C,$BD,$A1,$21,$BD,$90,$8B,$CE,$7D,$33,$DF,$A7
			FCB	$7E,$9A,$D2,$5F,$CE    
			DEC	$67,X		       
			ABX			       
			XGDX			       
			ADDD	M0074		       
			XGDX			       
			LDAA	,X		       
			TAB			       
			RTS			       
HI_CALL_18		LDAB	M7565		       
			ASLB			       
			EORB	#$80		       
			BMI	ZA138		       
			CLRA			       
			BRA	ZA13A		       
ZA138			LDAA	#$FF		       
ZA13A			ASLD			       
			STD	M0086		       
			RTS			       
			LDAB	#$60		       
			LDAA	#$FF		       
			CLC			       
			RORA			       
ZA144			SEI			       
			STAB	OPZ_R0		       
ZA148			BRN	ZA148		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			INCB			       
			CMPB	#$80		       
			BNE	ZA144		       
			RTS			       
ZA155			STAB	M0083		       
			PSHA			       
			JSR	ZA354		       
			PULA			       
			STAA	M0084		       
			CLRB			       
			STAB	M0085		       
ZA161			LDX	#MA350		       
			ABX			       
			LDAB	,X		       
			LDX	#M776E		       
			ABX			       
			LDAA	,X		       
			ANDA	#$01		       
			BNE	ZA175		       
			LDAA	#$FF		       
			BRA	ZA1B8		       
ZA175			LDX	#M7943		       
			LDAB	M0085		       
			LDAA	#$1D		       
			MUL			       
			ABX			       
			STX	M00DC		       
			LDAB	M0084		       
			LDAA	#$74		       
			MUL			       
			ADDD	M00DC		       
			XGDX			       
			PSHX			       
			LDX	#M791B		       
			LDAB	M0084		       
			ABX			       
			LDAB	,X		       
			ADDB	M0083		       
ZA193			BLT	ZA19D		       
ZA195			CMPB	#$60		       
			BCS	ZA1A1		       
			SUBB	#$0C		       
			BRA	ZA195		       
ZA19D			ADDB	#$0C		       
			BRA	ZA193		       
ZA1A1			LDX	#MA2F0		       
			ABX			       
			LDAB	,X		       
			SUBB	#$0E		       
			BCC	ZA1AC		       
			CLRB			       
ZA1AC			CMPB	#$70		       
			BLS	ZA1B2		       
			LDAB	#$70		       
ZA1B2			LSRB			       
			LSRB			       
			PULX			       
			ABX			       
			LDAA	,X		       
ZA1B8			PSHA			       
			LDAA	#$08		       
			LDAB	M0085		       
			MUL			       
			ADDB	M0084		       
			STAB	M0080		       
			LDX	#M78D3		       
			ABX			       
			LDAB	M00F0		       
			LDAA	$20,X		       
			MUL			       
			ADDA	,X		       
			BCC	ZA1D1		       
			LDAA	#$FF		       
ZA1D1			PULB			       
			ABA			       
			BCC	ZA1D7		       
			LDAA	#$FF		       
ZA1D7			LDAB	M0080		       
			LDX	#M78A3		       
			ABX			       
			STAA	,X		       
			CMPA	#$FF		       
			BEQ	ZA1EF		       
			LDX	#M7873		       
			LDAB	M0080		       
			ABX			       
			ADDA	,X		       
			BCC	ZA1EF		       
			LDAA	#$FF		       
ZA1EF			LSRA			       
			LDAB	#$60		       
			ADDB	M0080		       
			SEI			       
ZA1F5			TST	OPZ_R1		       
			BMI	ZA1F5		       
			STAB	OPZ_R0		       
ZA1FD			BRN	ZA1FD		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			LDAB	M0085		       
			INCB			       
			STAB	M0085		       
			CMPB	#$04		       
			BEQ	ZA210		       
			JMP	ZA161		       
ZA210			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	ZA223		       
			TST	M6E38		       
			BEQ	ZA223		       
			TIM	#$40,M0041	       
			BEQ	ZA254		       
			BRA	ZA243		       
ZA223			LDAA	M0084		       
			JSR	Z9A07		       
			LDAA	$3F,X		       
			BEQ	ZA230		       
			LDAA	$41,X		       
			BNE	ZA254		       
ZA230			LDX	#M793B		       
			LDAB	M0084		       
			ABX			       
			LDAB	,X		       
			BMI	ZA254		       
			LDX	#M0041		       
			ABX			       
			TIM	#$40,$00,X	       
			BEQ	ZA254		       
ZA243			LDX	#M77C6		       
			LDAB	M0084		       
			ABX			       
			LDAA	,X		       
			CMPA	#$FF		       
			BEQ	ZA254		       
			LDX	#M7D03		       
			BRA	ZA257		       
ZA254			LDX	#M7CF3		       
ZA257			LDAB	M0084		       
			ASLB			       
			ABX			       
			LDD	,X		       
			STD	M00DC		       
			LDD	M0086		       
			PSHB			       
			LDX	#M78C3		       
			LDAB	M0084		       
			ASLB			       
			ABX			       
			PULB			       
			ADDD	,X		       
			BVC	ZA278		       
			BCS	ZA275		       
			LDD	#M7FFF		       
			BRA	ZA278		       
ZA275			LDD	#M0000		       
ZA278			LDX	#M77B6		       
			PSHB			       
			TST	>M0084		       
			BNE	ZA28D		       
			LDAB	M7846		       
			ANDB	#$03		       
			CMPB	#$03		       
			BEQ	ZA28D		       
			PULB			       
			BRA	ZA2A0		       
ZA28D			LDAB	M0084		       
			ASLB			       
			ABX			       
			PULB			       
			ADDD	,X		       
			BVC	ZA2A0		       
			BCS	ZA29D		       
			LDD	#M7FFF		       
			BRA	ZA2A0		       
ZA29D			LDD	#M0000		       
ZA2A0			ADDD	M00DC		       
ZA2A2			BLT	ZA2AC		       
ZA2A4			CMPA	#$60		       
			BCS	ZA2B0		       
			SUBA	#$0C		       
			BRA	ZA2A4		       
ZA2AC			ADDA	#$0C		       
			BRA	ZA2A2		       
ZA2B0			PSHB			       
			LDX	#MA2F0		       
			TAB			       
			ABX			       
			LDAA	,X		       
			PULB			       
			ANDB	#$FC		       
			STD	M0081		       
			LDAA	#$28		       
			ADDA	M0084		       
			LDAB	M0081		       
			SEI			       
ZA2C4			TST	OPZ_R1		       
			BMI	ZA2C4		       
			STAA	OPZ_R0		       
ZA2CC			BRN	ZA2CC		       
			NOP			       
			STAB	OPZ_R1		       
			ADDA	#$08		       
			LDX	#M7933		       
			LDAB	M0084		       
			ABX			       
			LDAB	,X		       
			ANDB	#$01		       
			ORAB	M0082		       
ZA2E0			TST	OPZ_R1		       
			BMI	ZA2E0		       
			STAA	OPZ_R0		       
ZA2E8			BRN	ZA2E8		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
			RTS			       
MA2F0			FCB	$00,$01,$02,$04,$05,$06,$08,$09,$0A,$0C,$0D,$0E,$10
			FCB	$11,$12,$14,$15,$16,$18,$19,$1A,$1C,$1D,$1E,$20,$21
			FCB	$22,$24,$25,$26,$28,$29,$2A,$2C,$2D,$2E,$30,$31,$32
			FCB	$34,$35,$36,$38,$39,$3A,$3C,$3D,$3E,$40,$41,$42,$44
			FCB	$45,$46,$48,$49,$4A,$4C,$4D,$4E,$50,$51,$52,$54,$55
			FCB	$56,$58,$59,$5A,$5C,$5D,$5E,$60,$61,$62,$64,$65,$66
			FCB	$68,$69,$6A,$6C,$6D,$6E,$70,$71,$72,$74,$75,$76,$78
			FCB	$79,$7A,$7C,$7D,$7E    
MA350			FCB	$03,$01,$02,$00        
ZA354			TAB			       
			LDX	#M7846		       
			ABX			       
			LDAB	,X		       
			ANDB	#$03		       
			BEQ	ZA36C		       
			CMPB	#$03		       
			BCC	ZA36C		       
			DECB			       
			LDX	#M7850		       
			ABX			       
			LDAB	,X		       
			BPL	ZA36D		       
ZA36C			TAB			       
ZA36D			STAB	M0084		       
			ASLB			       
			LDX	#M780E		       
			ABX			       
			LDD	,X		       
			SUBD	#M1300		       
			BEQ	ZA38F		       
			LDX	#M7796		       
			LDAB	M0084		       
			ASLB			       
			ABX			       
			PSHX			       
			LDX	#M77A6		       
			ABX			       
			LDD	#M0000		       
			STD	,X		       
			PULX			       
			STD	,X		       
ZA38F			RTS			       
ZA390			LDAB	#$07		       
			STAB	M0097		       
ZA394			LDX	#M793B		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			BPL	ZA3A4		       
			LDD	#M0000		       
			JMP	ZA461		       
ZA3A4			LDX	#M7D83		       
			ABX			       
			LDAB	,X		       
			CMPB	#$80		       
			BNE	ZA3B3		       
ZA3AE			LDD	#M0000		       
			BRA	ZA3FE		       
ZA3B3			LSRB			       
			LDX	#MA4B8		       
			ABX			       
			LDAA	,X		       
			ASLA			       
			EORA	#$80		       
			STAA	M008C		       
			LDX	#M7923		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			BEQ	ZA3AE		       
			LDAA	M008C		       
			CMPB	#$C2		       
			BNE	ZA3E7		       
			TSTA			       
			BMI	ZA3DB		       
			CMPA	#$7E		       
			BNE	ZA3E7		       
			LDD	#M0C00		       
			BRA	ZA3F7		       
ZA3DB			NEGA			       
			LDAB	#$C0		       
			MUL			       
			COMA			       
			COMB			       
			INCB			       
			BCC	ZA3F4		       
			INCA			       
			BRA	ZA3F4		       
ZA3E7			TSTA			       
			BMI	ZA3EE		       
			ASLA			       
			MUL			       
			BRA	ZA3F3		       
ZA3EE			COMA			       
			ASLA			       
			MUL			       
			COMB			       
			COMA			       
ZA3F3			LSRD			       
ZA3F4			LSRD			       
			LSRD			       
			LSRD			       
ZA3F7			TST	>M008C		       
			BPL	ZA3FE		       
			ORAA	#$F0		       
ZA3FE			STD	M0089		       
			LDX	#M792B		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			BNE	ZA40F		       
			LDD	#M0000		       
			BRA	ZA45F		       
ZA40F			STAB	M008D		       
			PSHB			       
			LDX	#M793B		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			BPL	ZA41F		       
			CLRA			       
			BRA	ZA42D		       
ZA41F			LDX	#M7D5B		       
			ABX			       
			LDAA	,X		       
			BNE	ZA42D		       
			PULB			       
			LDD	#M0000		       
			BRA	ZA45F		       
ZA42D			PULB			       
			CMPB	#$32		       
			BEQ	ZA436		       
			CMPB	#$31		       
			BNE	ZA43F		       
ZA436			CMPA	#$FE		       
			BCS	ZA442		       
			LDD	#$C000		       
			BRA	ZA456		       
ZA43F			TSTB			       
			BMI	ZA447		       
ZA442			BSR	ZA47E		       
			MUL			       
			BRA	ZA456		       
ZA447			NEGB			       
			CMPB	#$31		       
			BCC	ZA475		       
ZA44C			BSR	ZA47E		       
			MUL			       
ZA44F			COMA			       
			COMB			       
			ADDD	#DDR2		       
			BEQ	ZA45F		       
ZA456			LSRD			       
			LSRD			       
			TST	>M008D		       
			BPL	ZA45F		       
			ORAA	#$C0		       
ZA45F			ADDD	M0089		       
ZA461			PSHB			       
			LDX	#M78C3		       
			LDAB	M0097		       
			ASLB			       
			ABX			       
			PULB			       
			STD	,X		       
			DEC	>M0097		       
			BMI	ZA474		       
			JMP	ZA394		       
ZA474			RTS			       
ZA475			CMPA	#$FE		       
			BCS	ZA44C		       
			LDD	#$C000		       
			BRA	ZA44F		       
ZA47E			LDX	#MA485		       
			ABX			       
			LDAB	,X		       
			RTS			       
MA485			FCB	$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C
			FCB	$0D,$0F,$11,$14,$17,$1A,$1C,$1F,$23,$27,$2A,$2E,$32
			FCB	$36,$3A,$3E,$43,$48,$4E,$52,$58,$5D,$62,$69,$6E,$75
			FCB	$7B,$81,$88,$8E,$95,$9C,$A4,$AB,$B3,$BB,$C2,$C2
MA4B8			FCB	$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C
			FCB	$0D,$0E,$0F,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19
			FCB	$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$23,$24,$25,$26
			FCB	$27,$28,$2A,$2B,$2C,$2D,$2E,$2F,$30,$31,$32,$33,$34
			FCB	$35,$36,$37,$38,$39,$3A,$3B,$3C,$3D,$3E,$3F,$40,$40
			FCB	$40,$41,$42,$43,$44,$45,$46,$47,$48,$49,$4A,$4B,$4C
			FCB	$4D,$4E,$4F,$50,$51,$52,$53,$54,$55,$56,$58,$59,$5A
			FCB	$5B,$5C,$5D,$5E,$5F,$60,$61,$62,$63,$64,$65,$66,$67
			FCB	$68,$69,$6A,$6B,$6C,$6D,$6E,$6F,$70,$71,$72,$73,$74
			FCB	$75,$76,$77,$78,$79,$7A,$7B,$7C,$7D,$7E,$7F
ZA538			LDX	#M7D01		       
			LDAB	#$07		       
			STAB	M0097		       
ZA53F			PSHX			       
			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	ZA553		       
			TST	M6E38		       
			BEQ	ZA553		       
			TIM	#$40,M0041	       
			BNE	ZA578		       
			BRA	ZA573		       
ZA553			LDAA	M0097		       
			JSR	Z9A07		       
			TST	$3F,X		       
			BEQ	ZA560		       
			TST	$41,X		       
			BNE	ZA578		       
ZA560			LDX	#M793B		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			BMI	ZA573		       
			LDX	#M0041		       
			ABX			       
			TIM	#$40,$00,X	       
			BNE	ZA578		       
ZA573			PULX			       
			LDD	,X		       
			BRA	ZA5B9		       
ZA578			PULX			       
			LDD	,X		       
			STD	M0098		       
			SUBD	$10,X		       
			BEQ	ZA5B7		       
			BPL	ZA5A7		       
			BSR	ZA59A		       
			BEQ	ZA5B7		       
			NEGA			       
			LSRA			       
			LSRA			       
			INCA			       
			MUL			       
			STD	M0095		       
			LDD	$10,X		       
			SUBD	M0095		       
			XGDX			       
			CPX	M0098		       
			XGDX			       
			BCC	ZA5B9		       
			BRA	ZA5B7		       
ZA59A			PSHX			       
			LDX	#M77C6		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			PULX			       
			CMPB	#$FF		       
			RTS			       
ZA5A7			BSR	ZA59A		       
			BEQ	ZA5B7		       
			LSRA			       
			LSRA			       
			INCA			       
			MUL			       
			ADDD	$10,X		       
			XGDX			       
			CPX	M0098		       
			XGDX			       
			BCS	ZA5B9		       
ZA5B7			LDD	M0098		       
ZA5B9			STD	$10,X		       
			PSHX			       
			LDD	M0086		       
			PSHB			       
			LDX	#M78C3		       
			LDAB	M0097		       
			ASLB			       
			ABX			       
			PULB			       
			ADDD	,X		       
			LDX	#M77B6		       
			PSHB			       
			TST	>M0097		       
			BNE	ZA5DE		       
			LDAB	M7846		       
			ANDB	#$03		       
			CMPB	#$03		       
			BEQ	ZA5DE		       
			PULB			       
			BRA	ZA5F1		       
ZA5DE			LDAB	M0097		       
			ASLB			       
			ABX			       
			PULB			       
			ADDD	,X		       
			BVC	ZA5F1		       
			BCS	ZA5EE		       
			LDD	#M7FFF		       
			BRA	ZA5F1		       
ZA5EE			LDD	#M0000		       
ZA5F1			PULX			       
			ADDD	$10,X		       
ZA5F4			BLT	ZA5FE		       
ZA5F6			CMPA	#$60		       
			BCS	ZA602		       
			SUBA	#$0C		       
			BRA	ZA5F6		       
ZA5FE			ADDA	#$0C		       
			BRA	ZA5F4		       
ZA602			PSHB			       
			PSHX			       
			LDX	#MA2F0		       
			TAB			       
			ABX			       
			LDAA	,X		       
			PULX			       
			PULB			       
			ANDB	#$FC		       
			STD	M0081		       
			LDAA	#$28		       
			ADDA	M0097		       
			LDAB	M0081		       
			SEI			       
ZA618			BRN	ZA618		       
			STAA	OPZ_R0		       
ZA61D			BRN	ZA61D		       
			NOP			       
			STAB	OPZ_R1		       
			ADDA	#$08		       
			PSHX			       
			LDX	#M7933		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			PULX			       
			ANDB	#$01		       
			ORAB	M0082		       
ZA633			TST	OPZ_R1		       
			BMI	ZA633		       
			STAA	OPZ_R0		       
ZA63B			BRN	ZA63B		       
			NOP			       
			STAB	OPZ_R1		       
			CLI			       
			DEX			       
			DEX			       
			DEC	>M0097		       
			BMI	ZA64C		       
			JMP	ZA53F		       
ZA64C			RTS			       
ZA64D			CLR	>M0097		       
ZA650			LDAB	M0097		       
			ASLB			       
			LDX	#M7796		       
			ABX			       
			PSHX			       
			LDX	#M780E		       
			ABX			       
			LDD	,X		       
			PULX			       
			ADDD	,X		       
			BCC	ZA666		       
			LDD	#$FFFF		       
ZA666			STD	,X		       
			ADDD	#DDR2		       
			BNE	ZA685		       
			LDAB	M0097		       
			ASLB			       
			LDX	#M77A6		       
			ABX			       
			PSHX			       
			LDX	#M780E		       
			ABX			       
			LDD	,X		       
			PULX			       
			ADDD	,X		       
			BCC	ZA683		       
			LDD	#$FFFF		       
ZA683			STD	,X		       
ZA685			INC	>M0097		       
			LDAA	M0097		       
			CMPA	#$08		       
			BNE	ZA650		       
			RTS			       
ZA68F			CLR	>M0097		       
			TST	>M0091		       
			BEQ	ZA69B		       
			LDAA	#$04		       
			STAA	M0097		       
ZA69B			LDX	#M7D1B		       
			LDAB	M0097		       
			ABX			       
			LDAA	$18,X		       
			PSHX			       
			LDX	#M793B		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			BPL	ZA6B2		       
			PULX			       
			JMP	ZA75D		       
ZA6B2			STAB	M0093		       
			LDX	#M7D5B		       
			ABX			       
			STX	M0089		       
			LDAB	,X		       
			PULX			       
			MUL			       
			STAA	M00F4		       
			LDAA	$18,X		       
			SUBA	M00F4		       
			STAA	$08,X		       
			LDAA	,X		       
			PSHX			       
			LDX	M0089		       
			LDAB	$08,X		       
			PULX			       
			MUL			       
			STAA	$10,X		       
			LDAA	,X		       
			SUBA	$10,X		       
			PSHX			       
			LDX	M0089		       
			ADDA	$10,X		       
			PULX			       
			BCC	ZA6DF		       
			LDAA	#$FF		       
ZA6DF			COMA			       
			TAB			       
			PSHX			       
			LDX	#MA82B		       
			ABX			       
			LDAA	,X		       
			LDAB	M776D		       
			COMB			       
			LDX	#MA82B		       
			ABX			       
			ADDA	,X		       
			BCC	ZA6F8		       
			LDAA	#$FF		       
			BRA	ZA712		       
ZA6F8			LDAB	M776B		       
			ANDB	#$02		       
			BEQ	ZA712		       
			LDX	#M7753		       
			LDAB	M0093		       
			ABX			       
			LDAB	,X		       
			COMB			       
			LDX	#MA82B		       
			ABX			       
			ADDA	,X		       
			BCC	ZA712		       
			LDAA	#$FF		       
ZA712			PULX			       
			STAA	$10,X		       
			LDAB	$08,X		       
			COMB			       
			LDX	#MA82B		       
			ABX			       
			TAB			       
			CLRA			       
			ADDB	,X		       
			ROLA			       
			XGDX			       
			STX	M0093		       
			LDX	#M7893		       
			LDAB	M0097		       
			ASLB			       
			ABX			       
			LDD	,X		       
			PSHA			       
			PSHB			       
			LDD	M0093		       
			STD	,X		       
			PULB			       
			PULA			       
			SUBD	M0093		       
			BEQ	ZA75D		       
			BCC	ZA740		       
			COMA			       
			COMB			       
			ADDD	#DDR2		       
ZA740			XGDX			       
			CPX	#M0020		       
			BCS	ZA749		       
			CLRA			       
			BRA	ZA750		       
ZA749			XGDX			       
			LDX	#MA92B		       
			ABX			       
			LDAA	,X		       
ZA750			LDAB	M0097		       
			SEI			       
			STAB	OPZ_R0		       
ZA756			BRN	ZA756		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
ZA75D			INC	>M0097		       
			LDAB	M0097		       
			ANDB	#$03		       
			BEQ	ZA769		       
			JMP	ZA69B		       
ZA769			LDAB	#$03		       
			STAB	M0088		       
			STAB	M0097		       
			TST	>M0091		       
			BNE	ZA77C		       
			COM	>M0091		       
			CLR	>M0092		       
			BRA	ZA783		       
ZA77C			CLR	>M0091		       
			LDAB	#$04		       
			STAB	M0092		       
ZA783			LDAB	M0088		       
			ASLB			       
			ASLB			       
			ASLB			       
			ADDB	M0097		       
			ADDB	M0092		       
			STAB	M0090		       
			LDX	#M7853		       
			LDAB	M0090		       
			ABX			       
			LDAA	,X		       
			LDX	#M7D23		       
			LDAB	M0097		       
			ADDB	M0092		       
			ABX			       
			LDAB	,X		       
			MUL			       
			COMA			       
			LDX	#MA82B		       
			TAB			       
			ABX			       
			LDAA	,X		       
			LDX	#M7913		       
			LDAB	M0097		       
			ADDB	M0092		       
			ABX			       
			LDAB	,X		       
			ANDB	#$07		       
			SUBB	#$04		       
			BCS	ZA7C3		       
			BEQ	ZA7CB		       
			CMPB	#$03		       
			BCS	ZA7D2		       
			BRA	ZA7D7		       
ZA7C1			BRA	ZA783		       
ZA7C3			LDAB	M0088		       
			CMPB	#$03		       
			BNE	ZA7E5		       
			BRA	ZA7D7		       
ZA7CB			TIM	#$02,M0088	       
			BEQ	ZA7E5		       
			BRA	ZA7D7		       
ZA7D2			TST	>M0088		       
			BEQ	ZA7E5		       
ZA7D7			LDX	#M7D2B		       
			LDAB	M0097		       
			ADDB	M0092		       
			ABX			       
			ADDA	,X		       
			BCC	ZA7E5		       
			LDAA	#$FF		       
ZA7E5			LDX	#M7873		       
			LDAB	M0090		       
			ABX			       
			STAA	,X		       
			LDX	#M78A3		       
			LDAB	M0090		       
			ABX			       
			ADDB	#$60		       
			PSHA			       
			ADDA	,X		       
			BCC	ZA7FC		       
			LDAA	#$FF		       
ZA7FC			PSHA			       
			LDAA	M776B		       
			ANDA	#$02		       
			PULA			       
			BEQ	ZA80D		       
			TST	M7767		       
			BEQ	ZA80D		       
			CLC			       
			BRA	ZA80E		       
ZA80D			SEC			       
ZA80E			RORA			       
			SEI			       
			STAB	OPZ_R0		       
ZA813			BRN	ZA813		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			PULA			       
			DEX			       
			DEC	>M0097		       
			BPL	ZA7C1		       
			LDAB	#$03		       
			STAB	M0097		       
			DEC	>M0088		       
			BPL	ZA7C1		       
			RTS			       
MA82B			FCB	$FF,$FF,$E0,$CD,$C0,$B5,$AD,$A6,$A0,$9A,$95,$91,$8D
			FCB	$89,$86,$82,$80,$7D,$7A,$78,$75,$73,$71,$6F,$6D,$6B
			FCB	$69,$67,$66,$64,$62,$61,$60,$5E,$5D,$5B,$5A,$59,$58
			FCB	$56,$55,$54,$53,$52,$51,$50,$4F,$4E,$4D,$4C,$4B,$4A
			FCB	$49,$48,$47,$46,$46,$45,$44,$43,$42,$42,$41,$40,$40
			FCB	$3F,$3E,$3D,$3D,$3C,$3B,$3B,$3A,$39,$39,$38,$38,$37
			FCB	$36,$36,$35,$35,$34,$33,$33,$32,$32,$31,$31,$30,$30
			FCB	$2F,$2F,$2E,$2E,$2D,$2D,$2C,$2C,$2B,$2B,$2A,$2A,$2A
			FCB	$29,$29,$28,$28,$27,$27,$26,$26,$26,$25,$25,$24,$24
			FCB	$24,$23,$23,$22,$22,$22,$21,$21,$21,$20,$20,$20,$1F
			FCB	$1F,$1E,$1E,$1E,$1D,$1D,$1D,$1C,$1C,$1C,$1B,$1B,$1B
			FCB	$1A,$1A,$1A,$19,$19,$19,$18,$18,$18,$18,$17,$17,$17
			FCB	$16,$16,$16,$15,$15,$15,$15,$14,$14,$14,$13,$13,$13
			FCB	$13,$12,$12,$12,$12,$11,$11,$11,$11,$10,$10,$10,$10
			FCB	$0F,$0F,$0F,$0F,$0E,$0E,$0E,$0E,$0D,$0D,$0D,$0D,$0C
			FCB	$0C,$0C,$0C,$0B,$0B,$0B,$0B,$0A,$0A,$0A,$0A,$09,$09
			FCB	$09,$09,$08,$08,$08,$08,$08,$07,$07,$07,$07,$06,$06
			FCB	$06,$06,$06,$05,$05,$05,$05,$05,$04,$04,$04,$04,$04
			FCB	$03,$03,$03,$03,$03,$02,$02,$02,$02,$02,$02,$01,$01
			FCB	$01,$01,$01,$00,$00,$00,$00,$00,$00
MA92B			FCB	$30,$30,$30,$20,$1C,$1B,$1A,$19,$18,$17,$16,$15,$14
			FCB	$13,$12,$11,$10,$0F,$0E,$0D,$0C,$09,$09,$09,$09,$08
			FCB	$08,$08,$08,$06,$04,$02
ZA94B			TST	>M0091		       
			BNE	ZA953		       
			CLRB			       
			BRA	ZA955		       
ZA953			LDAB	#$01		       
ZA955			STAB	M0097		       
			LDX	#M7D15		       
			LDAB	M0097		       
			ABX			       
			LDAA	,X		       
			LDAB	M7850		       
			BEQ	ZA977		       
			CMPB	#$FF		       
			BEQ	ZA977		       
			TST	>M0097		       
			BNE	ZA972		       
			LDAB	M784F		       
			BRA	ZA984		       
ZA972			LDAB	M784E		       
			BRA	ZA984		       
ZA977			TST	>M0097		       
			BNE	ZA981		       
			LDAB	M784E		       
			BRA	ZA984		       
ZA981			LDAB	M784F		       
ZA984			LDX	#M7D53		       
			ABX			       
			STAB	M0089		       
			LDAB	,X		       
			MUL			       
			STAA	M00F2		       
			LDX	#M7D17		       
			LDAB	M0097		       
			ABX			       
			LDAA	,X		       
			LDX	#M7D5B		       
			LDAB	M0089		       
			ABX			       
			LDAB	,X		       
			MUL			       
			STAA	M00F3		       
			LDX	#M7D19		       
			LDAB	M0097		       
			ABX			       
			LDAA	,X		       
			LDX	#M7D63		       
			LDAB	M0089		       
			ABX			       
			LDAB	,X		       
			MUL			       
			STAA	M00F5		       
			LDAA	M00F2		       
			ADDA	M00F3		       
			BCS	ZA9BF		       
			ADDA	M00F5		       
			BCC	ZA9C1		       
ZA9BF			LDAA	#$FF		       
ZA9C1			PSHA			       
			LDX	#M7D13		       
			LDAB	M0097		       
			ABX			       
			LDAA	,X		       
			LDX	#M7850		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			BMI	ZA9DC		       
			LDX	#M77A6		       
			ABX			       
			LDAB	,X		       
			BRA	ZA9DD		       
ZA9DC			CLRB			       
ZA9DD			MUL			       
			PULB			       
			ABA			       
			BCC	ZA9E4		       
			LDAA	#$FF		       
ZA9E4			TAB			       
			COMB			       
			LDX	#MA82B		       
			ABX			       
			LDAA	,X		       
			LDX	#M7850		       
			LDAB	M0097		       
			ABX			       
			LDAB	,X		       
			BMI	ZAA02		       
			LDX	#M7873		       
			ABX			       
			ADDA	,X		       
			BCC	ZAA00		       
			LDAA	#$FF		       
ZAA00			SUBA	,X		       
ZAA02			LSRA			       
			TST	>M0097		       
			BNE	ZAA0C		       
			LDAB	#$19		       
			BRA	ZAA0E		       
ZAA0C			LDAB	#$17		       
ZAA0E			SEI			       
			STAB	OPZ_R0		       
ZAA12			BRN	ZAA12		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			RTS			       
ZAA1A			TST	>M0091		       
			BNE	ZAA24		       
			CLR	>M0092		       
			BRA	ZAA28		       
ZAA24			LDAB	#$04		       
			STAB	M0092		       
ZAA28			CLR	>M0097		       
ZAA2B			LDX	#M793B		       
			LDAB	M0097		       
			ADDB	M0092		       
			ABX			       
			LDAB	,X		       
			BMI	ZAA6F		       
			LDX	#M7D53		       
			ABX			       
			STX	M0089		       
			LDX	#M7D3B		       
			LDAB	M0097		       
			ADDB	M0092		       
			ABX			       
			LDAA	,X		       
			PSHX			       
			LDX	M0089		       
			LDAB	,X		       
			PULX			       
			MUL			       
			STAA	$38,X		       
			LDAA	$10,X		       
			PSHX			       
			LDX	M0089		       
			LDAB	$10,X		       
			PULX			       
			MUL			       
			PSHA			       
			LDAA	$08,X		       
			PSHX			       
			LDX	M0089		       
			LDAB	$08,X		       
			PULX			       
			MUL			       
			PULB			       
			ABA			       
			BCS	ZAA6B		       
			ADDA	$38,X		       
			BCC	ZAA6D		       
ZAA6B			LDAA	#$FF		       
ZAA6D			STAA	$38,X		       
ZAA6F			INC	>M0097		       
			LDAB	M0097		       
			CMPB	#$04		       
			BNE	ZAA2B		       
			TST	>M0091		       
			BNE	ZAA82		       
			CLR	>M0097		       
			BRA	ZAA86		       
ZAA82			LDAB	#$01		       
			STAB	M0097		       
ZAA86			LDX	#M7D7B		       
			TST	>M0097		       
			BNE	ZAA93		       
			LDAB	M7850		       
			BRA	ZAA96		       
ZAA93			LDAB	M7851		       
ZAA96			BPL	ZAA9B		       
			CLRA			       
			BRA	ZAADD		       
ZAA9B			ABX			       
			LDAA	,X		       
			LDX	#M77A6		       
			ASLB			       
			ABX			       
			LDAB	,X		       
			MUL			       
			LDAB	M7850		       
			BEQ	ZAABE		       
			CMPB	#$FF		       
			BEQ	ZAABE		       
			TST	>M0097		       
			BNE	ZAAB9		       
			LDAB	M784F		       
			BRA	ZAACB		       
ZAAB9			LDAB	M784E		       
			BRA	ZAACB		       
ZAABE			TST	>M0097		       
			BNE	ZAAC8		       
			LDAB	M784E		       
			BRA	ZAACB		       
ZAAC8			LDAB	M784F		       
ZAACB			BMI	ZAADD		       
			LDX	#M7EF1		       
			ABX			       
			LDAB	,X		       
			LDX	#M7D73		       
			ABX			       
			ADDA	,X		       
			BCC	ZAADD		       
			LDAA	#$FF		       
ZAADD			LSRA			       
			ORAA	#$80		       
			TST	>M0097		       
			BNE	ZAAE9		       
			LDAB	#$19		       
			BRA	ZAAEB		       
ZAAE9			LDAB	#$17		       
ZAAEB			SEI			       
			STAB	OPZ_R0		       
ZAAEF			BRN	ZAAEF		       
			NOP			       
			STAA	OPZ_R1		       
			CLI			       
			RTS			       
ZAAF7			CLR	>M0097		       
ZAAFA			LDAB	M0097		       
			BEQ	ZAB0A		       
			LDX	#M7846		       
			ABX			       
			LDAA	,X		       
			ANDA	#$03		       
			CMPA	#$03		       
			BNE	ZAB77		       
ZAB0A			LDX	#M7836		       
			ASLB			       
			ABX			       
			PSHX			       
			LDD	,X		       
			LDX	#M781E		       
			PSHB			       
			LDAB	M0097		       
			ASLB			       
			ABX			       
			PULB			       
			ADDD	,X		       
			PULX			       
			STD	,X		       
			ASLD			       
			BCC	ZAB24		       
			COMA			       
ZAB24			TST	>M0097		       
			BNE	ZAB2C		       
			STAA	M776A		       
ZAB2C			ADDA	#$80		       
			PSHA			       
			LDX	#M7D73		       
			LDAB	M0097		       
			ABX			       
			LDAA	$08,X		       
			ADDA	,X		       
			BEQ	ZAB76		       
			BCC	ZAB3F		       
			LDAA	#$FF		       
ZAB3F			LDX	#M77A6		       
			LDAB	M0097		       
			ASLB			       
			ABX			       
			LDAB	,X		       
			MUL			       
			TAB			       
			PULA			       
			TSTA			       
			BMI	ZAB51		       
			MUL			       
			BRA	ZAB58		       
ZAB51			NEGA			       
			MUL			       
			COMA			       
			COMB			       
			ADDD	#DDR2		       
ZAB58			TAB			       
			BMI	ZAB5E		       
			CLRA			       
			BRA	ZAB60		       
ZAB5E			LDAA	#$FF		       
ZAB60			LDX	#M77B6		       
			PSHB			       
			LDAB	M0097		       
			ASLB			       
			ABX			       
			PULB			       
			ASLD			       
			STD	,X		       
			LDAA	M0097		       
			INCA			       
			STAA	M0097		       
			CMPA	#$08		       
			BNE	ZAAFA		       
			RTS			       
ZAB76			PULA			       
ZAB77			LDD	#M0000		       
			BRA	ZAB60		       

; Computed relative jump based on the data following
; the JSR instruction.

; Data is pairs of <offset, value> with the values in
; ascending order except that the last value is always 0x00

JMPOFF1 		PULX			       
ZAB7D			TST	$01,X		       
			BEQ	ZAB89		       
			CMPB	$01,X		       
			BCS	ZAB89		       
			INX			       
			INX			       
			BRA	ZAB7D		       
ZAB89			PSHB			       
			LDAB	,X		       
			ABX			       
			PULB			       
			JMP	,X		       

; Computed relative jump.
; Data following a JSR to this address contains a table of
; offsets.  A is added to the (new) PC, the content of the
; location is read and then also added to the PC

JMPOFFA 		PULX			       
			PSHB			       
			TAB			       
			BRA	ZAB97		       

; Computed relative jump.
; Data following a JSR to this address contains a table of
; offsets.  B is added to the (new) PC, the content of the
; location is read and then also added to the PC

JMPOFFB 		PULX			       
			PSHB			       
ZAB97			ABX			       
			LDAB	,X		       
			ABX			       
			PULB			       
			JMP	,X		       
ZAB9E			CMPB	#$0D		       
			BEQ	ZABC2		       
			CMPB	#$0E		       
			BEQ	ZABC2		       
			LDAA	#$01		       
			STAA	M009A		       
			LDAA	M776D		       
			LSRA			       
			CMPB	#$0B		       
			BEQ	ZABB9		       
			CMPA	#$7F		       
			BEQ	ZABBD		       
			INCA			       
			BRA	ZABBD		       
ZABB9			TSTA			       
			BEQ	ZABBD		       
			DECA			       
ZABBD			ASLA			       
			STAA	M776D		       
ZABC1			RTS			       
ZABC2			CLR	>M009A		       
			BRA	ZABC1		       
ZABC7			TST	>M00AE		       
			BNE	ZABDD		       
			LDAB	M7772		       
			ANDB	#$04		       
			BNE	ZABD8		       
			TST	M7793		       
			BNE	ZABDD		       
ZABD8			CLR	>M006E		       
			BRA	ZAC19		       
ZABDD			LDAB	M7772		       
			ANDB	#$03		       
			LDAA	M006E		       
			INCA			       
			ANDA	#$3F		       
			STAA	M006E		       
			BEQ	ZAC05		       
			CMPA	#$20		       
			BNE	ZAC19		       
			TST	>M00AE		       
			BNE	ZAC1A		       
			TSTB			       
			BEQ	ZAC00		       
			CMPB	#$01		       
			BNE	ZAC19		       
			AIM	#$BF,PORT6	       
			BRA	ZAC19		       
ZAC00			AIM	#$7F,PORT6	       
			BRA	ZAC19		       
ZAC05			TST	>M00AE		       
			BNE	ZAC23		       
			TSTB			       
			BEQ	ZAC16		       
			CMPB	#$01		       
			BNE	ZAC19		       
			OIM	#$40,PORT6	       
			BRA	ZAC19		       
ZAC16			OIM	#$80,PORT6	       
ZAC19			RTS			       
ZAC1A			CMPB	#$02		       
			BNE	ZAC19		       
			AIM	#$DF,PORT6	       
			BRA	ZAC19		       
ZAC23			CMPB	#$02		       
			BNE	ZAC19		       
			OIM	#$20,PORT6	       
			DEC	>M00AE		       
			BRA	ZAC19		       
ZAC2F			JSR	JMPOFF1 	       
			FCB	$16,$01,$11,$04,$0B,$06,$04,$0B,$0E,$00
			COMB			       
			SUBB	#$F0		       
			BRA	ZAC48		       
			SUBB	#$03		       
			BRA	ZAC48		       
			COMB			       
			SUBB	#$F2		       
ZAC48			TST	>M00A3		       
			BEQ	ZAC58		       
			CMPB	M00A0		       
			BEQ	ZAC58		       
			CMPB	#$0D		       
			BCC	ZAC5A		       
			CLRB			       
			BRA	ZAC5A		       
ZAC58			STAB	M00A0		       
ZAC5A			CLR	>M00A1		       
			CLR	>M00A2		       
			CLR	>M00A3		       
			RTS			       
HI_CALL_17		LDAA	PORT2		       
			COMA			       
			ANDA	#$E0		       
			LSRA			       
			LSRA			       
			LSRA			       
			LSRA			       
			LSRA			       
			STAA	M009D		       
			LDAA	PORT5		       
			COMA			       
			ANDA	#$F2		       
			LSRA			       
			CLR	>M009E		       
			LSRA			       
			BCC	ZAC7F		       
			OIM	#$04,M009E	       
ZAC7F			ASLA			       
			ORAA	M009D		       
			STAA	M009D		       
			LDAA	PORT6		       
			COMA			       
			ANDA	#$07		       
			LSRA			       
			BCC	ZAC8F		       
			OIM	#$80,M009D	       
ZAC8F			ORAA	M009E		       
			STAA	M009E		       
			CLRB			       
			LDX	#M009B		       
			LDAA	M009D		       
			CMPA	,X		       
			BNE	ZACA8		       
			INX			       
			INCB			       
			LDAA	M009E		       
			CMPA	,X		       
			BNE	ZACA8		       
			JMP	ZAD0C		       
ZACA8			CMPB	#$01		       
			BNE	ZACBF		       
			PSHA			       
			EORA	,X		       
			ANDA	#$04		       
			PULA			       
			BEQ	ZACBF		       
			STAA	,X		       
			LDAB	#$03		       
			BITA	#$04		       
			BNE	ZAC48		       
			INCB			       
			BRA	ZAC48		       
ZACBF			ASLB			       
			ASLB			       
			ASLB			       
			PSHB			       
			EORA	,X		       
			BEQ	ZAD0C		       
			BITA	,X		       
			BNE	ZACE6		       
			CLR	>M0071		       
ZACCE			INC	>M0071		       
			LSRA			       
			BCC	ZACCE		       
			PULB			       
			ADDB	M0071		       
			CLRA			       
			SEC			       
ZACD9			ROLA			       
			DEC	>M0071		       
			BNE	ZACD9		       
			ORAA	,X		       
			STAA	,X		       
			JMP	ZAC2F		       
ZACE6			ANDA	,X		       
			TAB			       
			EORA	,X		       
			STAA	,X		       
			PULA			       
			TSTA			       
			BNE	ZAD0C		       
			ANDB	#$06		       
			BEQ	ZAD0C		       
			CMPB	#$06		       
			BEQ	ZAD07		       
			BITB	#$02		       
			BEQ	ZAD02		       
			LDAB	#$0D		       
			JMP	ZAC48		       
ZAD02			LDAB	#$0E		       
			JMP	ZAC48		       
ZAD07			AIM	#$FB,$00,X	       
			BRA	ZAD02		       
ZAD0C			LDAB	M00A0		       
			JSR	JMPOFF1 	       
			FCB	$0F,$01,$11,$03,$0B,$08,$D8,$0A,$04,$0C,$05,$00
			JMP	ZAE50		       
ZAD20			CLRB			       
			JMP	ZAC48		       
			TBA			       
			LDAB	M7772		       
			CMPB	#$02		       
			BEQ	ZAD30		       
			CMPB	#$06		       
			BNE	ZAD33		       
ZAD30			JMP	ZADB6		       
ZAD33			CMPB	#$09		       
			BCS	ZAD3B		       
			CMPB	#$12		       
			BCS	ZADB6		       
ZAD3B			LDAB	M7774		       
			JSR	JMPOFF1 	       
			FCB	$75,$02,$32,$05,$71,$07,$2E,$08,$6D,$09,$2A,$0B,$18
			FCB	$14,$67,$15,$32,$16,$12,$19,$20,$1B,$10,$1C,$51,$1D
			FCB	$0A,$1F,$59,$20,$06,$28,$55,$36,$02,$00
ZAD65			BRA	ZAD20		       
			LDAB	M7788		       
			CMPB	#$02		       
			BNE	ZAD65		       
			TST	>M00A4		       
			BNE	ZAD65		       
			BRA	ZADB6		       
			LDAB	M7788		       
			CMPB	#$01		       
			BNE	ZAD65		       
			TST	>M00A4		       
			BNE	ZAD65		       
			BRA	ZADB6		       
			LDAB	M7788		       
			CMPB	#$01		       
			BEQ	ZAD9C		       
			CMPB	#$02		       
			BNE	ZAD65		       
			TST	>M00A4		       
			BNE	ZAD65		       
			LDAB	M7789		       
			CMPB	#$0C		       
			BNE	ZAD65		       
			BRA	ZADB6		       
ZAD9C			TST	>M00A4		       
			BNE	ZAD65		       
			LDAB	M7789		       
			CMPB	#$08		       
			BCS	ZADB6		       
			BRA	ZAD65		       
			LDAB	M7788		       
			CMPB	#$02		       
			BNE	ZAD65		       
			TST	>M00A4		       
			BNE	ZAD65		       
ZADB6			CMPA	#$02		       
			BEQ	ZADDE		       
			TIM	#$08,M009B	       
			BEQ	ZAD65		       
			LDAB	#$01		       
ZADC1			LDX	M00A1		       
			INX			       
			STX	M00A1		       
			TST	>M00A3		       
			BNE	ZADE7		       
			CPX	#M0100		       
			BCC	ZADD3		       
			JMP	ZAE88		       
ZADD3			LDAA	#$01		       
			STAA	M00A3		       
ZADD7			CLR	>M00A1		       
			CLR	>M00A2		       
			RTS			       
ZADDE			TIM	#$10,M009B	       
			BEQ	ZAD65		       
			LDAB	#$02		       
			BRA	ZADC1		       
ZADE7			CPX	#M0002		       
			BCC	ZADD7		       
			JMP	ZAE88		       
			TST	>M00A4		       
			BNE	ZAE62		       
			CMPB	#$09		       
			BEQ	ZAE01		       
			TIM	#$40,M009B	       
			BEQ	ZAE62		       
			LDAB	#$08		       
			BRA	ZAE08		       
ZAE01			TIM	#$20,M009B	       
			BEQ	ZAE62		       
			LDAB	#$09		       
ZAE08			LDAA	M7772		       
			BNE	ZAE2F		       
			LDAA	M7788		       
			CMPA	#$02		       
			BNE	ZAE2F		       
			LDAA	M7774		       
			CMPA	#$15		       
			BNE	ZAE24		       
			LDAA	M7789		       
			CMPA	#$0C		       
			BNE	ZAE2F		       
			BRA	ZADC1		       
ZAE24			CMPA	#$1C		       
			BNE	ZAE2F		       
			LDAA	M7789		       
			CMPA	#$02		       
			BEQ	ZADC1		       
ZAE2F			LDX	M00A1		       
			INX			       
			STX	M00A1		       
			TST	>M00A3		       
			BNE	ZAE49		       
			CPX	#M0100		       
			BCS	ZAE88		       
			LDAA	#$01		       
			STAA	M00A3		       
ZAE42			CLR	>M00A1		       
			CLR	>M00A2		       
			RTS			       
ZAE49			CPX	#M0045		       
			BCS	ZAE88		       
			BRA	ZAE42		       
ZAE50			CMPB	#$0B		       
			BEQ	ZAE5D		       
			TIM	#$04,M009B	       
			BEQ	ZAE62		       
			LDAB	#$0A		       
			BRA	ZAE67		       
ZAE5D			TIM	#$02,M009B	       
			BNE	ZAE65		       
ZAE62			JMP	ZAD65		       
ZAE65			LDAB	#$0B		       
ZAE67			LDX	M00A1		       
			INX			       
			STX	M00A1		       
			TST	>M00A3		       
			BNE	ZAE81		       
			CPX	#M0100		       
			BCS	ZAE88		       
			LDAA	#$01		       
			STAA	M00A3		       
ZAE7A			CLR	>M00A1		       
			CLR	>M00A2		       
			RTS			       
ZAE81			CPX	#M0004		       
			BCS	ZAE88		       
			BRA	ZAE7A		       
ZAE88			CLRB			       
			RTS			       
ZAE8A			STX	M00A7		       
ZAE8C			LDX	M00A9		       
			LDAA	,X		       
			INX			       
			STX	M00A9		       
			LDX	M00A7		       
			STAA	,X		       
			INX			       
			STX	M00A7		       
			DECB			       
			BNE	ZAE8C		       
			RTS			       
LO_CALL_06		STX	M00A7		       
			LDAB	#$06		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			RTS			       
LO_CALL_00		STX	M00A7		       
			CLRB			       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			RTS			       
LO_CALL_08		LDAB	#$08		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			RTS			       
LO_CALL_0A		LDAB	#$0A		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			RTS			       
LO_CALL_09		LDAB	#$09		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			RTS			       
LO_CALL_07		STX	M00A7		       
			LDAB	#$07		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			RTS			       
ZAED3			STX	M00A7		       
			LDAB	#$05		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			RTS			       
ZAEDD			LDAB	M7773		       
ZAEE0			CMPB	#$A0		       
			BCC	ZAEF1		       
			CMPB	#$20		       
			BCC	ZAEF5		       
			LDAA	#$4E		       
			MUL			       
			ADDD	#M6001		       
ZAEEE			XGDX			       
			BRA	ZAEF4		       
ZAEF1			LDX	#INIT_VOICE	       
ZAEF4			RTS			       
ZAEF5			SUBB	#$20		       
			LDAA	#$4E		       
			MUL			       
			ADDD	#$D1C0		       
			BRA	ZAEEE		       
ZAEFF			LDAB	M7779		       
			CMPB	#$18		       
			BCC	ZAF0F		       
			LDAA	#$4C		       
			MUL			       
			ADDD	#M6E45		       
			XGDX			       
			BRA	ZAF12		       
ZAF0F			LDX	#MAF13		       
ZAF12			RTS			       
MAF13			FCB	$68,$00,$20,$00,$7F,$07,$18,$63,$60,$00,$41,$00,$7F
			FCB	$07,$18,$63,$60,$00,$62,$00,$7F,$07,$18,$63,$60,$00
			FCB	$63,$00,$7F,$07,$18,$63,$60,$00,$64,$00,$7F,$07,$18
			FCB	$63,$60,$00,$65,$00,$7F,$07,$18,$63,$60,$00,$66,$00
			FCB	$7F,$07,$18,$63,$60,$00,$67,$00,$7F,$07,$18,$63,$00
			FCB	$00		       
			FCC	"SINGLE    "	       
ZAF5F			LDAB	M777B		       
ZAF62			LDAA	#$0D		       
ZAF64			LDX	#MA350		       
			ABX			       
			LDAB	,X		       
			MUL			       
			BSR	ZAF6F		       
			ABX			       
			RTS			       
ZAF6F			XGDX			       
			LDAB	M778B		       
			LDAA	#$6E		       
			MUL			       
			ADDD	#M6A67		       
			XGDX			       
			RTS			       
ZAF7B			LDAA	M7772		       
			ANDA	#$07		       
			BEQ	ZAF92		       
			CMPA	#$03		       
			BEQ	ZAF92		       
			BCS	ZAF8D		       
			CMPA	#$07		       
			BEQ	ZAF92		       
			DECA			       
ZAF8D			ADDB	#$05		       
			DECA			       
			BNE	ZAF8D		       
ZAF92			CMPB	#$1E		       
			BCS	ZAF97		       
			CLRB			       
ZAF97			CLR	>M00AE		       
			JSR	JMPOFFB 	       
			FCB	$5C,$6E,$40,$E2,$F9,$3E,$69,$C2,$71,$F8,$49,$64,$C5
			FCB	$DA,$28,$4D,$5F,$31,$18,$11,$48,$5A,$1A,$0A,$0F,$05
			FCB	$55,$18,$11,$1F        
			JMP	ZB127		       
			JMP	ZB1AE		       
			JMP	ZB164		       
			JMP	ZB168		       
			JMP	HI_CALL_14	       
			JMP	ZB14E		       
			JMP	ZB133		       
			JMP	ZB136		       
			JSR	ZC94D		       
			JMP	ZB179		       
ZAFD9			JSR	ZC94D		       
			JMP	ZB0C0		       
ZAFDF			RTS			       
			TST	M7793		       
			BNE	ZB00B		       
			LDAA	M777B		       
			STAA	M777C		       
			CLR	>M0059		       
			BRA	ZAFF9		       
			LDAA	M7773		       
			STAA	M777F		       
			CLR	>M00A5		       
ZAFF9			LDAA	M756D		       
			ANDA	#$01		       
			INCA			       
			ASLA			       
			ASLA			       
			ASLA			       
			ORAA	M7772		       
			STAA	M7772		       
ZB008			JSR	ZE10E		       
ZB00B			RTS			       
			LDAA	#$07		       
			ANDA	M7772		       
			STAA	M7772		       
			BRA	ZB008		       
			LDAA	M7792		       
			BEQ	ZAFDF		       
			TST	M7793		       
			BNE	ZB045		       
			LDAA	#$07		       
			ANDA	M7772		       
			STAA	M7772		       
			LDAA	#$01		       
			STAA	M7793		       
			JSR	ZE10E		       
			TST	M756E		       
			BNE	ZB042		       
			LDAB	#$01		       
			STAB	M756E		       
			JSR	ZB774		       
			CLR	M756E		       
			BRA	ZB00B		       
ZB042			JMP	ZB774		       
ZB045			CLR	M7793		       
			JSR	ZE10E		       
			TST	M756E		       
			BNE	ZB05D		       
			LDAB	#$01		       
			STAB	M756E		       
			JSR	ZC2BC		       
			CLR	M756E		       
			BRA	ZB060		       
ZB05D			JSR	ZC2BC		       
ZB060			LDX	M7781		       
			JMP	ZE10C		       
			TST	M7793		       
			BNE	ZB0BF		       
			JSR	ZB115		       
			CLR	M7772		       
			LDAA	#$FF		       
			STAA	M7790		       
			CLR	>M009A		       
			JSR	ZE10E		       
			LDAB	M7775		       
			JMP	ZB1DD		       
ZB082			BSR	ZB0EA		       
ZB084			LDAA	#$01		       
			STAA	M7772		       
			LDAA	#$FF		       
			STAA	M7790		       
			CLR	>M009A		       
			JSR	ZE10E		       
			LDAB	M7776		       
			JMP	ZB1DD		       
ZB09A			BSR	ZB0EA		       
			BRA	ZB0A5		       
			TST	M7793		       
			BNE	ZB0BF		       
			BSR	ZB115		       
ZB0A5			LDAA	#$02		       
			STAA	M7772		       
			CLR	M778C		       
			CLR	M7790		       
			LDD	#M0101		       
			STD	M776E		       
			STD	M7770		       
			JSR	ZE10F		       
			JSR	ZE10E		       
ZB0BF			RTS			       
ZB0C0			LDAA	#$02		       
			STAA	M7772		       
			CLR	M778C		       
			CLR	M7790		       
			JSR	ZE10E		       
			LDX	#M69C1		       
			TST	M756E		       
			BNE	ZB0E3		       
			LDAB	#$01		       
			STAB	M756E		       
			JSR	ZB7A2		       
			CLR	M756E		       
			BRA	ZB0E6		       
ZB0E3			JSR	ZB7A2		       
ZB0E6			JSR	ZC7C2		       
			RTS			       
ZB0EA			LDAA	M7774		       
			CMPA	#$1F		       
			BCC	ZB0F5		       
			CMPA	#$14		       
			BCC	ZB0F7		       
ZB0F5			LDAA	#$14		       
ZB0F7			STAA	M7775		       
			CLR	>M00A6		       
			CLR	M7788		       
			CLR	M778C		       
			CMPA	#$19		       
			BCS	ZB114		       
			CMPA	#$1C		       
			BCC	ZB114		       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			JSR	Z91FE		       
ZB114			RTS			       
ZB115			LDAA	M7774		       
			CMPA	#$0B		       
			BCS	ZB11D		       
			CLRA			       
ZB11D			STAA	M7776		       
			CLR	M7788		       
			CLR	M778C		       
			RTS			       
ZB127			LDAA	M7779		       
			STAA	M777A		       
			CLR	>M00A5		       
			JMP	ZAFF9		       
ZB133			JSR	ZB1C6		       
ZB136			LDAA	#$04		       
			STAA	M7772		       
			LDAA	#$FF		       
			STAA	M7790		       
			CLR	>M009A		       
			JSR	ZE10E		       
			LDAB	M7777		       
			JMP	ZB1DD		       
HI_CALL_14		BSR	ZB1AF		       
ZB14E			LDAA	#$05		       
			STAA	M7772		       
			LDAA	#$FF		       
			STAA	M7790		       
			CLR	>M009A		       
			JSR	ZE10E		       
			LDAB	M7778		       
			JMP	ZB1DD		       
ZB164			BSR	ZB1AF		       
			BRA	ZB16A		       
ZB168			BSR	ZB1C6		       
ZB16A			LDAA	#$06		       
			STAA	M7772		       
			CLR	M778C		       
			CLR	M7790		       
			JSR	ZE10E		       
			RTS			       
ZB179			LDAA	#$06		       
			STAA	M7772		       
			CLR	M778C		       
			CLR	M7790		       
			JSR	ZE10E		       
			LDX	#M6A67		       
			STX	M00A9		       
			LDX	#M69C1		       
			JSR	LO_CALL_06	       
			TST	M756E		       
			BNE	ZB1A4		       
			LDAB	#$01		       
			STAB	M756E		       
			JSR	ZB805		       
			CLR	M756E		       
			BRA	ZB1A7		       
ZB1A4			JSR	ZB805		       
ZB1A7			JSR	ME383_via_cvec_d38d    
			JSR	ZC7C2		       
			RTS			       
ZB1AE			RTS			       
ZB1AF			LDAA	M7774		       
			CMPA	#$3F		       
			BCC	ZB1BA		       
			CMPA	#$3C		       
			BCC	ZB1BC		       
ZB1BA			LDAA	#$3C		       
ZB1BC			STAA	M7777		       
			CLR	M7788		       
			CLR	M778C		       
			RTS			       
ZB1C6			LDAA	M7774		       
			CMPA	#$36		       
			BCC	ZB1D1		       
			CMPA	#$28		       
			BCC	ZB1D3		       
ZB1D1			LDAA	#$28		       
ZB1D3			STAA	M7778		       
			CLR	M7788		       
			CLR	M778C		       
			RTS			       
ZB1DD			PSHB			       
			JSR	ZB6BB		       
			PULB			       
			LDAA	#$01		       
			STAA	M7787		       
			TST	M7788		       
			BEQ	ZB1EF		       
			JMP	ZB339		       
ZB1EF			TBA			       
			JSR	JMPOFF1 	       
			FCB	$34,$01,$4D,$02,$BD,$05,$76,$07,$B9,$08,$72,$09,$B5
			FCB	$0B,$22,$14,$B5,$15,$AF,$16,$96,$18,$AB,$1F,$96,$20
			FCB	$16,$28,$C8,$33,$F9,$34,$C4,$35,$0F,$36,$0C,$3C,$99
			FCB	$3D,$99,$3E,$7C,$3F,$04,$46,$93,$00
ZB223			RTS			       
			JMP	ZB326		       
			STAB	M7774		       
			LDAB	M778C		       
			BEQ	ZB23F		       
			DECB			       
ZB230			STAB	M777B		       
ZB233			LDX	#M776E		       
			ABX			       
			STX	M7781		       
			LDAB	#$01		       
			JMP	ZB2CB		       
ZB23F			CLRB			       
			BRA	ZB245		       
			STAB	M7774		       
ZB245			ASLB			       
			LDX	#MB61E		       
ZB249			ABX			       
			LDD	,X		       
ZB24C			STAB	M7783		       
			TAB			       
			CMPB	#$6E		       
			BCS	ZB256		       
			ANDB	#$7F		       
ZB256			STAB	M7787		       
			JSR	ZAF6F		       
			STX	M7784		       
			ABX			       
			TSTA			       
			BPL	ZB266		       
			JSR	ZB690		       
ZB266			STX	M7781		       
			CLR	>M00A5		       
			JMP	ZB560		       
			STAB	M7774		       
			LDAB	M778C		       
			CMPB	#$04		       
			BCS	ZB284		       
			CLRB			       
			JSR	ZB284		       
			LDAB	M778C		       
			SUBB	#$04		       
			BRA	ZB230		       
ZB284			STAB	M777B		       
			JSR	ZE110		       
			LDAB	M7774		       
			CMPB	#$08		       
			BEQ	ZB295		       
			SUBB	#$03		       
			BRA	ZB245		       
ZB295			LDAB	#$04		       
			BRA	ZB245		       
			LDAA	#$02		       
			BRA	ZB2BA		       
			SUBA	#$14		       
			BRA	ZB2BA		       
			STAB	M7774		       
			LDX	#M7740		       
			LDAB	M778C		       
			ABX			       
			STX	M7781		       
			LDAB	#$7F		       
			BRA	ZB2CB		       
			BRA	ZB2B4		       
ZB2B4			LDAA	#$01		       
			BRA	ZB2BA		       
			SUBA	#$14		       
ZB2BA			STAB	M7774		       
ZB2BD			LDAB	#$03		       
			MUL			       
			LDX	#MB5E5		       
			ABX			       
			LDD	,X		       
			STD	M7781		       
			LDAB	$02,X		       
ZB2CB			STAB	M7783		       
			CLR	M777E		       
			CLR	>M00A5		       
			JMP	ZB560		       
			LDAA	M778C		       
			STAA	M7786		       
ZB2DD			STAB	M7774		       
			SUBB	#$28		       
ZB2E2			ASLB			       
			LDX	#MB672		       
			ABX			       
			LDD	,X		       
ZB2E9			STAB	M7783		       
			TAB			       
			CMPB	#$6E		       
			BCS	ZB2F3		       
			ANDB	#$7F		       
ZB2F3			STAB	M7787		       
			LDX	#M6DD7		       
			ABX			       
			TSTA			       
			BMI	ZB300		       
			JMP	ZB266		       
ZB300			LDAB	M7786		       
			LDAA	#$0C		       
			MUL			       
			ABX			       
			JMP	ZB266		       
			LDAA	M778C		       
			BEQ	ZB2DD		       
			CMPA	#$01		       
			BNE	ZB31A		       
			STAB	M7774		       
			LDAB	#$0E		       
			BRA	ZB2E2		       
ZB31A			SUBA	#$02		       
			STAA	M7786		       
			STAB	M7774		       
			LDAB	#$0D		       
			BRA	ZB2E2		       
ZB326			STAB	M7774		       
			LDAA	M778C		       
			CMPA	#$0A		       
			BCS	ZB333		       
			JMP	ZB223		       
ZB333			ADDA	#$64		       
			LDAB	#$7F		       
			BRA	ZB2E9		       
ZB339			JSR	JMPOFF1 	       
			FCB	$43,$02,$42,$03,$4A,$04,$AA,$05,$3B,$07,$F9,$08,$37
			FCB	$09,$32,$0A,$2D,$0B,$31,$15,$26,$16,$2D,$18,$1F,$19
			FCB	$11,$1A,$12,$1B,$13,$1C,$14,$1D,$21,$1F,$04,$20,$1D
			FCB	$00		       
			JMP	ZB551		       
			JMP	ZB4EC		       
			JMP	ZB4F7		       
			JMP	ZB502		       
			JMP	ZB51F		       
			JMP	ZB4EA		       
			JMP	ZB4BE		       
			JMP	ZB48E		       
			JMP	ZB46E		       
ZB37F			RTS			       
			LDAB	M7789		       
ZB383			ASLB			       
			LDX	#MB628		       
			JMP	ZB249		       
			LDAB	M7789		       
			BNE	ZB39F		       
			LDAB	M778C		       
			BEQ	ZB3C3		       
			CLRB			       
			JSR	ZB3C3		       
			LDAB	M778C		       
			DECB			       
			JMP	ZB230		       
ZB39F			CMPB	#$01		       
			BEQ	ZB3C7		       
			LDAB	M778C		       
			CMPB	#$04		       
			BCS	ZB3B6		       
			CLRB			       
			JSR	ZB3B6		       
			LDAB	M778C		       
			SUBB	#$04		       
			JMP	ZB230		       
ZB3B6			STAB	M777B		       
			JSR	ZE110		       
			LDAB	M7789		       
			ADDB	#$07		       
			BRA	ZB383		       
ZB3C3			LDAB	#$06		       
			BRA	ZB383		       
ZB3C7			LDAB	M778C		       
			BEQ	ZB3E8		       
			CMPB	#$05		       
			BCS	ZB3DC		       
			CLRB			       
			JSR	ZB3DC		       
			LDAB	M778C		       
			SUBB	#$05		       
			JMP	ZB230		       
ZB3DC			SUBB	#$01		       
			STAB	M777B		       
			JSR	ZE110		       
			LDAB	#$08		       
			BRA	ZB383		       
ZB3E8			LDAB	#$07		       
			BRA	ZB383		       
			JSR	ZB6A8		       
			STAA	M777B		       
			PSHB			       
			JSR	ZE110		       
			PULA			       
			TSTA			       
			BEQ	ZB426		       
			LDAB	M778C		       
			BEQ	ZB43B		       
			CMPB	#$02		       
			BCS	ZB40F		       
			CLRB			       
			JSR	ZB40F		       
			LDAB	M778C		       
			SUBB	#$02		       
			JMP	ZB233		       
ZB40F			CMPA	#$02		       
			BNE	ZB436		       
			JSR	ZAF5F		       
			LDAA	#$D9		       
			TIM	#$3C,$0B,X	       
			BNE	ZB421		       
			LDAB	#$07		       
			BRA	ZB423		       
ZB421			LDAB	#$0F		       
ZB423			JMP	ZB24C		       
ZB426			LDAB	M778C		       
			BEQ	ZB436		       
			CLRB			       
			JSR	ZB436		       
			LDAB	M778C		       
			DECB			       
			JMP	ZB233		       
ZB436			ADDA	#$0B		       
			TAB			       
			BRA	ZB46B		       
ZB43B			LDAB	#$0D		       
			BRA	ZB46B		       
			LDAB	M778C		       
			LDAA	M7789		       
			CMPA	#$05		       
			BNE	ZB450		       
			TSTB			       
			BNE	ZB450		       
			INCB			       
			STAB	M778C		       
ZB450			CMPB	#$04		       
			BCS	ZB460		       
			CLRB			       
			JSR	ZB460		       
			LDAB	M778C		       
			SUBB	#$04		       
			JMP	ZB230		       
ZB460			STAB	M777B		       
			JSR	ZE110		       
			LDAB	M7789		       
			ADDB	#$0E		       
ZB46B			JMP	ZB383		       
ZB46E			LDAB	M778C		       
			CMPB	#$04		       
			BCS	ZB481		       
			CLRB			       
			JSR	ZB481		       
			LDAB	M778C		       
			SUBB	#$04		       
			JMP	ZB230		       
ZB481			STAB	M777B		       
			JSR	ZE110		       
			LDAB	M7789		       
			ADDB	#$14		       
			BRA	ZB46B		       
ZB48E			LDAB	M7789		       
			CMPB	#$0F		       
			BCC	ZB4AD		       
			CMPB	#$02		       
			BNE	ZB4A9		       
			JSR	ZAF6F		       
			TST	$3F,X		       
			BNE	ZB4A5		       
			LDAA	#$01		       
			JMP	ZB2BD		       
ZB4A5			LDAB	#$18		       
			BRA	ZB46B		       
ZB4A9			ADDB	#$16		       
			BRA	ZB46B		       
ZB4AD			LDAA	M778C		       
			CMPA	#$0A		       
			BCS	ZB4B7		       
			JMP	ZB37F		       
ZB4B7			ADDA	#$4D		       
			LDAB	#$7F		       
			JMP	ZB24C		       
ZB4BE			LDAA	M7788		       
			CMPA	#$02		       
			BCC	ZB4D5		       
			LDAA	M7789		       
			CMPA	#$08		       
			BCC	ZB4D0		       
			ADDA	#$04		       
			BRA	ZB4D2		       
ZB4D0			LDAA	#$01		       
ZB4D2			JMP	ZB2BD		       
ZB4D5			LDAA	M7789		       
			CMPA	#$0C		       
			BEQ	ZB4DF		       
			JMP	ZB37F		       
ZB4DF			LDAB	M778A		       
			LDX	#M7571		       
			ABX			       
			LDAB	#$B7		       
			BRA	ZB54B		       
ZB4EA			BRA	ZB4D0		       
ZB4EC			LDAA	M7789		       
			CMPA	#$04		       
			BCC	ZB4D0		       
			ADDA	#$0C		       
			BRA	ZB4D2		       
ZB4F7			LDAA	M7789		       
			CMPA	#$03		       
			BCC	ZB4D0		       
			ADDA	#$10		       
			BRA	ZB4D2		       
ZB502			LDAA	M7788		       
			CMPA	#$01		       
			BEQ	ZB4D0		       
			LDAA	M7789		       
			CMPA	#$0C		       
			BCS	ZB511		       
			CLRA			       
ZB511			LDAB	#$04		       
			MUL			       
			ADDB	M778C		       
			LDX	#M75F8		       
			ABX			       
			LDAB	#$31		       
			BRA	ZB54B		       
ZB51F			LDAA	M7788		       
			CMPA	#$01		       
			BEQ	ZB52F		       
			LDAA	M7789		       
			BEQ	ZB539		       
			CMPA	#$02		       
			BEQ	ZB534		       
ZB52F			JSR	HI_CALL_03	       
			BRA	ZB4D0		       
ZB534			LDX	#M7640		       
			BRA	ZB53C		       
ZB539			LDX	#M7628		       
ZB53C			LDAB	M778A		       
			ASLB			       
			ABX			       
			LDAB	#$6C		       
			TST	M778C		       
			BEQ	ZB54B		       
			LDAB	#$3F		       
			INX			       
ZB54B			STX	M7781		       
			JMP	ZB2CB		       
ZB551			LDX	#M7740		       
			LDAB	M778C		       
			ABX			       
			STX	M7781		       
			LDAB	#$7F		       
			JMP	ZB2CB		       
ZB560			LDX	M7781		       
ZB563			LDAA	M7783		       
			CMPA	,X		       
			BCC	ZB56C		       
			CLR	,X		       
ZB56C			LDAA	M7774		       
			CMPA	#$1F		       
			BEQ	ZB5A3		       
			CMPA	#$35		       
			BEQ	ZB5A3		       
			CMPA	#$0A		       
			BEQ	ZB595		       
			CMPA	#$07		       
			BEQ	ZB585		       
			CMPA	#$1C		       
			BEQ	ZB5C4		       
			BRA	ZB5AD		       
ZB585			LDAB	M7788		       
			CMPB	#$01		       
			BNE	ZB5AD		       
			LDAA	M7789		       
			CMPA	#$04		       
			BEQ	ZB5B4		       
			BRA	ZB5AD		       
ZB595			LDAB	M7788		       
			CMPB	#$01		       
			BNE	ZB5AD		       
			LDAA	M7789		       
			CMPA	#$0F		       
			BNE	ZB5AD		       
ZB5A3			LDAA	#$1F		       
			CMPA	,X		       
			BCS	ZB5AD		       
			LDAA	#$24		       
			STAA	,X		       
ZB5AD			LDX	M7781		       
			JSR	ZE10C		       
			RTS			       
ZB5B4			LDAA	M778C		       
			CMPA	#$04		       
			BCC	ZB5AD		       
			TST	,X		       
			BNE	ZB5AD		       
			OIM	#$01,$00,X	       
			BRA	ZB5AD		       
ZB5C4			LDAB	M7788		       
			CMPB	#$02		       
			BNE	ZB5AD		       
			LDAB	M7789		       
			BEQ	ZB5D4		       
			CMPB	#$02		       
			BNE	ZB5AD		       
ZB5D4			TST	M778C		       
			BNE	ZB5AD		       
			LDAA	#$0C		       
			CMPA	,X		       
			BCS	ZB5AD		       
			LDAA	#$0D		       
			STAA	,X		       
			BRA	ZB5AD		       
MB5E5			FDB	M7565		       
			FCB	$7F		       
			FDB	M7570		       
			FCB	$01		       
			FDB	M756D		       
			FCB	$01		       
			FDB	M756E		       
			FCB	$01		       
			FDB	M7566		       
			FCB	$10		       
			FDB	M7567		       
			FCB	$0F		       
			FDB	M7568		       
			FCB	$02		       
			FDB	M7569		       
			FCB	$11		       
			FDB	M756F		       
			FCB	$01		       
			FDB	M756A		       
			FCB	$11		       
			FDB	M756B		       
			FCB	$02		       
			FDB	M756C		       
			FCB	$01		       
			FDB	M75F1		       
			FCB	$7F		       
			FDB	M75F2		       
			FCB	$30		       
			FDB	M75F3		       
			FCB	$07		       
			FDB	M75F4		       
			FCB	$63		       
			FDB	M75F5		       
			FCB	$02		       
			FDB	M75F6		       
			FCB	$01		       
			FDB	M75F7		       
			FCB	$63		       
MB61E			FDB	$3407,$3507,$DA07,Z8C06,$8A63
MB628			FDB	$3B03,$3663,$3763,$3863,$3963,$3A01,$3C07,$3D03
			FDB	$8801,$8707,$8907,$D807,Z8B3F,$D701,$801F,Z811F
			FDB	$840F,$821F,$830F,$DB03,$8603,$8563,$3F01,$400C
			FDB	$4101,$4263,$4363,$6C63,$6D63,$4763,$4863,$4963
			FDB	$4A63,$4B64,$4C63,$3E30,$6B07
MB672			FDB	$6101,$8008,$829F,$8310,$847F,$857F,$860E,Z8730
			FDB	$8863,$8903,$8A03,$600C,$6203,$8B01,$630B
ZB690			LDAB	M777B		       
			PSHX			       
			LDX	#MA350		       
			ABX			       
			LDAB	,X		       
			PULX			       
			CMPA	#$D7		       
			BCS	ZB6A3		       
			LDAA	#$05		       
			BRA	ZB6A5		       
ZB6A3			LDAA	#$0D		       
ZB6A5			MUL			       
			ABX			       
			RTS			       
ZB6A8			LDAB	M7789		       
			CLRA			       
ZB6AC			SUBB	#$03		       
			BMI	ZB6B3		       
			INCA			       
			BRA	ZB6AC		       
ZB6B3			ADDB	#$03		       
			CMPA	#$04		       
			BCS	ZB6BA		       
			CLRA			       
ZB6BA			RTS			       
ZB6BB			LDAA	M778C		       
			LDAB	M7788		       
			BEQ	ZB6CA		       
			CMPB	#$01		       
			BEQ	ZB6EE		       
			JMP	ZB724		       
ZB6CA			LDAB	M7774		       
			JSR	JMPOFF1 	       
			FCB	$72,$01,$A1,$05,$7E,$07,$9D,$08,$7A,$09,$99,$1F,$8E
			FCB	$20,$95,$29,$72,$33,$80,$34,$8F,$35,$7C,$36,$8B,$3C
			FCB	$68,$3D,$87,$00        
ZB6EE			LDAB	M7774		       
			JSR	JMPOFF1 	       
			FCB	$7F,$03,$10,$04,$19,$05,$79,$07,$56,$08,$75,$09,$52
			FCB	$0A,$60,$0B,$6F,$00,$F6
			ASR	$8927		       
			PSHB			       
			CMPB	#$02		       
			BCS	ZB75A		       
			BRA	ZB752		       
			LDAB	M7789		       
			BEQ	ZB742		       
			CMPB	#$03		       
			BEQ	ZB742		       
			CMPB	#$06		       
			BEQ	ZB742		       
			CMPB	#$09		       
			BEQ	ZB742		       
			BRA	ZB74A		       
ZB724			LDAB	M7774		       
			JSR	JMPOFF1 	       
			FCB	$49,$1B,$0E,$1C,$04,$1D,$43,$00
JB732			CMPA	#$01		       
			BLS	ZB770		       
			LDAA	#$01		       
			BRA	ZB770		       
			CMPA	#$03		       
			BLS	ZB770		       
			LDAA	#$03		       
			BRA	ZB770		       
ZB742			CMPA	#$04		       
			BLS	ZB770		       
			LDAA	#$04		       
			BRA	ZB770		       
ZB74A			CMPA	#$05		       
			BLS	ZB770		       
			LDAA	#$05		       
			BRA	ZB770		       
ZB752			CMPA	#$07		       
			BLS	ZB770		       
			LDAA	#$07		       
			BRA	ZB770		       
ZB75A			CMPA	#$08		       
			BLS	ZB770		       
			LDAA	#$08		       
			BRA	ZB770		       
			CMPA	#$09		       
			BLS	ZB770		       
			LDAA	#$09		       
			BRA	ZB770		       
			CMPA	#$0F		       
			BLS	ZB770		       
			LDAA	#$0F		       
ZB770			STAA	M778C		       
			RTS			       
ZB774			AIM	#$BF,TCSR3	       
			LDX	#M6A67		       
			STX	M00A9		       
			LDX	#M6A19		       
			JSR	LO_CALL_06	       
			BRA	ZB79F		       
ZB784			JSR	ZE0A4		       
ZB787			CMPB	M7773		       
			BNE	ZB796		       
			TST	M7792		       
			BNE	ZB796		       
			JSR	ZE178		       
			BRA	ZB7C2		       
ZB796			AIM	#$BF,TCSR3	       
			JSR	HI_CALL_19	       
			CLR	M7793		       
ZB79F			JSR	ZAEDD		       
ZB7A2			STX	M00A9		       
			AIM	#$BF,TCSR3	       
			LDX	#M6A67		       
			JSR	LO_CALL_00	       
			JSR	LO_CALL_08	       
			JSR	ZE178		       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	Z91FE		       
			OIM	#$40,TCSR3	       
ZB7C2			RTS			       
ZB7C3			PSHB			       
			ADDB	#$20		       
			JSR	ZE0A4		       
			PULB			       
			CMPB	M7779		       
			BNE	ZB7D6		       
			TST	M7791		       
			BNE	ZB7D6		       
			BRA	ZB804		       
ZB7D6			AIM	#$BF,TCSR3	       
			STAB	M7779		       
			CLR	M7791		       
			JSR	ZAEFF		       
			STX	M00A9		       
			AIM	#$BF,TCSR3	       
			LDX	#M6DD7		       
			JSR	ZAED3		       
HI_CALL_13		JSR	ME383_via_cvec_d38d    
			JSR	LO_CALL_0A	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZC7C2		       
			OIM	#$40,TCSR3	       
			BSR	ZB805		       
ZB804			RTS			       
ZB805			AIM	#$BF,TCSR3	       
			BSR	ZB820		       
			JSR	LO_CALL_08	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			JSR	Z91FE		       
			JSR	HI_CALL_15	       
			JSR	HI_CALL_16	       
			OIM	#$40,TCSR3	       
			RTS			       
ZB820			CLRB			       
ZB821			PSHB			       
			LDX	#M6DD7		       
			LDAA	#$0C		       
			MUL			       
			ABX			       
			LDAB	$02,X		       
			JSR	ZAEE0		       
			STX	M00A9		       
			PULA			       
			PSHA			       
			JSR	Z9A2F		       
			JSR	LO_CALL_00	       
			PULB			       
			INCB			       
			CMPB	#$08		       
			BNE	ZB821		       
			RTS			       
ZB83F			LDAB	M7795		       
			STAB	M7773		       
			CLR	M7792		       
			CLR	M7793		       
			LDX	#M6A67		       
			STX	M00A9		       
			JSR	ZAEDD		       
			JSR	LO_CALL_06	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			JSR	Z91FE		       
			JMP	ZE113		       
ZB862			LDAA	M777F		       
			CMPA	#$20		       
			BCS	ZB86A		       
			CLRA			       
ZB86A			STAA	M00A9		       
			LDAA	#$1F		       
ZB86E			STAA	M00A7		       
			DECB			       
			TST	M7795		       
			BMI	ZB87E		       
			LDAA	M7795		       
			JSR	Z8D0C		       
			BRA	ZB880		       
ZB87E			LDAA	M00A9		       
ZB880			STAA	M7795		       
			RTS			       
ZB884			LDAA	M777A		       
			STAA	M00A9		       
			LDAA	#$17		       
			BRA	ZB86E		       
ZB88D			LDAB	M7795		       
			STAB	M7779		       
			CLR	M7791		       
			LDX	#M6DD7		       
			STX	M00A9		       
			JSR	ZAEFF		       
			JSR	LO_CALL_07	       
			JSR	HI_CALL_00	       
			JMP	HI_CALL_01	       
ZB8A7			LDAB	M7794		       
			JSR	ZAF62		       
			STX	M00A7		       
			LDAB	M777C		       
			JSR	ZAF62		       
			STX	M00A9		       
			LDAB	#$07		       
			JSR	ZAE8C		       
			LDAB	#$01		       
			STAB	M7792		       
			LDX	#M9E95		       
			JSR	Z92DB		       
			LDX	#M9EB9		       
			JSR	Z92DB		       
			LDX	#M9ECC		       
			JSR	Z92DB		       
			LDX	#M9EEC		       
			JSR	Z92DB		       
			LDX	#M9F00		       
			JSR	Z92DB		       
			JSR	ZE114		       
			RTS			       
ZB8E3			DECB			       
			TST	>M0059		       
			BNE	ZB8F8		       
			LDAA	#$03		       
			STAA	M00A7		       
			LDAA	M777C		       
			JSR	Z8D0C		       
			STAA	M777C		       
			BRA	ZB90D		       
ZB8F8			TST	M7794		       
			BMI	ZB909		       
			LDAA	#$03		       
			STAA	M00A7		       
			LDAA	M7794		       
			JSR	Z8D0C		       
			BRA	ZB90A		       
ZB909			CLRA			       
ZB90A			STAA	M7794		       
ZB90D			RTS			       
ZB90E			AIM	#$BF,TCSR3	       
			LDAB	#$6E		       
			LDX	#M6A67		       
			STX	M00A9		       
			LDX	#M6AD5		       
			JSR	ZAE8A		       
			JSR	LO_CALL_08	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			JSR	Z91FE		       
			JSR	ZC7C2		       
			OIM	#$40,TCSR3	       
			RTS			       
ZB931			TST	M7788		       
			BEQ	ZB939		       
			JMP	ZBA42		       
ZB939			TBA			       
			LDAB	M7774		       
			JSR	JMPOFF1 	       
			FCB	$31,$02,$39,$04,$30,$05,$2B,$07,$6F,$08,$27,$09,$72
			FCB	$0A,$6D,$0B,$21,$15,$70,$16,$1D,$18,$73,$19,$78,$1A
			FCB	$84,$1B,$74,$1C,$92,$1D,$97,$1F,$0F,$3C,$AC,$3D,$B3
			FCB	$3E,$09,$46,$04,$47,$05,$00
			JMP	ZBBB1		       
			TAB			       
			CLC			       
			RTS			       
			PSHB			       
			LDAB	#$01		       
			STAB	M778C		       
			PULB			       
			SUBB	#$02		       
ZB97D			CMPA	#$01		       
			BNE	ZB9B5		       
			LDX	#MBBE4		       
			ABX			       
			LDAB	,X		       
			STAB	M778D		       
			STAA	M7788		       
			STAA	M00A4		       
			CLR	M7789		       
			LDAB	M7774		       
			CMPB	#$04		       
			BNE	ZB9A6		       
			JSR	ZAF6F		       
			TST	$66,X		       
			BNE	ZB9A3		       
			INC	M7789		       
ZB9A3			LDAB	M7774		       
ZB9A6			JSR	ZB1DD		       
			AIM	#$BF,TCSR3	       
			JSR	HI_CALL_15	       
			JSR	HI_CALL_16	       
			OIM	#$40,TCSR3	       
ZB9B5			SEC			       
			RTS			       
			LDAB	#$03		       
			BRA	ZB97D		       
			CLR	M778C		       
			SUBB	#$05		       
			BRA	ZB97D		       
			CLR	M777E		       
			LDAB	#$06		       
			BRA	ZB97D		       
			CLR	M777E		       
			LDAB	#$07		       
			BRA	ZB97D		       
			SUBB	#$11		       
			PSHB			       
			PSHA			       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			PULA			       
			PULB			       
			BRA	ZB97D		       
			SUBB	#$11		       
			CMPA	#$01		       
			BNE	ZB9B5		       
			STAA	M7788		       
			PSHB			       
			JSR	ZB90E		       
			PULB			       
			LDAA	#$01		       
			BRA	ZB97D		       
			CLR	M778F		       
			SUBB	#$11		       
			BRA	ZB97D		       
			TST	>M00A5		       
			BEQ	ZBA08		       
			CLR	>M00A5		       
			CMPA	#$01		       
			BNE	ZBA0E		       
			JSR	ZC274		       
			BRA	ZBA0E		       
ZBA08			CMPA	#$01		       
			BNE	ZBA0E		       
			STAA	M00A5		       
ZBA0E			SEC			       
			RTS			       
			CMPA	#$01		       
			BNE	ZB9B5		       
			JSR	ZC259		       
			BRA	ZB9B5		       
			TST	>M00A5		       
			BEQ	ZBA2A		       
			CLR	>M00A5		       
			CMPA	#$01		       
			BNE	ZB9B5		       
			JSR	ZC33D		       
			BRA	ZB9B5		       
ZBA2A			CMPA	#$01		       
			BEQ	ZBA3D		       
			LDAA	M777E		       
			INCA			       
			CMPA	#$05		       
			BCS	ZBA37		       
			CLRA			       
ZBA37			STAA	M777E		       
			JMP	ZB9B5		       
ZBA3D			STAA	M00A5		       
			JMP	ZB9B5		       
ZBA42			TBA			       
			CLR	>M00A4		       
			LDAB	M7774		       
			JSR	JMPOFF1 	       
			FCB	$10,$15,$11,$16,$0C,$18,$8B,$19,$08,$1B,$BC,$1C,$DC
			FCB	$1D,$02,$00	       
ZBA5C			TAB			       
			CLC			       
			RTS			       
			LDAB	M7789		       
			CMPB	#$08		       
			BEQ	ZBAC3		       
			BCS	ZBA5C		       
			CMPB	#$0D		       
			BCC	ZBA5C		       
			CMPB	#$09		       
			BEQ	ZBABA		       
			CMPB	#$0A		       
			BNE	ZBA8B		       
			CMPA	#$01		       
			BEQ	ZBA86		       
			LDAA	M777E		       
			INCA			       
			CMPA	#$05		       
			BCS	ZBA81		       
			CLRA			       
ZBA81			STAA	M777E		       
			BRA	ZBADB		       
ZBA86			JSR	ZBBF0		       
			BRA	ZBADB		       
ZBA8B			CMPB	#$0B		       
			BNE	ZBAAC		       
			TST	>M00A5		       
			BEQ	ZBAA4		       
			CLR	>M00A5		       
			CMPA	#$01		       
			BNE	ZBADB		       
			JSR	ZC245		       
			INC	M7789		       
			JMP	ZBBA6		       
ZBAA4			CMPA	#$01		       
			BNE	ZBADB		       
			STAA	M00A5		       
			BRA	ZBADB		       
ZBAAC			LDAB	M7788		       
			CMPB	#$02		       
			BEQ	ZBA5C		       
			CMPA	#$01		       
			BNE	ZBADB		       
			JMP	ZBB7A		       
ZBABA			CMPA	#$01		       
			BNE	ZBADB		       
			JSR	ME245_via_cvec_d38f    
			BRA	ZBADB		       
ZBAC3			CMPA	#$01		       
			BEQ	ZBAD5		       
			LDAA	M777E		       
			INCA			       
			CMPA	#$05		       
			BCS	ZBAD0		       
			CLRA			       
ZBAD0			STAA	M777E		       
			BRA	ZBADB		       
ZBAD5			JSR	ZE115		       
			JSR	ZBC18		       
ZBADB			SEC			       
			RTS			       
			CMPA	#$01		       
			BNE	ZBAEA		       
			LDAB	#$01		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			BRA	ZBB10		       
ZBAEA			LDAA	M7789		       
			BEQ	ZBB01		       
			CMPA	#$08		       
			BCS	ZBB10		       
			LDAA	M777E		       
			INCA			       
			CMPA	#$05		       
			BCS	ZBAFC		       
			CLRA			       
ZBAFC			STAA	M777E		       
			BRA	ZBB10		       
ZBB01			LDAA	M777E		       
			INCA			       
			ANDA	#$01		       
			STAA	M777E		       
			LDX	M7781		       
			JSR	ZE10C		       
ZBB10			SEC			       
			RTS			       
			LDAB	M7788		       
			CMPB	#$01		       
			BEQ	ZBB1C		       
			JMP	ZBA5C		       
ZBB1C			CMPA	#$01		       
			BEQ	ZBB28		       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			BRA	ZBBA0		       
ZBB28			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			JSR	ZED75		       
			CLRB			       
			BRA	ZBB7C		       
			LDAB	M7789		       
			BEQ	ZBB63		       
			CMPB	#$02		       
			BEQ	ZBB63		       
			LDAB	M7788		       
			CMPB	#$02		       
			BEQ	ZBB4C		       
			CMPA	#$01		       
			BNE	ZBBA0		       
			LDAB	#$0A		       
			BRA	ZBB7C		       
ZBB4C			CMPA	#$01		       
			BNE	ZBB96		       
			JSR	ZC345		       
			JSR	HI_CALL_03	       
			LDAA	#$01		       
			STAA	M7788		       
			DEC	M7789		       
			CLR	M778A		       
			BRA	ZBBA6		       
ZBB63			LDAB	M7788		       
			CMPB	#$01		       
			BEQ	ZBB6D		       
			JMP	ZBA5C		       
ZBB6D			CMPA	#$01		       
			BNE	ZBBA0		       
			TST	M7789		       
			BNE	ZBB7A		       
			LDAB	#$0B		       
			BRA	ZBB7C		       
ZBB7A			LDAB	#$7F		       
ZBB7C			STAB	M778E		       
			LDAA	#$01		       
			STAA	M00A4		       
			LDAA	#$02		       
			STAA	M7788		       
			CLR	M778A		       
			CLR	M778C		       
			LDAB	M7774		       
			JSR	ZB1DD		       
ZBB94			SEC			       
			RTS			       
ZBB96			LDAA	#$01		       
			STAA	M7788		       
			CLR	M778A		       
			BRA	ZBBA6		       
ZBBA0			CLR	M7788		       
			CLR	M7789		       
ZBBA6			CLR	M778C		       
			LDAB	M7774		       
			JSR	ZB1DD		       
			BRA	ZBB94		       
ZBBB1			CMPA	#$01		       
			BNE	ZBBBC		       
			LDAB	#$02		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
ZBBBC			CLR	>M00A6		       
			LDX	#M80EF		       
			STX	M00A9		       
			LDAB	#$10		       
			LDX	#M7740		       
			JSR	ZAE8A		       
			LDAA	#$01		       
			STAA	M00CC		       
			LDAB	M7779		       
			JSR	ZB7D6		       
			JSR	ZB09A		       
			LDAB	M7773		       
			JSR	ZE0A4		       
			JSR	ZB796		       
			SEC			       
			RTS			       
MBBE4			FCB	$05,$03,$0B,$05,$01,$0F,$0C,$0A,$03,$02,$0B,$03
ZBBF0			LDAB	M777E		       
			CMPB	#$05		       
			BCS	ZBBF8		       
			CLRB			       
ZBBF8			PSHB			       
			ASLB			       
			LDX	#MBC0E		       
			ABX			       
			LDX	,X		       
			JSR	,X		       
			PULB			       
			TSTB			       
			BEQ	ZBC0D		       
			CMPB	#$04		       
			BEQ	ZBC0D		       
			JSR	ZF052		       
ZBC0D			RTS			       
MBC0E			FDB	ME633_via_cvec_bc0e,ME4C1_via_cvec_bc10
			FDB	ME543_via_cvec_bc12,ME5BE_via_cvec_bc14
			FDB	ME629_via_cvec_bc16    
ZBC18			TST	M777E		       
			BEQ	ZBC26		       
			LDAB	#$03		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			BRA	ZBC29		       
ZBC26			JSR	ZE11D		       
ZBC29			RTS			       
ZBC2A			LDX	M7781		       
			JSR	ZE0E9		       
			TST	M7793		       
			BEQ	ZBC3F		       
			LDAA	M7772		       
			CMPA	#$01		       
			BNE	ZBC3F		       
			JMP	ZBDE5		       
ZBC3F			PSHB			       
			LDAB	M7772		       
			CMPB	#$05		       
			BNE	ZBC8E		       
			LDAB	M7774		       
			CMPB	#$29		       
			BNE	ZBC6A		       
			LDX	#M6DD7		       
			CLRA			       
			LDAB	#$0C		       
ZBC54			ADDA	,X		       
			ABX			       
			CPX	#M6E37		       
			BNE	ZBC54		       
			CMPA	#$08		       
			BHI	ZBC8B		       
			BCS	ZBCB0		       
			PULB			       
			PSHB			       
			CMPB	#$02		       
			BEQ	ZBCB0		       
			BRA	ZBC8B		       
ZBC6A			CMPB	#$2A		       
			BCS	ZBCB0		       
			CMPB	#$34		       
			BCC	ZBCB0		       
			CMPB	#$33		       
			BNE	ZBC7D		       
			LDAB	M778C		       
			CMPB	#$02		       
			BCS	ZBCB0		       
ZBC7D			LDAA	M7786		       
			LDAB	#$0C		       
			MUL			       
			LDX	#M6DD7		       
			ABX			       
			TST	,X		       
			BNE	ZBCB0		       
ZBC8B			JMP	ZBDE6		       
ZBC8E			CMPB	#$01		       
			BNE	ZBCB0		       
			LDAB	M7787		       
			CMPB	#$0B		       
			BNE	ZBCA2		       
			LDAB	M778C		       
			CMPB	#$02		       
			BCS	ZBCB3		       
			BRA	ZBCB0		       
ZBCA2			CMPB	#$59		       
			BNE	ZBCB0		       
			LDAB	M778C		       
			CMPB	#$02		       
			BCC	ZBCB0		       
			JMP	ZBDE8		       
ZBCB0			CLRA			       
			BRA	ZBCEB		       
ZBCB3			LDAB	M777B		       
			LDAA	#$05		       
			JSR	ZAF64		       
			LDAA	$57,X		       
			PULB			       
			PSHA			       
			LDX	M7781		       
			DECB			       
			BEQ	ZBCF3		       
			LDAA	,X		       
			BNE	ZBCCC		       
			JMP	ZBDE6		       
ZBCCC			CMPA	#$05		       
			BCS	ZBCD3		       
			JMP	ZBD90		       
ZBCD3			LDAB	M777B		       
			LDAA	#$05		       
			JSR	ZAF64		       
			LDAA	$59,X		       
			CMPA	#$08		       
			BCS	ZBCE5		       
			LDAA	#$07		       
			STAA	$59,X		       
ZBCE5			LDX	M7781		       
			JMP	ZBD8C		       
ZBCEB			PULB			       
			PSHA			       
			LDX	M7781		       
			DECB			       
			BNE	ZBD4C		       
ZBCF3			LDAB	M7774		       
			CMPB	#$1C		       
			BEQ	ZBD0A		       
			CMPB	#$2A		       
			BNE	ZBD2D		       
			LDAA	,X		       
			CMPA	M7783		       
			BNE	ZBD37		       
			PULB			       
			CLRA			       
			JMP	ZBE61		       
ZBD0A			LDAB	M7788		       
			CMPB	#$02		       
			BNE	ZBD2D		       
			TST	M778C		       
			BEQ	ZBD2D		       
			LDAA	,X		       
			CMPA	M7783		       
			BNE	ZBD37		       
			DEX			       
			LDAA	,X		       
			CMPA	#$6C		       
			BCC	ZBD34		       
			INCA			       
			STAA	,X		       
			INX			       
			CLRA			       
			PULB			       
			JMP	ZBE61		       
ZBD2D			LDAA	,X		       
			CMPA	M7783		       
			BNE	ZBD37		       
ZBD34			JMP	ZBDE6		       
ZBD37			PULB			       
			TSTB			       
			BEQ	ZBD48		       
			ADDA	#$04		       
			CMPA	M7783		       
			BLS	ZBD45		       
			JMP	ZBDE5		       
ZBD45			JMP	ZBE61		       
ZBD48			INCA			       
			JMP	ZBE61		       
ZBD4C			LDAB	M7774		       
			CMPB	#$1C		       
			BEQ	ZBD62		       
			CMPB	#$2A		       
			BNE	ZBD8C		       
			LDAA	,X		       
			BNE	ZBD90		       
			PULB			       
			LDAA	M7783		       
			JMP	ZBE61		       
ZBD62			LDAB	M7788		       
			CMPB	#$02		       
			BNE	ZBD8C		       
			TST	M778C		       
			BEQ	ZBD84		       
			LDAA	,X		       
			BNE	ZBD90		       
			DEX			       
			LDAA	,X		       
			CMPA	#$0D		       
			BLS	ZBDE6		       
			DECA			       
			STAA	,X		       
			INX			       
			LDAA	M7783		       
			PULB			       
			JMP	ZBE61		       
ZBD84			LDAA	,X		       
			CMPA	#$0D		       
			BLS	ZBDE6		       
			BRA	ZBD90		       
ZBD8C			LDAA	,X		       
			BEQ	ZBDE6		       
ZBD90			PULB			       
			TSTB			       
			BEQ	ZBD9B		       
			SUBA	#$04		       
			BMI	ZBDE5		       
			JMP	ZBE61		       
ZBD9B			DECA			       
			LDAB	M7774		       
			CMPB	#$35		       
			BEQ	ZBDDE		       
			CMPB	#$0A		       
			BEQ	ZBDC6		       
			CMPB	#$07		       
			BNE	ZBDD4		       
			LDAB	M7788		       
			CMPB	#$01		       
			BNE	ZBDD4		       
			LDAB	M7789		       
			CMPB	#$04		       
			BNE	ZBDD4		       
			LDAB	M778C		       
			CMPB	#$04		       
			BCC	ZBDD4		       
			TSTA			       
			BEQ	ZBDE5		       
			JMP	ZBE61		       
ZBDC6			LDAB	M7788		       
			CMPB	#$01		       
			BNE	ZBDD4		       
			LDAB	M7789		       
			CMPB	#$0F		       
			BEQ	ZBDDE		       
ZBDD4			CPX	#M7740		       
			BCS	ZBDE2		       
			CPX	#M7750		       
			BCC	ZBDE2		       
ZBDDE			CMPA	#$20		       
			BCS	ZBDE5		       
ZBDE2			JMP	ZBE61		       
ZBDE5			RTS			       
ZBDE6			PULA			       
			RTS			       
ZBDE8			PULB			       
			LDX	M7781		       
			DECB			       
			BNE	ZBE2B		       
			LDAA	,X		       
			CMPA	M7783		       
			BEQ	ZBDF9		       
			INCA			       
			BRA	ZBE28		       
ZBDF9			PSHX			       
			DEX			       
			DEX			       
			LDAA	,X		       
			BEQ	ZBE5F		       
			PSHA			       
			JSR	ZAF5F		       
			LDAA	$0B,X		       
			CMPA	#$3F		       
			BCC	ZBE5E		       
			PULB			       
			TSTB			       
			BEQ	ZBE16		       
			ADDA	#$04		       
			CMPA	#$3F		       
			BHI	ZBE5F		       
			BRA	ZBE17		       
ZBE16			INCA			       
ZBE17			STAA	$0B,X		       
			PULX			       
			CMPA	#$04		       
			BCC	ZBE22		       
			LDAA	#$07		       
			BRA	ZBE24		       
ZBE22			LDAA	#$0F		       
ZBE24			STAA	M7783		       
			CLRA			       
ZBE28			JMP	ZBE61		       
ZBE2B			LDAA	,X		       
			BEQ	ZBE32		       
			DECA			       
			BRA	ZBE5C		       
ZBE32			PSHX			       
			DEX			       
			DEX			       
			LDAA	,X		       
			BEQ	ZBE5F		       
			PSHA			       
			JSR	ZAF5F		       
			LDAA	$0B,X		       
			BEQ	ZBE5E		       
			PULB			       
			TSTB			       
			BEQ	ZBE4B		       
			SUBA	#$04		       
			BMI	ZBE5F		       
			BRA	ZBE4C		       
ZBE4B			DECA			       
ZBE4C			STAA	$0B,X		       
			PULX			       
			CMPA	#$04		       
			BCC	ZBE57		       
			LDAA	#$07		       
			BRA	ZBE59		       
ZBE57			LDAA	#$0F		       
ZBE59			STAA	M7783		       
ZBE5C			BRA	ZBE61		       
ZBE5E			PULA			       
ZBE5F			PULX			       
			RTS			       
ZBE61			JMP	ZBEBF		       
			LDAB	M7774		       
			CMPB	#$15		       
			BNE	ZBE7B		       
			LDAB	M7788		       
			CMPB	#$01		       
			BNE	ZBEBF		       
			LDAB	M7789		       
			CMPB	#$02		       
			BCS	ZBE87		       
			BRA	ZBEBF		       
ZBE7B			CMPB	#$29		       
			BEQ	ZBE87		       
			CMPB	#$2E		       
			BCC	ZBEBF		       
			CMPB	#$2B		       
			BCS	ZBEBF		       
ZBE87			PSHX			       
			LDX	#M7CE3		       
			LDAB	#$08		       
ZBE8D			TIM	#$02,$01,X	       
			BNE	ZBEBC		       
			INX			       
			INX			       
			DECB			       
			BNE	ZBE8D		       
			LDAB	M7772		       
			ANDB	#$04		       
			BEQ	ZBEA2		       
			LDAB	#$08		       
			BRA	ZBEA4		       
ZBEA2			LDAB	#$01		       
ZBEA4			LDX	#M7F39		       
ZBEA7			PSHB			       
			LDAB	M006C		       
ZBEAA			TIM	#$02,$01,X	       
			BNE	ZBEBB		       
			INX			       
			INX			       
			DECB			       
			BNE	ZBEAA		       
			PULB			       
			DECB			       
			BNE	ZBEA7		       
			PULX			       
			BRA	ZBEBF		       
ZBEBB			PULB			       
ZBEBC			PULX			       
			BRA	ZBF10		       
ZBEBF			STAA	,X		       
			JSR	ZB563		       
			LDAB	M7788		       
			BEQ	ZBECC		       
			JMP	ZBF4F		       
ZBECC			LDAB	M7774		       
			JSR	JMPOFF1 	       
			FCB	$47,$01,$48,$02,$3A,$05,$3B,$06,$3C,$07,$34,$08,$44
			FCB	$09,$30,$14,$3D,$15,$2C,$16,$4B,$18,$28,$19,$3B,$1D
			FCB	$45,$20,$22,$28,$3B,$29,$3C,$2A,$40,$2B,$41,$2C,$42
			FCB	$2E,$2E,$2F,$41,$30,$42,$31,$43,$32,$44,$33,$45,$34
			FCB	$46,$35,$20,$36,$06,$3C,$25,$3F,$02,$00
ZBF10			JMP	ZC0ED		       
			JMP	ZC05A		       
			JMP	ZC002		       
			JMP	ZC177		       
			JMP	ZC187		       
			JMP	ZC1E0		       
			JMP	ZC1C8		       
			JMP	ZC207		       
			JMP	ZC16F		       
			JMP	ZC16C		       
			JMP	ZC169		       
			JMP	ZC0E4		       
			JMP	ZC0EF		       
			JMP	ZC0FE		       
			JMP	ZC125		       
			JMP	ZC12D		       
			JMP	ZC135		       
			JMP	ZC146		       
			JMP	ZC14B		       
			JMP	ZC150		       
			JMP	ZC155		       
ZBF4F			LDAB	M7774		       
			JSR	JMPOFF1 	       
			FCB	$22,$02,$26,$03,$5E,$04,$BA,$05,$1A,$07,$27,$08,$16
			FCB	$09,$1D,$0A,$1E,$0B,$10,$15,$11,$16,$0C,$19,$1C,$1A
			FCB	$27,$1B,$35,$1C,$3E,$1D,$02,$00
			JMP	ZC0ED		       
			JMP	ZC1EE		       
			JMP	ZC18F		       
			JMP	ZC09C		       
			JMP	ZC0B1		       
			JMP	ZC073		       
			LDAB	M7789		       
			CMPB	#$01		       
			BNE	ZBF93		       
			JMP	ZC207		       
ZBF93			JMP	ZC0E4		       
			JSR	HI_CALL_11	       
			LDAB	M7789		       
			CMPB	#$02		       
			BNE	ZBFA3		       
			JMP	ZC0E4		       
ZBFA3			JMP	ZC207		       
			LDAA	M776B		       
			ANDA	#$F7		       
			STAA	M776B		       
			JMP	ZC207		       
			JSR	HI_CALL_03	       
			JMP	ZC0E4		       
			LDAB	M7789		       
			BNE	ZBFCA		       
			TST	M778C		       
			BNE	ZBFF0		       
			LDX	#M9D91		       
			JSR	Z92E3		       
			JMP	ZC1D8		       
ZBFCA			CMPB	#$01		       
			BNE	ZBFE9		       
			LDAB	M778C		       
			BEQ	ZBFE0		       
			CMPB	#$05		       
			BCC	ZBFF0		       
			LDX	#M9EB9		       
			JSR	Z92DB		       
			JMP	ZC1D8		       
ZBFE0			LDX	#M9D91		       
			JSR	Z92E3		       
			JMP	ZC1D8		       
ZBFE9			LDAB	M778C		       
			CMPB	#$04		       
			BCS	ZBFF3		       
ZBFF0			JMP	ZC0E4		       
ZBFF3			LDX	#M9D68		       
			JSR	Z92DB		       
			LDX	#M9FEC		       
			JSR	Z92DB		       
			JMP	ZC1D8		       
ZC002			LDAB	M778C		       
			CMPB	#$04		       
			BCS	ZC00C		       
			JMP	ZC0E4		       
ZC00C			LDX	#M9DD7		       
			JSR	Z92DB		       
			JMP	ZC1D8		       
			LDAB	M7789		       
			BEQ	ZC02F		       
			CMPB	#$03		       
			BEQ	ZC02F		       
			CMPB	#$06		       
			BEQ	ZC02F		       
			CMPB	#$09		       
			BEQ	ZC02F		       
			LDAB	M778C		       
			CMPB	#$02		       
			BCS	ZC037		       
			BRA	ZC034		       
ZC02F			TST	M778C		       
			BEQ	ZC037		       
ZC034			JMP	ZC0E4		       
ZC037			LDAB	M7787		       
			CMPB	#$0B		       
			BNE	ZC052		       
			ANDA	#$3C		       
			BNE	ZC052		       
			LDAB	M777B		       
			LDAA	#$05		       
			JSR	ZAF64		       
			LDAA	#$07		       
			CMPA	$59,X		       
			BCC	ZC052		       
			STAA	$59,X		       
ZC052			LDX	#M9E95		       
			JSR	Z92DB		       
			BRA	ZC064		       
ZC05A			LDAB	M778C		       
			CMPB	#$04		       
			BCS	ZC064		       
			JMP	ZC0E4		       
ZC064			LDX	#M9DD7		       
			JSR	Z92DB		       
			LDX	#M9E58		       
			JSR	Z92DB		       
			JMP	ZC1BE		       
ZC073			LDAB	M778C		       
			CMPB	#$04		       
			BCS	ZC07D		       
			JMP	ZC0E4		       
ZC07D			LDAB	M7789		       
			CMPB	#$06		       
			BCC	ZC0ED		       
			JSR	JMPOFFB 	       
			FCB	$06,$08,$0A,$0C,$08,$0D
			JMP	ZC1AF		       
			JMP	ZC1B4		       
			JMP	ZC1B9		       
			JMP	ZC1BE		       
			JMP	ZC1C3		       
ZC09C			LDAB	M778C		       
			CMPB	#$04		       
			BCS	ZC0A6		       
			JMP	ZC0E4		       
ZC0A6			TST	M7789		       
			BEQ	ZC0AE		       
			JMP	ZC1D2		       
ZC0AE			JMP	ZC1AF		       
ZC0B1			LDAB	M7789		       
			JSR	JMPOFF1 	       
			FCB	$1E,$01,$1F,$02,$17,$03,$1E,$04,$1F,$05,$CE,$0B,$15
			FCB	$0C,$19,$0D,$1A,$0E,$06,$0F,$07,$10,$20,$00
			JMP	ZC1C3		       
			JMP	ZC1D8		       
			JMP	ZC207		       
			JMP	ZC229		       
			JMP	ZC221		       
			JMP	ZC237		       
			JMP	ZC1E6		       
ZC0E4			LDX	M7781		       
			JSR	ZE10C		       
			SEC			       
			BRA	ZC0EE		       
ZC0ED			CLC			       
ZC0EE			RTS			       
ZC0EF			LDAB	M778C		       
			STAB	M0073		       
			LDX	M7781		       
			LDAB	,X		       
			JSR	ZD06A		       
			BRA	ZC16F		       
ZC0FE			TST	M6E38		       
			BEQ	ZC10E		       
			JSR	ZC7C2		       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			BRA	ZC120		       
ZC10E			LDAB	M778C		       
			JSR	ZD099		       
			LDAB	M778C		       
			JSR	ZC832		       
			AIM	#$F7,TCSR1	       
			JSR	Z995A		       
ZC120			OIM	#$08,TCSR1	       
			BRA	ZC16F		       
ZC125			LDAB	M778C		       
			JSR	ZD099		       
			BRA	ZC16F		       
ZC12D			LDX	#MA01B		       
			JSR	Z92E3		       
			BRA	ZC16F		       
ZC135			LDAB	M778C		       
			JSR	ZC81C		       
			AIM	#$BF,TCSR3	       
			JSR	ZEC17		       
			OIM	#$40,TCSR3	       
			BRA	ZC16F		       
ZC146			JSR	Z95E5		       
			BRA	ZC16F		       
ZC14B			JSR	ZB805		       
			BRA	ZC16F		       
ZC150			JSR	HI_CALL_03	       
			BRA	ZC16F		       
ZC155			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			AIM	#$BF,TCSR3	       
			JSR	HI_CALL_15	       
			JSR	HI_CALL_16	       
			OIM	#$40,TCSR3	       
			BRA	ZC16F		       
ZC169			JSR	ZC7C2		       
ZC16C			JSR	ZB805		       
ZC16F			LDAA	#$01		       
			STAA	M7791		       
			JMP	ZC0E4		       
ZC177			TST	M778C		       
			BNE	ZC184		       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			BRA	ZC187		       
ZC184			JMP	ZC0E4		       
ZC187			LDX	#M9A41		       
			JSR	Z92E3		       
			BRA	ZC1D2		       
ZC18F			JSR	Z9A87		       
			LDX	#M9B02		       
			JSR	Z92E3		       
			LDX	#M9C35		       
			JSR	Z92E3		       
			LDX	#M9AC2		       
			JSR	Z92E3		       
			JSR	Z9C76		       
			LDX	#M9D12		       
			JSR	Z92E3		       
			BRA	ZC1D8		       
ZC1AF			LDX	#M9E95		       
			BRA	ZC1D5		       
ZC1B4			LDX	#M9EB9		       
			BRA	ZC1D5		       
ZC1B9			LDX	#M9EEC		       
			BRA	ZC1D5		       
ZC1BE			LDX	#M9ECC		       
			BRA	ZC1D5		       
ZC1C3			LDX	#M9E6D		       
			BRA	ZC1D5		       
ZC1C8			LDAB	M778C		       
			CMPB	#$04		       
			BCS	ZC1D2		       
			JMP	ZC0E4		       
ZC1D2			LDX	#M9F00		       
ZC1D5			JSR	Z92DB		       
ZC1D8			LDAA	#$01		       
			STAA	M7792		       
ZC1DD			JMP	ZC0E4		       
ZC1E0			JSR	HI_CALL_18	       
			JMP	ZC0E4		       
ZC1E6			LDX	#MA01B		       
			JSR	Z92E3		       
			BRA	ZC1D8		       
ZC1EE			LDAB	M7789		       
			BNE	ZC1F8		       
			JSR	ZE6BD		       
			BRA	ZC207		       
ZC1F8			CMPB	#$01		       
			BEQ	ZC207		       
			CMPB	#$07		       
			BHI	ZC1DD		       
			BEQ	ZC207		       
			JSR	ZE6BD		       
			BRA	ZC1DD		       
ZC207			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			LDAB	M7774		       
			CMPB	#$0A		       
			BNE	ZC1DD		       
			TST	M7789		       
			BNE	ZC1DD		       
			JSR	ZE0F3		       
			BRA	ZC1D8		       
ZC221			LDX	#MA049		       
			JSR	Z92E3		       
			BRA	ZC1D8		       
ZC229			LDX	#MA0D1		       
			JSR	Z92E3		       
			LDX	#MA0F1		       
			JSR	Z92E3		       
			BRA	ZC1D8		       
ZC237			LDX	#MA100		       
			JSR	Z92E3		       
			LDX	#MA110		       
			JSR	Z92E3		       
			BRA	ZC1D8		       
ZC245			CLRB			       
			LDX	#M7571		       
ZC249			STAB	,X		       
			INCB			       
			INX			       
			CPX	#M75F1		       
			BNE	ZC249		       
			RTS			       
ZC253			LDAA	PORT2		       
			COMA			       
			ANDA	#$E0		       
			RTS			       
ZC259			LDAB	M778C		       
			LDX	#M6DD7		       
			LDAA	#$0C		       
			MUL			       
			ABX			       
			LDAB	$02,X		       
			PSHB			       
			JSR	ZB164		       
			JSR	ZAFD9		       
			PULB			       
			JSR	ZB787		       
			JSR	ZB084		       
			RTS			       
ZC274			CMPB	#$1E		       
			BEQ	ZC286		       
			JSR	HI_CALL_1A	       
			JSR	ZE111		       
			CLRA			       
			STAA	M777B		       
ZC282			JSR	ZB082		       
			RTS			       
ZC286			JSR	ZC291		       
			JSR	ZE112		       
			JSR	ZE10F		       
			BRA	ZC282		       
ZC291			LDAA	M7780		       
			STAA	M7773		       
			CLR	M7793		       
			LDAA	#$01		       
			STAA	M7792		       
			LDD	#M0101		       
			STD	M776E		       
			STD	M7770		       
			TST	M756E		       
			BNE	ZC2B9		       
			LDAB	#$01		       
			STAB	M756E		       
			BSR	ZC2BC		       
			CLR	M756E		       
			BRA	ZC2BB		       
ZC2B9			BSR	ZC2BC		       
ZC2BB			RTS			       
ZC2BC			LDX	#M6A19		       
			JMP	ZB7A2		       
HI_CALL_1A		LDAB	M7773		       
			JSR	HI_CALL_19	       
			CLR	M7793		       
			LDAA	#$01		       
			STAA	M7792		       
			LDD	#M0101		       
			STD	M776E		       
			STD	M7770		       
			LDX	#INIT_VOICE	       
			TST	M756E		       
			BNE	ZC2EE		       
			LDAB	#$01		       
			STAB	M756E		       
			JSR	ZB7A2		       
			CLR	M756E		       
			BRA	ZC2F1		       
ZC2EE			JSR	ZB7A2		       
ZC2F1			RTS			       
HI_CALL_19		TST	M7792		       
			BEQ	ZC314		       
			LDAA	M7773		       
			STAA	M7780		       
			STAB	M7773		       
			CLR	M7792		       
			TST	M7793		       
			BNE	ZC313		       
			LDX	#M6A67		       
			STX	M00A9		       
			LDX	#M6A19		       
			JSR	LO_CALL_06	       
ZC313			RTS			       
ZC314			STAB	M7773		       
			BRA	ZC313		       
HI_CALL_1B		LDAB	M7773		       
			JSR	HI_CALL_19	       
			CLR	M7793		       
			JSR	ZAEDD		       
			STX	M00A9		       
			LDX	#M6A67		       
			JSR	LO_CALL_00	       
			JSR	LO_CALL_08	       
			JSR	HI_CALL_05	       
			LDD	#M0101		       
			STD	M776E		       
			STD	M7770		       
			RTS			       
ZC33D			LDAB	#$04		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			RTS			       
ZC345			LDAA	M778F		       
HI_CALL_02		LDAB	M778A		       
			JSR	Z969B		       
			LDAA	M7789		       
			CMPA	#$03		       
			BEQ	ZC365		       
			LDX	#M7F9A		       
			STX	M00A9		       
			LDAB	#$18		       
			LDX	#M7628		       
			JSR	ZAE8A		       
			JMP	ZC406		       
ZC365			LDX	#M7F9A		       
			STX	M00A9		       
			LDX	#M7640		       
			STX	M00A7		       
			LDAB	#$0C		       
ZC371			PSHB			       
			LDX	M00A9		       
			LDD	,X		       
			PSHA			       
			LDAA	M778A		       
			CMPA	#$09		       
			PULA			       
			BCS	ZC389		       
			BNE	ZC385		       
			SUBA	#$1E		       
			BRA	ZC38B		       
ZC385			SUBA	#$0F		       
			BRA	ZC38B		       
ZC389			SUBA	#$3C		       
ZC38B			INX			       
			INX			       
			STX	M00A9		       
			LDX	M00A7		       
			STD	,X		       
			INX			       
			INX			       
			STX	M00A7		       
			PULB			       
			DECB			       
			BNE	ZC371		       
			CLRB			       
ZC39C			PSHB			       
			LDAA	#$18		       
			MUL			       
			LDX	#M7640		       
			ABX			       
			STX	M00A9		       
			LDAB	#$18		       
			ABX			       
			STX	M00A7		       
			PULB			       
			PSHB			       
			CMPB	#$09		       
			BNE	ZC3B5		       
			LDAB	#$08		       
			BRA	ZC3B7		       
ZC3B5			LDAB	#$0C		       
ZC3B7			PSHB			       
			LDX	M00A9		       
			LDD	,X		       
			PSHA			       
			LDAA	M778A		       
			CMPA	#$09		       
			PULA			       
			BCS	ZC3CF		       
			BNE	ZC3CB		       
			ADDA	#$06		       
			BRA	ZC3D1		       
ZC3CB			ADDA	#$03		       
			BRA	ZC3D1		       
ZC3CF			ADDA	#$0C		       
ZC3D1			INX			       
			INX			       
			STX	M00A9		       
			LDX	M00A7		       
			STD	,X		       
			INX			       
			INX			       
			STX	M00A7		       
			PULB			       
			DECB			       
			BNE	ZC3B7		       
			PULB			       
			INCB			       
			CMPB	#$0A		       
			BNE	ZC39C		       
			CLRB			       
			LDX	#M7640		       
ZC3EB			LDAA	,X		       
ZC3ED			CMPA	#$0D		       
			BCC	ZC3F5		       
			ADDA	#$0C		       
			BRA	ZC3ED		       
ZC3F5			CMPA	#$6D		       
			BCS	ZC3FD		       
			SUBA	#$0C		       
			BRA	ZC3F5		       
ZC3FD			STAA	,X		       
			INX			       
			INX			       
			INCB			       
			CMPB	#$80		       
			BNE	ZC3EB		       
ZC406			RTS			       
ZC407			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	ZC41F		       
			LDAA	M6E37		       
ZC411			CMPA	#$0B		       
			BCS	ZC43D		       
			BEQ	ZC41B		       
			LDAA	#$03		       
			BRA	ZC442		       
ZC41B			LDAA	#$06		       
			BRA	ZC442		       
ZC41F			LDAA	M7774		       
			CMPA	#$1C		       
			BNE	ZC441		       
			LDAA	M7788		       
			CMPA	#$02		       
			BNE	ZC441		       
			LDAA	M7789		       
			BEQ	ZC43D		       
			CMPA	#$02		       
			BEQ	ZC43D		       
			LDAA	M778A		       
			ADDA	#$02		       
			BRA	ZC411		       
ZC43D			LDAA	#$0C		       
			BRA	ZC442		       
ZC441			CLRA			       
ZC442			STAA	M7F99		       
			RTS			       
LCD_INIT		LDAA	#$38		       
			LDX	#M0000		       
ZC44B			DEX			       
			BNE	ZC44B		       
			STAA	LCD_CMD 	       
			LDX	#M2710		       
ZC454			DEX			       
			BNE	ZC454		       
			STAA	LCD_CMD 	       
			LDX	#M2710		       
ZC45D			DEX			       
			BNE	ZC45D		       
			STAA	LCD_CMD 	       
			JSR	LCD_WAIT	       
			STAA	LCD_CMD 	       
			JSR	LCD_WAIT	       
			LDAA	#$0C		       
			STAA	LCD_CMD 	       
			JSR	LCD_WAIT	       
			LDAA	#$01		       
			STAA	LCD_CMD 	       
			JSR	LCD_WAIT	       
			LDAA	#$06		       
			STAA	LCD_CMD 	       
			LDAA	#$20		       
			LDX	#M7D8B		       
ZC486			STAA	,X		       
			INX			       
			CPX	#M7DAB		       
			BNE	ZC486		       
			LDX	#M009B		       
ZC491			CLR	,X		       
			INX			       
			CPX	#M009D		       
			BNE	ZC491		       
			JSR	ZC253		       
			CMPA	#$60		       
			BNE	ZC4A4		       
			LDAB	#$01		       
			BRA	ZC4B2		       
ZC4A4			CMPA	#$A0		       
			BNE	ZC4AC		       
			LDAB	#$02		       
			BRA	ZC4B2		       
ZC4AC			CMPA	#$C0		       
			BNE	ZC4CA		       
			LDAB	#$03		       
ZC4B2			STAB	M00A6		       
			LSRA			       
			LSRA			       
			LSRA			       
			LSRA			       
			LSRA			       
			STAA	M009B		       
			LDX	#SVERSION	       
			STX	M00A9		       
			LDAB	#$10		       
			LDX	#M7740		       
			JSR	ZAE8A		       
			BRA	ZC4EE		       
ZC4CA			JSR	HI_CALL_17	       
			CMPB	#$07		       
			BNE	ZC4D4		       
			JSR	HI_CALL_17	       
ZC4D4			CMPB	#$03		       
			BNE	ZC4EE		       
			LDAA	#$01		       
			STAA	M00AD		       
ZC4DC			LDX	#M80EF		       
			STX	M00A9		       
			LDAB	#$10		       
			LDX	#M7740		       
			JSR	ZAE8A		       
			TST	>M00AD		       
			BNE	ZC544		       
ZC4EE			JSR	ZC8D9		       
			CLRB			       
ZC4F2			PSHB			       
			LSRB			       
			ANDB	#$03		       
			LDAA	#$80		       
ZC4F8			TSTB			       
			BEQ	ZC4FF		       
			DECB			       
			LSRA			       
			BRA	ZC4F8		       
ZC4FF			ORAA	#$08		       
			STAA	PORT6		       
			PULB			       
			CMPB	#$10		       
			BCS	ZC512		       
			LDX	#M7740		       
			PSHB			       
			SUBB	#$10		       
			ABX			       
			PULB			       
			BRA	ZC516		       
ZC512			LDX	#MC6A6		       
			ABX			       
ZC516			LDAA	,X		       
			LDX	#M7DAB		       
			ABX			       
			STX	M00A7		       
			CMPA	#$20		       
			BCS	ZC4DC		       
			CMPA	#$80		       
			BCC	ZC4DC		       
			PSHB			       
			TAB			       
			JSR	ZC882		       
			JSR	ZC892		       
			PULB			       
			TST	>M00A6		       
			BNE	ZC53A		       
			LDX	#MA000		       
ZC537			DEX			       
			BNE	ZC537		       
ZC53A			INCB			       
			CMPB	#$20		       
			BNE	ZC4F2		       
			LDAB	#$FF		       
			JSR	ZF054		       
ZC544			JSR	ZC8D9		       
			RTS			       
ZC548			CLR	M7F99		       
			CLR	M7788		       
			CLR	M7789		       
			CLR	M778A		       
			CLR	M778C		       
			TST	M7793		       
			BEQ	ZC561		       
			LDAA	#$01		       
			STAA	M7792		       
ZC561			LDAA	M7790		       
			BEQ	ZC56B		       
			LDAA	#$FF		       
			STAA	M7790		       
ZC56B			LDAA	#$01		       
			STAA	M756D		       
			STAA	M756E		       
			LDAA	#$FF		       
			STAA	M7794		       
			STAA	M7795		       
			LDAA	M7772		       
			ANDA	#$07		       
			CMPA	#$03		       
			BEQ	ZC588		       
			CMPA	#$07		       
			BNE	ZC589		       
ZC588			CLRA			       
ZC589			STAA	M7772		       
			CLR	M777D		       
			LDAA	#$01		       
			STAA	M776C		       
			CLR	>M00EF		       
			JSR	ZC7C2		       
			LDAA	#$B1		       
			CMPA	M776D		       
			BCC	ZC5A4		       
			STAA	M776D		       
ZC5A4			CLR	M778B		       
			LDAA	M778F		       
			CMPA	#$0C		       
			BCS	ZC5AF		       
			CLRA			       
ZC5AF			STAA	M778F		       
			JSR	HI_CALL_09	       
			LDAA	M7779		       
			CMPA	#$18		       
			BCS	ZC5BF		       
			CLR	M7779		       
ZC5BF			LDAA	M7773		       
			CMPA	#$A0		       
			BCS	ZC5C9		       
			CLR	M7773		       
ZC5C9			LDAA	M7780		       
			CMPA	#$A0		       
			BCS	ZC5D3		       
			CLR	M7780		       
ZC5D3			LDAA	M777B		       
			ANDA	#$03		       
			STAA	M777B		       
			LDAA	M7776		       
			CMPA	#$0B		       
			BCS	ZC5E5		       
			CLR	M7776		       
ZC5E5			LDAA	M7775		       
			CMPA	#$1F		       
			BCC	ZC5F0		       
			CMPA	#$14		       
			BCC	ZC5F5		       
ZC5F0			LDAA	#$14		       
			STAA	M7775		       
ZC5F5			LDAA	M7778		       
			CMPA	#$36		       
			BCC	ZC600		       
			CMPA	#$28		       
			BCC	ZC605		       
ZC600			LDAA	#$28		       
			STAA	M7778		       
ZC605			LDAA	M7777		       
			CMPA	#$3F		       
			BCC	ZC610		       
			CMPA	#$3C		       
			BCC	ZC615		       
ZC610			LDAA	#$3C		       
			STAA	M7777		       
ZC615			JSR	LO_CALL_08	       
			LDAA	M7774		       
			TST	>M00A6		       
			BEQ	ZC629		       
			LDAA	#$04		       
			STAA	M7772		       
			LDAA	#$46		       
			BRA	ZC64A		       
ZC629			CMPA	#$46		       
			BCS	ZC630		       
			JSR	ZBBBC		       
ZC630			TST	>M00AD		       
			BEQ	ZC641		       
			LDAA	#$FF		       
			STAA	M7790		       
			CLR	M7772		       
			LDAA	#$1F		       
			BRA	ZC64A		       
ZC641			LDAA	M7774		       
			CMPA	#$1F		       
			BNE	ZC64A		       
			LDAA	#$14		       
ZC64A			STAA	M7774		       
			LDAA	M7772		       
			BNE	ZC65F		       
			LDAB	M7774		       
			CMPB	#$20		       
			BCC	ZC697		       
			CMPB	#$14		       
			BCC	ZC69C		       
			BRA	ZC697		       
ZC65F			CMPA	#$01		       
			BNE	ZC66D		       
			LDAB	M7774		       
			CMPB	#$0B		       
			BCS	ZC69C		       
			CLRB			       
			BRA	ZC699		       
ZC66D			CMPA	#$04		       
			BNE	ZC684		       
			LDAB	M7774		       
			CMPB	#$46		       
			BEQ	ZC69C		       
			CMPB	#$3F		       
			BCC	ZC680		       
			CMPB	#$3C		       
			BCC	ZC69C		       
ZC680			LDAB	#$3C		       
			BRA	ZC699		       
ZC684			CMPA	#$05		       
			BNE	ZC69F		       
			LDAB	M7774		       
			CMPB	#$36		       
			BCC	ZC693		       
			CMPB	#$28		       
			BCC	ZC69C		       
ZC693			LDAB	#$28		       
			BRA	ZC699		       
ZC697			LDAB	#$14		       
ZC699			STAB	M7774		       
ZC69C			JSR	ZB1DD		       
ZC69F			JSR	ZC95A		       
			JSR	ZC972		       
			RTS			       
MC6A6			FCC	"* YAMAHA TX81Z *"     
			FCB	$00		       
HI_CALL_09		LDAA	M756A		       
			CMPA	#$12		       
			BCS	ZC6C3		       
			LDAA	#$01		       
			STAA	M756A		       
ZC6C3			LDAA	M756B		       
			CMPA	#$03		       
			BCS	ZC6CD		       
			CLR	M756B		       
ZC6CD			LDAA	M7569		       
			CMPA	#$12		       
			BCS	ZC6D6		       
			LDAA	#$01		       
ZC6D6			STAA	M7569		       
			LDAA	M756C		       
			ANDA	#$01		       
			STAA	M756C		       
			LDAA	M756D		       
			ANDA	#$01		       
			STAA	M756D		       
			LDAA	M756E		       
			ANDA	#$01		       
			STAA	M756E		       
			LDAA	M756F		       
			ANDA	#$01		       
			STAA	M756F		       
			CLRB			       
ZC6FA			LDX	#M7740		       
			ABX			       
			LDAA	,X		       
			CMPA	#$20		       
			BCS	ZC708		       
			CMPA	#$80		       
			BCS	ZC70C		       
ZC708			LDAA	#$2A		       
			STAA	,X		       
ZC70C			INCB			       
			CMPB	#$10		       
			BNE	ZC6FA		       
			LDAA	M7565		       
			ANDA	#$7F		       
			STAA	M7565		       
			LDAA	M7568		       
			CMPA	#$03		       
			BCS	ZC721		       
			CLRA			       
ZC721			STAA	M7568		       
			LDAA	M7567		       
			ANDA	#$0F		       
			STAA	M7567		       
			LDAA	M7566		       
			CMPA	#$11		       
			BCS	ZC734		       
			CLRA			       
ZC734			STAA	M7566		       
			CLRB			       
ZC738			LDX	#M75F1		       
			ABX			       
			LDAA	,X		       
			PSHX			       
			LDX	#MC7BB		       
			ABX			       
			CMPA	,X		       
			PULX			       
			BLS	ZC74A		       
			CLR	,X		       
ZC74A			INCB			       
			CMPB	#$04		       
			BNE	ZC738		       
			CLRB			       
ZC750			LDX	#M75F5		       
			ABX			       
			LDAA	,X		       
			PSHX			       
			LDX	#MC7BF		       
			ABX			       
			CMPA	,X		       
			PULX			       
			BLS	ZC762		       
			CLR	,X		       
ZC762			INCB			       
			CMPB	#$03		       
			BNE	ZC750		       
			CLRB			       
ZC768			LDX	#M75F8		       
			ABX			       
			LDAA	,X		       
			CMPA	#$31		       
			BLS	ZC774		       
			CLR	,X		       
ZC774			INCB			       
			CMPB	#$30		       
			BNE	ZC768		       
			LDX	#M7571		       
ZC77C			LDAA	,X		       
			CMPA	#$B8		       
			BCS	ZC784		       
			CLR	,X		       
ZC784			INX			       
			CPX	#M75F1		       
			BNE	ZC77C		       
			CLRB			       
ZC78B			LDX	#M7628		       
			JSR	ZC7A1		       
			CMPB	#$0C		       
			BNE	ZC78B		       
			CLRB			       
ZC796			LDX	#M7640		       
			JSR	ZC7A1		       
			CMPB	#$80		       
			BNE	ZC796		       
			RTS			       
ZC7A1			PSHB			       
			ASLB			       
			ABX			       
			LDD	,X		       
			CMPA	#$0D		       
			BCC	ZC7AE		       
			LDAA	#$0D		       
			BRA	ZC7B4		       
ZC7AE			CMPA	#$6C		       
			BLS	ZC7B4		       
			LDAA	#$6C		       
ZC7B4			ANDB	#$3F		       
			STD	,X		       
			PULB			       
			INCB			       
			RTS			       
MC7BB			FCB	$7F,$30,$07,$63        
MC7BF			FCB	$02,$01,$63	       
ZC7C2			LDAB	#$08		       
			LDX	#M7D8A		       
			LDAA	#$80		       
			BSR	ZC7F8		       
			LDAB	#$08		       
			LDX	#M7D5A		       
			CLRA			       
			BSR	ZC7F8		       
			LDAB	#$08		       
			LDX	#M7D62		       
			CLRA			       
			BSR	ZC7F8		       
			LDAB	#$08		       
			LDX	#M7D6A		       
			LDAA	#$FE		       
			BSR	ZC7F8		       
			LDAB	#$08		       
			LDX	#M0048		       
			LDAA	#$40		       
			BSR	ZC7F8		       
			LDAB	#$08		       
			LDX	#M0050		       
			CLRA			       
			BSR	ZC7F8		       
			BSR	ZC7FF		       
			RTS			       
ZC7F8			STAA	,X		       
			DEX			       
			DECB			       
			BNE	ZC7F8		       
			RTS			       
ZC7FF			LDAB	M7772		       
			ANDB	#$04		       
			BNE	ZC810		       
			LDAB	#$08		       
			LDX	#M7D72		       
			CLRA			       
			BSR	ZC7F8		       
			BRA	ZC812		       
ZC810			BSR	ZC813		       
ZC812			RTS			       
ZC813			CLRB			       
ZC814			BSR	ZC81C		       
			INCB			       
			CMPB	#$08		       
			BNE	ZC814		       
			RTS			       
ZC81C			PSHB			       
			LDX	#M6DD7		       
			LDAA	#$0C		       
			MUL			       
			ABX			       
			LDAA	$08,X		       
			JSR	Z908B		       
			COMA			       
			LDX	#M7D6B		       
			PULB			       
			ABX			       
			STAA	,X		       
			RTS			       
ZC832			LDX	#M7D83		       
			ABX			       
			LDAA	#$80		       
			STAA	,X		       
			LDX	#M7D53		       
			ABX			       
			CLRA			       
			STAA	,X		       
			LDX	#M7D5B		       
			ABX			       
			CLRA			       
			STAA	,X		       
			LDX	#M7D63		       
			ABX			       
			LDAA	#$FE		       
			STAA	,X		       
			LDX	#M0041		       
			ABX			       
			LDAA	#$40		       
			STAA	,X		       
			LDX	#M0049		       
			ABX			       
			CLRA			       
			STAA	,X		       
			JSR	ZC81C		       
			RTS			       
			PSHA			       
			PULA			       
			PSHA			       
			PULA			       
			RTS			       
ZC868			LDAB	,X		       
			BMI	ZC876		       
			CMPB	#$20		       
			BCC	ZC871		       
			RTS			       
ZC871			BSR	ZC882		       
			INX			       
			BRA	ZC868		       
ZC876			PSHX			       
			LDX	#$C801		       
			ABX			       
			BSR	ZC868		       
			PULX			       
			INX			       
			BRA	ZC868		       
			FCB	$00		       
ZC882			PSHX			       
			LDX	M00A7		       
			STAB	,X		       
			INX			       
			STX	M00A7		       
			PULX			       
			RTS			       
LCD_WAIT		TST	LCD_CMD 	       
			BMI	LCD_WAIT	       
			RTS			       
ZC892			LDX	#M7DAB		       
			STX	M00A9		       
			LDX	#M7D8B		       
			STX	M00A7		       
			LDAB	#$80		       
ZC89E			LDX	M00A9		       
			LDAA	,X		       
			INX			       
			STX	M00A9		       
			LDX	M00A7		       
			CMPA	,X		       
			BEQ	ZC8B7		       
			BSR	LCD_WAIT	       
			STAB	LCD_CMD 	       
			BSR	LCD_WAIT	       
			STAA	LCD_DATA	       
			STAA	,X		       
ZC8B7			INX			       
			STX	M00A7		       
			INCB			       
			CMPB	#$D0		       
			BEQ	ZC8C7		       
			CMPB	#$90		       
			BNE	ZC89E		       
			LDAB	#$C0		       
			BRA	ZC89E		       
ZC8C7			RTS			       
ZC8C8			PSHX			       
			LDX	#M7DAB		       
			STX	M00A7		       
			PULX			       
ZC8CF			JSR	ZC868		       
			JMP	ZC892		       
ZC8D5			LDAA	#$10		       
			BRA	ZC8DB		       
ZC8D9			LDAA	#$20		       
ZC8DB			LDX	#M7DCB		       
ZC8DE			PSHA			       
			LDAA	#$20		       
			DEX			       
			STAA	,X		       
			PULA			       
			DECA			       
			BNE	ZC8DE		       
			RTS			       
ZC8E9			TST	M7790		       
			BEQ	ZC8F3		       
			OIM	#$10,PORT6	       
			BRA	ZC8F6		       
ZC8F3			AIM	#$EF,PORT6	       
ZC8F6			LDAB	M7772		       
			ANDB	#$07		       
			JSR	JMPOFFB 	       
			FCB	$09,$21,$39,$05,$14,$2C,$35,$01
			RTS			       
			TST	M7793		       
			BEQ	ZC916		       
			TIM	#$20,M006E	       
			BEQ	ZC916		       
			AIM	#$7F,PORT6	       
			BRA	ZC919		       
ZC916			OIM	#$80,PORT6	       
ZC919			AIM	#$BF,PORT6	       
			AIM	#$DF,PORT6	       
			RTS			       
			TST	M7793		       
			BEQ	ZC92F		       
			TIM	#$20,M006E	       
			BEQ	ZC92F		       
			AIM	#$BF,PORT6	       
			BRA	ZC932		       
ZC92F			OIM	#$40,PORT6	       
ZC932			AIM	#$7F,PORT6	       
			AIM	#$DF,PORT6	       
			RTS			       
			AIM	#$7F,PORT6	       
			AIM	#$BF,PORT6	       
			TST	>M00AE		       
			BNE	ZC949		       
			OIM	#$20,PORT6	       
			BRA	ZC94C		       
ZC949			AIM	#$DF,PORT6	       
ZC94C			RTS			       
ZC94D			SEI			       
ZC94E			BRN	ZC94E		       
			LDAA	#$21		       
			STAA	M006E		       
			LDAA	#$02		       
			STAA	M00AE		       
			CLI			       
			RTS			       
ZC95A			AIM	#$BF,TCSR3	       
			JSR	HI_CALL_15	       
			OIM	#$40,TCSR3	       
			JSR	ZC407		       
			JSR	ZC8E9		       
			LDAB	#$0B		       
			STAB	>XROM		       
			JSR	XROM_CALL1	       
			RTS			       
ZC972			TST	>M009A		       
			BNE	ZC9DF		       
			LDAB	M7772		       
			CMPB	#$02		       
			BCS	ZC99B		       
			CMPB	#$04		       
			BCS	ZC9DF		       
			CMPB	#$06		       
			BCS	ZC9A5		       
			BEQ	ZC993		       
			CMPB	#$09		       
			BEQ	ZC990		       
			CMPB	#$11		       
			BNE	ZC9DF		       
ZC990			JMP	ZCB00		       
ZC993			TST	M7795		       
			BPL	ZC9DF		       
			JMP	ZCAB2		       
ZC99B			TST	M7794		       
			BPL	ZC9DF		       
			TST	M7793		       
			BNE	ZC9DF		       
ZC9A5			LDAB	M7774		       
			LDAA	M7788		       
			CMPA	#$02		       
			BCS	ZC9B2		       
			JMP	ZCB0C		       
ZC9B2			JSR	JMPOFF1 	       
			FCB	$31,$01,$28,$03,$47,$04,$84,$05,$C9,$07,$C0,$08,$C5
			FCB	$09,$BC,$0A,$D0,$0B,$18,$1F,$E2,$20,$14,$29,$E5,$30
			FCB	$14,$31,$E1,$33,$0D,$34,$0A,$35,$CC,$36,$06,$3C,$D7
			FCB	$3D,$02,$00	       
ZC9DF			RTS			       
			JMP	ZCAEB		       
			JMP	ZCADA		       
			LDAA	M778C		       
			BNE	ZC9EF		       
			LDAA	#$C4		       
			BRA	ZC9F1		       
ZC9EF			ADDA	#$80		       
ZC9F1			JSR	LCD_WAIT	       
			STAA	LCD_CMD 	       
			LDAA	#$0D		       
ZC9F9			JSR	LCD_WAIT	       
			STAA	LCD_CMD 	       
			RTS			       
			CMPA	#$01		       
			BNE	ZC9DF		       
			LDAB	M7789		       
			BNE	ZCA10		       
			LDAA	M778C		       
			BEQ	ZCA3B		       
			BRA	ZC9EF		       
ZCA10			CMPB	#$01		       
			BEQ	ZCA27		       
ZCA14			LDAA	M778C		       
			CMPA	#$04		       
			BCS	ZCA1F		       
			SUBA	#$03		       
			BRA	ZC9EF		       
ZCA1F			LDAB	#$03		       
			MUL			       
			ADDB	#$C6		       
			TBA			       
			BRA	ZC9F1		       
ZCA27			LDAA	M778C		       
			BEQ	ZCA37		       
			CMPA	#$05		       
			BCS	ZCA34		       
			SUBA	#$04		       
			BRA	ZC9EF		       
ZCA34			DECA			       
			BRA	ZCA1F		       
ZCA37			LDAA	#$C4		       
			BRA	ZC9F1		       
ZCA3B			LDAA	#$CE		       
			BRA	ZC9F1		       
			CMPA	#$01		       
			BNE	ZC9DF		       
			LDAB	M7789		       
			BEQ	ZCA54		       
			CMPB	#$03		       
			BEQ	ZCA54		       
			CMPB	#$06		       
			BEQ	ZCA54		       
			CMPB	#$09		       
			BNE	ZCA5D		       
ZCA54			LDAA	M778C		       
			BNE	ZC9EF		       
			LDAA	#$CD		       
			BRA	ZC9F1		       
ZCA5D			LDAA	M778C		       
			BEQ	ZCA37		       
			CMPA	#$02		       
			BCS	ZCA69		       
			DECA			       
			BRA	ZC9EF		       
ZCA69			LDAB	M777B		       
			LDAA	#$05		       
			JSR	ZAF64		       
			TST	$57,X		       
			BEQ	ZCA7A		       
			LDAA	#$CD		       
			JMP	ZC9F1		       
ZCA7A			LDAA	#$CF		       
			JMP	ZC9F1		       
			CMPA	#$01		       
			BEQ	ZCA86		       
			JMP	ZC9DF		       
ZCA86			LDAA	M778C		       
			CMPA	#$04		       
			BCS	ZCA92		       
			SUBA	#$03		       
			JMP	ZC9EF		       
ZCA92			JMP	ZCA14		       
			CMPA	#$01		       
			BNE	ZCAA0		       
			LDAB	M7789		       
			CMPB	#$0F		       
			BEQ	ZCAA3		       
ZCAA0			JMP	ZC9DF		       
ZCAA3			LDAA	M778C		       
			ADDA	#$C6		       
ZCAA8			JMP	ZC9F1		       
			LDAA	M778C		       
			ADDA	#$C0		       
			BRA	ZCAA8		       
ZCAB2			LDAA	M778C		       
ZCAB5			LDAB	#$04		       
			MUL			       
			TBA			       
			CMPA	#$10		       
			BCS	ZCABF		       
			SUBA	#$0F		       
ZCABF			ADDA	#$C2		       
			LDAB	M7772		       
			CMPB	#$06		       
			BEQ	ZCACF		       
			LDAB	M7774		       
			CMPB	#$3C		       
			BNE	ZCAA8		       
ZCACF			JSR	LCD_WAIT	       
			STAA	LCD_CMD 	       
			LDAA	#$0E		       
			JMP	ZC9F9		       
ZCADA			LDAA	M778C		       
			LDAB	#$03		       
			MUL			       
			TBA			       
			CMPA	#$0C		       
			BCS	ZCAE7		       
			SUBA	#$0B		       
ZCAE7			ADDA	#$C4		       
			BRA	ZCAA8		       
ZCAEB			LDAA	M778C		       
			BEQ	ZCAFC		       
			CMPA	#$01		       
			BNE	ZCAF8		       
			LDAA	#$8F		       
			BRA	ZCAFE		       
ZCAF8			SUBA	#$02		       
			BRA	ZCAB5		       
ZCAFC			LDAA	#$8C		       
ZCAFE			BRA	ZCAA8		       
ZCB00			LDAB	M0059		       
			BEQ	ZCB06		       
			LDAB	#$04		       
ZCB06			ADDB	#$CA		       
			TBA			       
			JMP	ZC9F1		       
ZCB0C			CMPB	#$1B		       
			BNE	ZCB1D		       
			LDAA	M776B		       
			ANDA	#$08		       
			BNE	ZCB1A		       
			JMP	ZCAB2		       
ZCB1A			JMP	ZC9DF		       
ZCB1D			CMPB	#$1C		       
			BNE	ZCB1A		       
			LDAB	M7789		       
			ANDB	#$01		       
			BEQ	ZCB33		       
			LDAA	#$C0		       
			TST	M778C		       
			BEQ	ZCB3C		       
			LDAA	#$CF		       
			BRA	ZCB3C		       
ZCB33			LDAA	#$C6		       
			TST	M778C		       
			BEQ	ZCB3C		       
			ADDA	#$04		       
ZCB3C			JMP	ZC9F1		       
ZCB3F			TST	M776C		       
			BEQ	ZCB68		       
			TST	>M00CA		       
			BEQ	ZCB4E		       
			JSR	ZE66F		       
			BRA	ZCB68		       
ZCB4E			TST	>M00CB		       
			BEQ	ZCB56		       
			JSR	ZE6BD		       
ZCB56			LDX	M00B6		       
			CPX	M00BA		       
			BNE	ZCB6A		       
			LDAA	M00B3		       
			CMPA	#$01		       
			BCS	ZCBDC		       
			CLR	>M00B3		       
			OIM	#$40,TCSR3	       
ZCB68			BRA	ZCBDC		       
ZCB6A			LDD	#M0000		       
			STD	M00B0		       
			LDAA	,X		       
			CPX	#M7EE7		       
			BNE	ZCB79		       
			LDX	#M7E0B		       
ZCB79			INX			       
			STX	M00B6		       
			TSTA			       
			BPL	ZCBB3		       
			CMPA	#$FE		       
			BNE	ZCB8A		       
			LDAB	#$01		       
			STAB	M00AF		       
			CLR	>M00B2		       
ZCB8A			CMPA	#$F8		       
			BCC	ZCBDC		       
ZCB8E			STAA	M00BD		       
			CLR	>M00C4		       
			CMPA	#$F0		       
			BEQ	ZCBA6		       
			BCC	ZCBA4		       
			ANDA	#$0F		       
			TAB			       
			LDX	#M7F89		       
			ABX			       
			LDAA	,X		       
			STAA	M00DA		       
ZCBA4			BRA	ZCB3F		       
ZCBA6			AIM	#$BF,TCSR3	       
			LDAB	#$01		       
			STAB	M00B3		       
			BRA	ZCB3F		       
ZCBAF			LDAA	#$F7		       
			BRA	ZCB8E		       
ZCBB3			LDAB	M00BD		       
			CMPB	#$F0		       
			BCS	ZCBC3		       
			BHI	ZCB3F		       
			TST	M756C		       
			BEQ	ZCBAF		       
			JMP	ZD0C8		       
ZCBC3			LSRB			       
			LSRB			       
			LSRB			       
			LSRB			       
			ANDB	#$07		       
			JSR	JMPOFF1 	       
			FCB	$1D,$01,$72,$02,$0C,$03,$0B,$04,$0C,$05,$0D,$06,$0E
			FCB	$07,$02,$00	       
ZCBDC			RTS			       
			JMP	ZCDE3		       
			JMP	ZCD33		       
			JMP	ZCDCF		       
			JMP	ZCCDC		       
			TST	>M00C4		       
			BNE	ZCBF6		       
			INC	>M00C4		       
			STAA	M00BE		       
			JMP	ZCB3F		       
ZCBF6			CLR	>M00C4		       
ZCBF9			LDAB	M756B		       
			BEQ	ZCC07		       
			EORB	M00BE		       
			ANDB	#$01		       
			BEQ	ZCC07		       
			JMP	ZCB3F		       
ZCC07			AIM	#$BF,TCSR3	       
			AIM	#$F7,TCSR1	       
			LDAB	M00BE		       
			STAB	M0051		       
			LDAA	M00DA		       
			CLRB			       
ZCC14			LSRA			       
			BCS	ZCC1B		       
			BEQ	ZCC37		       
			BRA	ZCC34		       
ZCC1B			PSHA			       
			PSHB			       
			JSR	ZEA9B		       
			JSR	ZECDD		       
			LDAA	#$04		       
			STAA	M0058		       
			JSR	ZEDEA		       
			BVS	ZCC2F		       
			JSR	HI_CALL_1C	       
ZCC2F			JSR	ZEE1F		       
			PULB			       
			PULA			       
ZCC34			INCB			       
			BRA	ZCC14		       
ZCC37			OIM	#$08,TCSR1	       
			OIM	#$40,TCSR3	       
			JMP	ZCB3F		       
			TST	>M00C4		       
			BNE	ZCC4D		       
			INC	>M00C4		       
			STAA	M00BE		       
			JMP	ZCB3F		       
ZCC4D			CLR	>M00C4		       
			TSTA			       
			BEQ	ZCBF9		       
			LDAB	M756B		       
			BEQ	ZCC61		       
			EORB	M00BE		       
			ANDB	#$01		       
			BEQ	ZCC61		       
			JMP	ZCB3F		       
ZCC61			AIM	#$BF,TCSR3	       
			LDAB	M7772		       
			ANDB	#$03		       
			CMPB	#$02		       
			BNE	ZCC78		       
			LDAB	#$21		       
			STAB	M006E		       
			LDAB	#$01		       
			STAB	M00AE		       
			AIM	#$DF,PORT6	       
ZCC78			AIM	#$F7,TCSR1	       
			AIM	#$FE,RP5CR	       
			STAA	M7769		       
			LDAB	M00BE		       
			STAB	M0052		       
			TAB			       
			LDX	#MDF94		       
			ABX			       
			LDAB	,X		       
			STAB	M00F1		       
			LDAA	M00DA		       
			CLRB			       
ZCC91			LSRA			       
			BCS	ZCC98		       
			BEQ	ZCCB1		       
			BRA	ZCCAE		       
ZCC98			PSHA			       
			PSHB			       
			JSR	ZEC77		       
			JSR	ZEA0E		       
			LDAA	#$04		       
			STAA	M0058		       
			JSR	ZED8F		       
			BVS	ZCCAC		       
			JSR	HI_CALL_1D	       
ZCCAC			PULB			       
			PULA			       
ZCCAE			INCB			       
			BRA	ZCC91		       
ZCCB1			LDAA	M776B		       
			ANDA	#$02		       
			BEQ	ZCCD0		       
			TST	M7767		       
			BNE	ZCCD0		       
			LDAA	#$03		       
			STAA	M7767		       
			TST	M75F5		       
			BNE	ZCCCA		       
			JSR	ZECFE		       
ZCCCA			JSR	ZA68F		       
			JSR	ZA68F		       
ZCCD0			OIM	#$01,RP5CR	       
			OIM	#$08,TCSR1	       
			OIM	#$40,TCSR3	       
			JMP	ZCB3F		       
ZCCDC			TST	>M00C4		       
			BNE	ZCCE7		       
			INC	>M00C4		       
			JMP	ZCB3F		       
ZCCE7			CLR	>M00C4		       
			TST	M756A		       
			BEQ	ZCD32		       
			ASLA			       
			LDX	#M7D83		       
			AIM	#$BF,TCSR3	       
			LDAB	TCSR1		       
			PSHB			       
			AIM	#$F7,TCSR1	       
			LDAB	M7772		       
			ANDB	#$04		       
			BEQ	ZCD1E		       
			TST	M6E38		       
			BEQ	ZCD0F		       
			TST	>M00DA		       
			BNE	ZCD1A		       
			BRA	ZCD2C		       
ZCD0F			LDAB	M00BD		       
			ANDB	#$0F		       
			ADDB	#$02		       
			CMPB	M756A		       
			BNE	ZCD1E		       
ZCD1A			LDAB	#$FF		       
			BRA	ZCD20		       
ZCD1E			LDAB	M00DA		       
ZCD20			LSRB			       
			BCS	ZCD27		       
			BEQ	ZCD2C		       
			BRA	ZCD29		       
ZCD27			STAA	,X		       
ZCD29			INX			       
			BRA	ZCD20		       
ZCD2C			PULB			       
			STAB	TCSR1		       
			OIM	#$40,TCSR3	       
ZCD32			RTS			       
ZCD33			TST	M7568		       
			BEQ	ZCD99		       
			LDAB	M7772		       
			CMPB	#$02		       
			BEQ	ZCD43		       
			CMPB	#$06		       
			BNE	ZCD99		       
ZCD43			LDAB	M7568		       
			CMPB	#$02		       
			BEQ	ZCD9A		       
ZCD4A			LDAB	M00BD		       
			ANDB	#$0F		       
			CMPB	M7566		       
			BEQ	ZCD5C		       
			LDAB	M7566		       
			CMPB	#$10		       
			BEQ	ZCD5C		       
			BRA	ZCD99		       
ZCD5C			TAB			       
			LDX	#M7571		       
			ABX			       
			LDAB	,X		       
			LDAA	M7772		       
			CMPA	#$02		       
			BNE	ZCD83		       
			CMPB	#$A0		       
			BCS	ZCD92		       
			LDAA	#$01		       
			STAA	M00CC		       
			PSHB			       
			LDAB	#$07		       
			JSR	Z8A08		       
			PULB			       
ZCD79			SUBB	#$A0		       
			LDAA	#$01		       
			STAA	M00CC		       
			JSR	Z8A64		       
			RTS			       
ZCD83			CMPB	#$A0		       
			BCC	ZCD79		       
			LDAA	#$01		       
			STAA	M00CC		       
			PSHB			       
			LDAB	#$07		       
			JSR	Z8A08		       
			PULB			       
ZCD92			LDAA	#$01		       
			STAA	M00CC		       
			JSR	Z8A81		       
ZCD99			RTS			       
ZCD9A			LDAB	M7772		       
			CMPB	#$02		       
			BEQ	ZCD4A		       
			TAB			       
			LDX	#M7571		       
			ABX			       
			LDAB	,X		       
			CMPB	#$A0		       
			BCC	ZCD99		       
			LDAA	M00DA		       
			CLRB			       
ZCDAF			LSRA			       
			BCS	ZCDB6		       
			BEQ	ZCDC8		       
			BRA	ZCDC5		       
ZCDB6			PSHA			       
			PSHB			       
			PSHX			       
			LDAA	#$01		       
			STAA	M00CC		       
			LDAA	,X		       
			JSR	ZD052		       
			PULX			       
			PULB			       
			PULA			       
ZCDC5			INCB			       
			BRA	ZCDAF		       
ZCDC8			JSR	ZC95A		       
			JSR	ZC972		       
			RTS			       
ZCDCF			TST	M756F		       
			BNE	ZCDD5		       
			RTS			       
ZCDD5			TST	M7569		       
			BNE	ZCDDB		       
			RTS			       
ZCDDB			ASLA			       
			LDX	#M7D5B		       
			JSR	ZD012		       
			RTS			       
ZCDE3			TST	>M00C4		       
			BNE	ZCDF0		       
			INC	>M00C4		       
			STAA	M00BE		       
			JMP	ZCB3F		       
ZCDF0			CLR	>M00C4		       
			LDAB	M00BE		       
			CMPB	#$40		       
			BEQ	ZCE0C		       
			CMPB	#$7B		       
			BEQ	ZCE0C		       
			CMPB	#$7E		       
			BEQ	ZCE0C		       
			CMPB	#$7F		       
			BEQ	ZCE0C		       
			TST	M7569		       
			BEQ	ZCE39		       
			LDAB	M00BE		       
ZCE0C			JSR	JMPOFF1 	       
			FCB	$2A,$01,$32,$02,$38,$03,$24,$04,$41,$05,$51,$06,$83
			FCB	$07,$43,$08,$1A,$0A,$1F,$0B,$16,$40,$7B,$41,$C4,$42
			FCB	$10,$60,$74,$62,$0C,$7B,$FD,$7C,$08,$7E,$07,$7F,$08
			FCB	$80,$02,$00	       
ZCE39			RTS			       
			JMP	ZCF52		       
			JMP	ZCF84		       
			JMP	ZCFA5		       
			ASLA			       
			LDX	#M7D53		       
			JSR	ZD012		       
			RTS			       
			TST	M756F		       
			BNE	ZCE57		       
			ASLA			       
			LDX	#M7D5B		       
			JSR	ZD012		       
ZCE57			RTS			       
			ASLA			       
			LDX	#M7D63		       
			JSR	ZD012		       
			RTS			       
			ASLA			       
			COMA			       
			DECA			       
			LDX	#M7D6B		       
			JSR	ZD012		       
			RTS			       
			LDAB	M7772		       
			ANDB	#$04		       
			BNE	ZCE9D		       
			LDAB	M7566		       
			CMPB	#$10		       
			BEQ	ZCE81		       
			LDAB	M00BD		       
			ANDB	#$0F		       
			CMPB	M7566		       
			BNE	ZCE9D		       
ZCE81			JSR	Z9091		       
			CMPA	M6AA9		       
			BEQ	ZCE9D		       
			STAA	M6AA9		       
			LDX	#MA049		       
			JSR	Z92E3		       
ZCE92			LDAA	#$01		       
			STAA	M7792		       
			JSR	ZC95A		       
			JSR	ZC972		       
ZCE9D			RTS			       
			RTS			       
			RTS			       
			AIM	#$BF,TCSR3	       
			LDAB	TCSR1		       
			PSHB			       
			AIM	#$F7,TCSR1	       
			LDX	#M0041		       
			LDAB	M00DA		       
			CMPA	#$40		       
			BCC	ZCECB		       
			CLRA			       
ZCEB3			LSRB			       
			BCS	ZCEBA		       
			BEQ	ZCEE4		       
			BRA	ZCEC7		       
ZCEBA			AIM	#$7F,$00,X	       
			PSHX			       
			PSHB			       
			PSHA			       
			TAB			       
			JSR	Z885F		       
			PULA			       
			PULB			       
			PULX			       
ZCEC7			INX			       
			INCA			       
			BRA	ZCEB3		       
ZCECB			CLRA			       
ZCECC			LSRB			       
			BCS	ZCED3		       
			BEQ	ZCEE4		       
			BRA	ZCEE0		       
ZCED3			OIM	#$80,$00,X	       
			PSHX			       
			PSHB			       
			PSHA			       
			TAB			       
			JSR	Z885F		       
			PULA			       
			PULB			       
			PULX			       
ZCEE0			INX			       
			INCA			       
			BRA	ZCECC		       
ZCEE4			PULB			       
			STAB	TCSR1		       
			OIM	#$40,TCSR3	       
			RTS			       
			AIM	#$BF,TCSR3	       
			LDAB	TCSR1		       
			PSHB			       
			AIM	#$F7,TCSR1	       
			LDX	#M0041		       
			LDAB	M7772		       
			ANDB	#$04		       
			BEQ	ZCF0D		       
			LDAB	M00BD		       
			ANDB	#$0F		       
			ADDB	#$02		       
			CMPB	M7569		       
			BNE	ZCF0D		       
			LDAB	#$FF		       
			BRA	ZCF0F		       
ZCF0D			LDAB	M00DA		       
ZCF0F			LSRB			       
			BCS	ZCF16		       
			BEQ	ZCF25		       
			BRA	ZCF22		       
ZCF16			CMPA	#$40		       
			BCC	ZCF1F		       
			AIM	#$BF,$00,X	       
			BRA	ZCF22		       
ZCF1F			OIM	#$40,$00,X	       
ZCF22			INX			       
			BRA	ZCF0F		       
ZCF25			PULB			       
			STAB	TCSR1		       
			OIM	#$40,TCSR3	       
			RTS			       
ZCF2C			AIM	#$BF,TCSR3	       
			AIM	#$F7,TCSR1	       
			LDAA	M00DA		       
			CLRB			       
ZCF35			LSRA			       
			BCS	ZCF3C		       
			BEQ	ZCF4B		       
			BRA	ZCF48		       
ZCF3C			PSHA			       
			PSHB			       
			JSR	ZE78F		       
			PULB			       
			PSHB			       
			JSR	ZE9C9		       
			PULB			       
			PULA			       
ZCF48			INCB			       
			BRA	ZCF35		       
ZCF4B			OIM	#$08,TCSR1	       
			OIM	#$40,TCSR3	       
			RTS			       
ZCF52			LDAB	M7772		       
			ANDB	#$04		       
			BNE	ZCF83		       
			LDAB	M7566		       
			CMPB	#$10		       
			BEQ	ZCF69		       
			LDAB	M00BD		       
			ANDB	#$0F		       
			CMPB	M7566		       
			BNE	ZCF83		       
ZCF69			CMPA	#$01		       
			BNE	ZCF2C		       
			TST	M6AA6		       
			BNE	ZCF2C		       
			LDAA	#$01		       
			STAA	M6AA6		       
ZCF77			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JMP	ZCE92		       
ZCF83			RTS			       
ZCF84			LDAB	M7772		       
			ANDB	#$04		       
			BNE	ZCF83		       
			LDAB	M7566		       
			CMPB	#$10		       
			BEQ	ZCF9B		       
			LDAB	M00BD		       
			ANDB	#$0F		       
			CMPB	M7566		       
			BNE	ZCF83		       
ZCF9B			TST	M6AA6		       
			BEQ	ZCF2C		       
			CLR	M6AA6		       
			BRA	ZCF77		       
ZCFA5			AIM	#$BF,TCSR3	       
			LDAB	TCSR1		       
			PSHB			       
			AIM	#$F7,TCSR1	       
			LDAB	M7772		       
			BITB	#$04		       
			BEQ	ZD00B		       
			LDAB	M00BD		       
			ANDB	#$0F		       
			ADDB	#$02		       
			CMPB	M7569		       
			BNE	ZCFC4		       
			LDAB	#$FF		       
			BRA	ZCFC6		       
ZCFC4			LDAB	M00DA		       
ZCFC6			CMPA	#$56		       
			BCC	ZCFD2		       
			CMPA	#$2B		       
			BCC	ZCFD6		       
			LDAA	#$01		       
			BRA	ZCFD8		       
ZCFD2			LDAA	#$02		       
			BRA	ZCFD8		       
ZCFD6			LDAA	#$03		       
ZCFD8			LDX	#M6DE0		       
			CLR	>M00C0		       
ZCFDE			LSRB			       
			BCS	ZCFE5		       
			BEQ	ZCFF8		       
			BRA	ZCFF1		       
ZCFE5			TST	,X		       
			BEQ	ZCFF1		       
			CMPA	,X		       
			BEQ	ZCFF1		       
			STAA	,X		       
			STAA	M00C0		       
ZCFF1			PSHB			       
			LDAB	#$0C		       
			ABX			       
			PULB			       
			BRA	ZCFDE		       
ZCFF8			TST	>M00C0		       
			BEQ	ZD00B		       
			JSR	Z95E5		       
			LDAA	#$01		       
			STAA	M7791		       
			JSR	ZC95A		       
			JSR	ZC972		       
ZD00B			PULB			       
			STAB	TCSR1		       
			OIM	#$40,TCSR3	       
			RTS			       
ZD012			AIM	#$BF,TCSR3	       
			LDAB	TCSR1		       
			PSHB			       
			AIM	#$F7,TCSR1	       
			LDAB	M7772		       
			ANDB	#$04		       
			BEQ	ZD03D		       
			TST	M6E38		       
			BEQ	ZD02E		       
			TST	>M00DA		       
			BNE	ZD039		       
			BRA	ZD04B		       
ZD02E			LDAB	M00BD		       
			ANDB	#$0F		       
			ADDB	#$02		       
			CMPB	M7569		       
			BNE	ZD03D		       
ZD039			LDAB	#$FF		       
			BRA	ZD03F		       
ZD03D			LDAB	M00DA		       
ZD03F			LSRB			       
			BCS	ZD046		       
			BEQ	ZD04B		       
			BRA	ZD048		       
ZD046			STAA	,X		       
ZD048			INX			       
			BRA	ZD03F		       
ZD04B			PULB			       
			STAB	TCSR1		       
			OIM	#$40,TCSR3	       
			RTS			       
ZD052			STAB	M0073		       
			PSHA			       
			LDX	#M6DD7		       
			LDAB	M0073		       
			LDAA	#$0C		       
			MUL			       
			ABX			       
			PULB			       
			CMPB	$02,X		       
			BEQ	ZD098		       
			STAB	$02,X		       
			LDAA	#$01		       
			STAA	M7791		       
ZD06A			PSHB			       
			AIM	#$BF,TCSR3	       
			AIM	#$F7,TCSR1	       
			LDAB	M0073		       
			JSR	ZD099		       
			PULB			       
			JSR	ZAEE0		       
			STX	M00A9		       
			LDAA	M0073		       
			JSR	Z9A2F		       
			JSR	LO_CALL_00	       
			LDAB	M0073		       
			STAB	M009F		       
			LDAB	#$0C		       
			STAB	XROM		       
			JSR	XROM_CALL1	       
			JSR	Z94C9		       
			OIM	#$08,TCSR1	       
			OIM	#$40,TCSR3	       
ZD098			RTS			       
ZD099			LDAA	TCSR1		       
			PSHA			       
			AIM	#$F7,TCSR1	       
			PSHB			       
			JSR	Z95A4		       
			PULB			       
			PSHB			       
			LDX	#M0041		       
			ABX			       
			AIM	#$7F,$00,X	       
			JSR	Z885F		       
			PULB			       
			PSHB			       
			JSR	ZE78F		       
			PULB			       
			TSTB			       
			BNE	ZD0C4		       
			PSHB			       
			JSR	HI_CALL_16	       
			LDAB	#$7C		       
			STAB	M0058		       
			PULB			       
			JSR	ZE821		       
ZD0C4			PULA			       
			STAA	TCSR1		       
			RTS			       
ZD0C8			LDAB	M00C4		       
			CMPB	#$FA		       
			BEQ	ZD0FE		       
			BCC	ZD101		       
			CMPB	#$0F		       
			BCC	ZD0FB		       
			LDX	#MD0DD		       
			ASLB			       
			ABX			       
			LDX	,X		       
			JMP	,X		       
MD0DD			FDB	MD10B_via_cvec_d0dd,MD11A_via_cvec_d0df
			FDB	MD148_via_cvec_d0e1,MD191_via_cvec_d0e3
			FDB	MD1A7_via_cvec_d0e5,MD207_via_cvec_d0e7
			FDB	MD256_via_cvec_d0e9,MD296_via_cvec_d0eb
			FDB	MD296_via_cvec_d0eb,MD296_via_cvec_d0eb
			FDB	MD296_via_cvec_d0eb,MD296_via_cvec_d0eb
			FDB	MD296_via_cvec_d0eb,MD2D6_via_cvec_d0f7
			FDB	MD2D6_via_cvec_d0f7    
ZD0FB			JMP	ZD304		       
ZD0FE			JMP	ZD320		       
ZD101			JMP	ZD104		       
ZD104			LDAA	#$F7		       
			STAA	M00BD		       
			JMP	ZCB3F		       
MD10B_via_cvec_d0dd	STAA	M00BE		       
			CMPA	#$43		       
			BNE	ZD117		       
			INC	>M00C4		       
			JMP	ZCB3F		       
ZD117			JMP	ZD104		       
MD11A_via_cvec_d0df	TAB			       
			ANDA	#$F0		       
			STAA	M00BF		       
			CMPB	#$10		       
			BCS	ZD12D		       
			CMPB	#$20		       
			BCS	ZD131		       
			CMPB	#$30		       
			BCS	ZD131		       
			BRA	ZD145		       
ZD12D			LDAA	#$01		       
			STAA	M00B2		       
ZD131			LDAA	M7566		       
			CMPA	#$10		       
			BEQ	ZD13F		       
			ANDB	#$0F		       
			CMPB	M7566		       
			BNE	ZD145		       
ZD13F			INC	>M00C4		       
			JMP	ZCB3F		       
ZD145			JMP	ZD104		       
MD148_via_cvec_d0e1	STAA	M00C0		       
			LDAB	M00BF		       
			CMPB	#$10		       
			BCS	ZD16D		       
			BEQ	ZD17C		       
			CMPA	#$03		       
			BNE	ZD15C		       
			JSR	ZD326		       
			JMP	ZD104		       
ZD15C			CMPA	#$04		       
			BNE	ZD166		       
			JSR	ZD33D		       
			JMP	ZD104		       
ZD166			CMPA	#$7E		       
			BEQ	ZD18B		       
			JMP	ZD104		       
ZD16D			CMPA	#$03		       
			BEQ	ZD18B		       
			CMPA	#$04		       
			BEQ	ZD18B		       
			CMPA	#$7E		       
			BEQ	ZD18B		       
			JMP	ZD104		       
ZD17C			CMPA	#$10		       
			BEQ	ZD18B		       
			CMPA	#$12		       
			BEQ	ZD18B		       
			CMPA	#$13		       
			BEQ	ZD18B		       
			JMP	ZD104		       
ZD18B			INC	>M00C4		       
			JMP	ZCB3F		       
MD191_via_cvec_d0e3	STAA	M00C1		       
			LDAB	M00BF		       
			CMPB	#$20		       
			BCS	ZD1A1		       
			JSR	ZD3A7		       
			BCC	ZD1A1		       
			JMP	ZD104		       
ZD1A1			INC	>M00C4		       
			JMP	ZCB3F		       
MD1A7_via_cvec_d0e5	STAA	M00C2		       
			LDAB	M00BF		       
			CMPB	#$10		       
			BCS	ZD1D7		       
			BEQ	ZD1BF		       
			JSR	ZD3A7		       
			BCC	ZD1B9		       
			JMP	ZD104		       
ZD1B9			INC	>M00C4		       
			JMP	ZCB3F		       
ZD1BF			LDAB	M00C0		       
			CMPB	#$10		       
			BNE	ZD1D1		       
			LDAA	M00C1		       
			CMPA	#$7B		       
			BCS	ZD1D1		       
			INC	>M00C4		       
			JMP	ZCB3F		       
ZD1D1			JSR	ZD8DD		       
			JMP	ZD104		       
ZD1D7			TST	M756C		       
			BEQ	ZD1E8		       
			LDAB	M00C0		       
			CMPB	#$03		       
			BEQ	ZD1EB		       
			CMPB	#$04		       
			BEQ	ZD1F6		       
			BRA	ZD201		       
ZD1E8			JMP	ZD104		       
ZD1EB			JSR	ZD480		       
			BCS	ZD1E8		       
			INC	>M00C4		       
			JMP	ZCB3F		       
ZD1F6			JSR	ZD4A1		       
			BCS	ZD1E8		       
			INC	>M00C4		       
			JMP	ZCB3F		       
ZD201			INC	>M00C4		       
			JMP	ZCB3F		       
MD207_via_cvec_d0e7	STAA	>M00C3		       
			LDAB	M00BF		       
			CMPB	#$10		       
			BCS	ZD232		       
			BEQ	ZD220		       
			JSR	ZD3A7		       
			BCC	ZD21A		       
			JMP	ZD104		       
ZD21A			INC	>M00C4		       
			JMP	ZCB3F		       
ZD220			LDAB	M00C1		       
			CMPB	#$7D		       
			BCC	ZD22C		       
			JSR	ZD8DD		       
			JMP	ZD104		       
ZD22C			INC	>M00C4		       
			JMP	ZCB3F		       
ZD232			LDAB	M00C0		       
			CMPB	#$03		       
			BEQ	ZD24A		       
			CMPB	#$04		       
			BEQ	ZD250		       
			JSR	ZD3A1		       
			BCC	ZD244		       
			JMP	ZD104		       
ZD244			INC	>M00C4		       
			JMP	ZCB3F		       
ZD24A			JSR	ZD520		       
			JMP	ZCB3F		       
ZD250			JSR	ZD547		       
			JMP	ZCB3F		       
MD256_via_cvec_d0e9	LDAB	M00BF		       
			CMPB	#$10		       
			BCS	ZD272		       
			BEQ	ZD26C		       
			JSR	ZD3A7		       
			BCC	ZD266		       
			JMP	ZD104		       
ZD266			INC	>M00C4		       
			JMP	ZCB3F		       
ZD26C			JSR	ZD8DD		       
			JMP	ZD104		       
ZD272			LDAB	M00C0		       
			CMPB	#$03		       
			BEQ	ZD28A		       
			CMPB	#$04		       
			BEQ	ZD290		       
			JSR	ZD3A1		       
			BCC	ZD284		       
			JMP	ZD104		       
ZD284			INC	>M00C4		       
			JMP	ZCB3F		       
ZD28A			JSR	ZD520		       
			JMP	ZCB3F		       
ZD290			JSR	ZD547		       
			JMP	ZCB3F		       
MD296_via_cvec_d0eb	LDAB	M00BF		       
			CMPB	#$10		       
			BCS	ZD2B2		       
			JSR	ZD3A7		       
			BVS	ZD2AC		       
			BCC	ZD2A6		       
			JMP	ZD104		       
ZD2A6			INC	>M00C4		       
			JMP	ZCB3F		       
ZD2AC			JSR	ZD35B		       
			JMP	ZD104		       
ZD2B2			LDAB	M00C0		       
			CMPB	#$03		       
			BEQ	ZD2CA		       
			CMPB	#$04		       
			BEQ	ZD2D0		       
			JSR	ZD3A1		       
			BCC	ZD2C4		       
			JMP	ZD104		       
ZD2C4			INC	>M00C4		       
			JMP	ZCB3F		       
ZD2CA			JSR	ZD520		       
			JMP	ZCB3F		       
ZD2D0			JSR	ZD547		       
			JMP	ZCB3F		       
MD2D6_via_cvec_d0f7	LDAB	M00C0		       
			CMPB	#$03		       
			BEQ	ZD2F8		       
			CMPB	#$04		       
			BEQ	ZD2FE		       
			JSR	ZD3A1		       
			BVS	ZD2EA		       
			BCC	ZD2F2		       
			JMP	ZD104		       
ZD2EA			JSR	ZD4C5		       
			BCC	ZD2F2		       
			JMP	ZD104		       
ZD2F2			INC	>M00C4		       
			JMP	ZCB3F		       
ZD2F8			JSR	ZD520		       
			JMP	ZCB3F		       
ZD2FE			JSR	ZD547		       
			JMP	ZCB3F		       
ZD304			LDAB	M00C0		       
			CMPB	#$03		       
			BEQ	ZD314		       
			CMPB	#$04		       
			BEQ	ZD31A		       
			JSR	ZD593		       
			JMP	ZCB3F		       
ZD314			JSR	ZD520		       
			JMP	ZCB3F		       
ZD31A			JSR	ZD547		       
			JMP	ZCB3F		       
ZD320			JSR	ZD730		       
			JMP	ZD104		       
ZD326			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			LDAA	#$01		       
			STAA	M00CC		       
			JSR	ZDE39		       
			CLR	>M00CC		       
			JSR	ZE16B		       
			RTS			       
ZD33D			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			LDAB	#$0C		       
			JSR	LCD_WAIT	       
			STAB	LCD_CMD 	       
			CLR	>M00CC		       
			JSR	ZE11D		       
			JSR	ZC95A		       
			JSR	ZC972		       
			RTS			       
ZD35B			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			LDAB	#$0C		       
			JSR	LCD_WAIT	       
			STAB	LCD_CMD 	       
			CLR	>M00CC		       
			LDAB	M00C9		       
			SUBB	#$78		       
			ASLB			       
			LDX	#MD383		       
			ABX			       
			LDX	,X		       
			JSR	,X		       
			JSR	ZC95A		       
			JSR	ZC972		       
			RTS			       
MD383			FDB	ME3EB_via_cvec_d383,ME456_via_cvec_d385
			FDB	ME4C1_via_cvec_bc10,ME543_via_cvec_bc12
			FDB	ME5BE_via_cvec_bc14,ME383_via_cvec_d38d
			FDB	ME245_via_cvec_d38f,MD393_via_cvec_d391
MD393_via_cvec_d391	LDAA	#$01		       
			STAA	M00CC		       
			JSR	ZDE39		       
			CLR	>M00CC		       
			JSR	ZE178		       
			RTS			       
ZD3A1			LDAB	M00C4		       
			SUBB	#$05		       
			BRA	ZD3AB		       
ZD3A7			LDAB	M00C4		       
			SUBB	#$03		       
ZD3AB			CMPB	#$04		       
			BCS	ZD3B9		       
			BEQ	ZD3C7		       
			CMPB	#$08		       
			BCS	ZD3DD		       
			BEQ	ZD402		       
			BCC	ZD407		       
ZD3B9			LDX	#MD476		       
			ABX			       
			CMPA	,X		       
			BNE	ZD3C4		       
			CLC			       
			CLV			       
			RTS			       
ZD3C4			SEC			       
			CLV			       
			RTS			       
ZD3C7			CMPA	#$38		       
			BNE	ZD3D1		       
			CLR	>M00C9		       
			CLC			       
			CLV			       
			RTS			       
ZD3D1			CMPA	#$4D		       
			BNE	ZD3DA		       
			STAA	M00C9		       
			CLC			       
			CLV			       
			RTS			       
ZD3DA			SEC			       
			CLV			       
			RTS			       
ZD3DD			TST	>M00C9		       
			BNE	ZD3F2		       
			LDX	#MD47A		       
			SUBB	#$05		       
			ABX			       
			CMPA	,X		       
			BNE	ZD3EF		       
			CLC			       
			CLV			       
			RTS			       
ZD3EF			SEC			       
			CLV			       
			RTS			       
ZD3F2			LDX	#MD47D		       
			SUBB	#$05		       
			ABX			       
			CMPA	,X		       
			BNE	ZD3FF		       
			CLC			       
			CLV			       
			RTS			       
ZD3FF			SEC			       
			CLV			       
			RTS			       
ZD402			STAA	M00BE		       
			CLC			       
			CLV			       
			RTS			       
ZD407			TAB			       
			LDAA	M00BE		       
			XGDX			       
			TST	>M00C9		       
			BNE	ZD45B		       
			CPX	#M5330		       
			BNE	ZD41C		       
			LDAA	#$7A		       
			STAA	M00C9		       
			CLC			       
			SEV			       
			RTS			       
ZD41C			CPX	#M5331		       
			BNE	ZD428		       
			LDAA	#$7B		       
			STAA	M00C9		       
			CLC			       
			SEV			       
			RTS			       
ZD428			CPX	#M5332		       
			BNE	ZD434		       
			LDAA	#$7C		       
			STAA	M00C9		       
			CLC			       
			SEV			       
			RTS			       
ZD434			CPX	#M5045		       
			BNE	ZD440		       
			LDAA	#$7D		       
			STAA	M00C9		       
			CLC			       
			SEV			       
			RTS			       
ZD440			CPX	#M504D		       
			BNE	ZD44C		       
			LDAA	#$7E		       
			STAA	M00C9		       
			CLC			       
			SEV			       
			RTS			       
ZD44C			CPX	#M4145		       
			BNE	ZD458		       
			LDAA	#$7F		       
			STAA	M00C9		       
			CLC			       
			SEV			       
			RTS			       
ZD458			SEC			       
			CLV			       
			RTS			       
ZD45B			CPX	#M4530		       
			BNE	ZD467		       
			LDAA	#$78		       
			STAA	M00C9		       
			CLC			       
			SEV			       
			RTS			       
ZD467			CPX	#M4531		       
			BNE	ZD473		       
			LDAA	#$79		       
			STAA	M00C9		       
			CLC			       
			SEV			       
			RTS			       
ZD473			SEC			       
			CLV			       
			RTS			       
MD476			FCC	"LM  "		       
MD47A			FCC	"976"		       
MD47D			FCC	"CRT"		       
ZD480			TST	>M00C1		       
			BNE	ZD49F		       
			LDAA	M00C2		       
			CMPA	#$5D		       
			BNE	ZD49F		       
			LDAA	#$03		       
			STAA	M00C9		       
			TST	>M00DF		       
			BNE	ZD49A		       
			LDAB	M7773		       
			JSR	HI_CALL_19	       
ZD49A			CLR	>M00C6		       
			CLC			       
			RTS			       
ZD49F			SEC			       
			RTS			       
ZD4A1			TST	M756D		       
			BEQ	ZD4AB		       
			JSR	ZD879		       
			BRA	ZD4C3		       
ZD4AB			LDAA	M00C1		       
			DECA			       
			CMPA	#$20		       
			BCC	ZD4C3		       
			TST	>M00C2		       
			BNE	ZD4C3		       
			LDAA	#$04		       
			STAA	M00C9		       
			CLR	>M00C8		       
			CLR	>M00C6		       
			CLC			       
			RTS			       
ZD4C3			SEC			       
			RTS			       
ZD4C5			LDAB	M00C9		       
			CMPB	#$7F		       
			BEQ	ZD4DD		       
			CMPB	#$7D		       
			BEQ	ZD4DD		       
			CMPB	#$03		       
			BEQ	ZD4DD		       
			TST	M756D		       
			BEQ	ZD4DD		       
			JSR	ZD879		       
			SEC			       
			RTS			       
ZD4DD			SUBB	#$78		       
			LDX	#MD508		       
			ABX			       
			ASLB			       
			ABX			       
			LDAA	M00C1		       
			LDAB	M00C2		       
			CMPA	,X		       
			BNE	ZD506		       
			CMPB	$01,X		       
			BNE	ZD506		       
			LDAA	$02,X		       
			STAA	M00C6		       
			LDAB	M00C9		       
			CMPB	#$7F		       
			BNE	ZD501		       
			LDAB	M7773		       
			JSR	HI_CALL_19	       
ZD501			CLR	>M00C8		       
			CLC			       
			RTS			       
ZD506			SEC			       
			RTS			       
MD508			FCB	$00,$22,$84,$02,$0A,$85,$00,$25,$3A,$02,$0A,$3B,$00
			FCB	$41,$3C,$00,$78,$4C,$13,$0A,$54,$00,$21,$3D
ZD520			AIM	#$BF,TCSR3	       
			LDAB	#$01		       
			STAB	M00B3		       
			LDAB	M00C4		       
			SUBB	#$05		       
			CMPB	#$57		       
			BCC	ZD535		       
			LDX	#M6A67		       
			ABX			       
			STAA	,X		       
ZD535			ADDA	M00C6		       
			STAA	M00C6		       
			LDAA	M00C4		       
			INCA			       
			STAA	M00C4		       
			CMPA	#$62		       
			BNE	ZD546		       
			LDAA	#$FA		       
			STAA	M00C4		       
ZD546			RTS			       
ZD547			AIM	#$BF,TCSR3	       
			LDAB	#$01		       
			STAB	M00B3		       
			PSHA			       
			LDAA	M00C8		       
			LDAB	#$4E		       
			MUL			       
			ADDD	#M6001		       
			XGDX			       
			PULA			       
			LDAB	M00C4		       
			SUBB	#$05		       
			CMPB	#$54		       
			BCC	ZD56E		       
			CMPB	#$43		       
			BCS	ZD56B		       
			CMPB	#$49		       
			BCS	ZD56E		       
			SUBB	#$06		       
ZD56B			ABX			       
			STAA	,X		       
ZD56E			ADDA	M00C6		       
			STAA	M00C6		       
			INC	>M00C4		       
			LDAA	M00C4		       
			CMPA	#$85		       
			BEQ	ZD57C		       
			RTS			       
ZD57C			INC	>M00C8		       
			LDAA	M00C8		       
			CMPA	M00C1		       
			BEQ	ZD58E		       
			CMPA	#$20		       
			BEQ	ZD58E		       
			LDAB	#$05		       
			STAB	M00C4		       
			RTS			       
ZD58E			LDAA	#$FA		       
			STAA	M00C4		       
			RTS			       
ZD593			AIM	#$BF,TCSR3	       
			LDAB	#$01		       
			STAB	M00B3		       
			LDAB	M00C9		       
			SUBB	#$78		       
			LDX	#MD5A7		       
			ASLB			       
			ABX			       
			LDX	,X		       
			JMP	,X		       
MD5A7			FDB	MD5B7_via_cvec_d5a7,MD5D7_via_cvec_d5a9
			FDB	MD619_via_cvec_d5ab,MD64B_via_cvec_d5ad
			FDB	MD694_via_cvec_d5af,MD6B4_via_cvec_d5b1
			FDB	MD6D4_via_cvec_d5b3,MD710_via_cvec_d5b5
MD5B7_via_cvec_d5a7	LDAB	M00C4		       
			SUBB	#$0F		       
			CMPB	#$18		       
			BCC	ZD5C5		       
			LDX	#M7628		       
			ABX			       
			STAA	,X		       
ZD5C5			ADDA	M00C6		       
			STAA	M00C6		       
			LDAA	M00C4		       
			INCA			       
			STAA	M00C4		       
			CMPA	#$27		       
			BNE	ZD5D6		       
			LDAA	#$FA		       
			STAA	M00C4		       
ZD5D6			RTS			       
MD5D7_via_cvec_d5a9	TST	>M00C8		       
			BNE	ZD5FD		       
			LDAB	M00C4		       
			SUBB	#$0F		       
			LDX	#M7640		       
			ABX			       
			STAA	,X		       
			ADDA	M00C6		       
			STAA	M00C6		       
			INC	>M00C4		       
			LDAA	M00C4		       
			CMPA	#$8F		       
			BCC	ZD5F4		       
			RTS			       
ZD5F4			LDAA	#$01		       
			STAA	M00C8		       
			LDAA	#$0F		       
			STAA	M00C4		       
			RTS			       
ZD5FD			LDAB	M00C4		       
			SUBB	#$0F		       
			LDX	#M76C0		       
			ABX			       
			STAA	,X		       
			ADDA	M00C6		       
			STAA	M00C6		       
			INC	>M00C4		       
			LDAA	M00C4		       
			CMPA	#$8F		       
			BNE	ZD618		       
			LDAA	#$FA		       
			STAA	M00C4		       
ZD618			RTS			       
MD619_via_cvec_d5ab	LDAB	M00C4		       
			SUBB	#$0F		       
			CMPB	#$0B		       
			BCC	ZD62F		       
			LDX	#M7565		       
			ABX			       
			STAA	,X		       
			ADDA	M00C6		       
			STAA	M00C6		       
			INC	>M00C4		       
			RTS			       
ZD62F			CMPB	#$1B		       
			BCC	ZD639		       
			LDX	#M7735		       
			ABX			       
			STAA	,X		       
ZD639			ADDA	M00C6		       
			STAA	M00C6		       
			LDAA	M00C4		       
			INCA			       
			STAA	M00C4		       
			CMPA	#$2A		       
			BNE	ZD64A		       
			LDAA	#$FA		       
			STAA	M00C4		       
ZD64A			RTS			       
MD64B_via_cvec_d5ad	LDX	#M7571		       
			LDAB	M00C4		       
			SUBB	#$0F		       
			ABX			       
			TST	>M00C8		       
			BNE	ZD676		       
			BITA	#$01		       
			BNE	ZD668		       
			ADDA	M00C6		       
			STAA	M00C6		       
			LDAA	,X		       
			ANDA	#$7F		       
			STAA	,X		       
			BRA	ZD672		       
ZD668			ADDA	M00C6		       
			STAA	M00C6		       
			LDAA	,X		       
			ORAA	#$80		       
			STAA	,X		       
ZD672			COM	>M00C8		       
			RTS			       
ZD676			TAB			       
			ADDA	M00C6		       
			STAA	M00C6		       
			TBA			       
			LDAB	,X		       
			ANDB	#$80		       
			ABA			       
			STAA	,X		       
			COM	>M00C8		       
			INC	>M00C4		       
			LDAB	M00C4		       
			CMPB	#$8F		       
			BNE	ZD693		       
			LDAA	#$FA		       
			STAA	M00C4		       
ZD693			RTS			       
MD694_via_cvec_d5af	LDAB	M00C4		       
			SUBB	#$0F		       
			CMPB	#$37		       
			BCC	ZD6A2		       
			LDX	#M75F1		       
			ABX			       
			STAA	,X		       
ZD6A2			ADDA	M00C6		       
			STAA	M00C6		       
			LDAA	M00C4		       
			INCA			       
			STAA	M00C4		       
			CMPA	#$46		       
			BNE	ZD6B3		       
			LDAA	#$FA		       
			STAA	M00C4		       
ZD6B3			RTS			       
MD6B4_via_cvec_d5b1	LDAB	M00C4		       
			SUBB	#$0F		       
			CMPB	#$6E		       
			BCC	ZD6C2		       
			LDX	#M6DD7		       
			ABX			       
			STAA	,X		       
ZD6C2			ADDA	M00C6		       
			STAA	M00C6		       
			LDAA	M00C4		       
			INCA			       
			STAA	M00C4		       
			CMPA	#$7D		       
			BNE	ZD6D3		       
			LDAA	#$FA		       
			STAA	M00C4		       
ZD6D3			RTS			       
MD6D4_via_cvec_d5b3	PSHA			       
			LDAA	M00C8		       
			CMPA	#$18		       
			BCS	ZD6DE		       
			PULA			       
			BRA	ZD6F1		       
ZD6DE			LDAB	#$4C		       
			MUL			       
			ADDD	#M6E45		       
			XGDX			       
			PULA			       
			LDAB	M00C4		       
			SUBB	#$0F		       
			CMPB	#$4C		       
			BCC	ZD6F1		       
			ABX			       
			STAA	,X		       
ZD6F1			ADDA	M00C6		       
			STAA	M00C6		       
			LDAA	M00C4		       
			INCA			       
			STAA	M00C4		       
			CMPA	#$5B		       
			BNE	ZD70F		       
			LDAA	#$FA		       
			STAA	M00C4		       
			LDAA	M00C8		       
			INCA			       
			STAA	M00C8		       
			CMPA	#$20		       
			BEQ	ZD70F		       
			LDAB	#$0F		       
			STAB	M00C4		       
ZD70F			RTS			       
MD710_via_cvec_d5b5	LDAB	M00C4		       
			SUBB	#$0F		       
			CMPB	#$17		       
			BCC	ZD71E		       
			LDX	#M6ABE		       
			ABX			       
			STAA	,X		       
ZD71E			ADDA	M00C6		       
			STAA	M00C6		       
			LDAA	M00C4		       
			INCA			       
			STAA	M00C4		       
			CMPA	#$26		       
			BNE	ZD72F		       
			LDAA	#$FA		       
			STAA	M00C4		       
ZD72F			RTS			       
ZD730			CLR	>M00B3		       
			ADDA	M00C6		       
			ANDA	#$7F		       
			BEQ	ZD749		       
			SUBA	#$30		       
			ANDA	#$7F		       
			BEQ	ZD749		       
			ADDA	#$70		       
			ANDA	#$7F		       
			BEQ	ZD749		       
			JSR	ZD87E		       
			RTS			       
ZD749			LDAB	M00C9		       
			CMPB	#$03		       
			BEQ	ZD75E		       
			CMPB	#$04		       
			BEQ	ZD761		       
			SUBB	#$78		       
			LDX	#MD764		       
			ASLB			       
			ABX			       
			LDX	,X		       
			JMP	,X		       
ZD75E			JMP	ZD774		       
ZD761			JMP	ZD7BD		       
MD764			FDB	MD7D4_via_cvec_d764,MD7E7_via_cvec_d766
			FDB	MD7FA_via_cvec_d768,MD80D_via_cvec_d76a
			FDB	MD81D_via_cvec_d76c,MD830_via_cvec_d76e
			FDB	MD863_via_cvec_d770,MD874_via_cvec_d772
ZD774			TST	>M00DF		       
			BNE	ZD77C		       
			JSR	HI_CALL_12	       
ZD77C			CLR	>M00DF		       
			JSR	LO_CALL_08	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			LDAA	M7772		       
			BITA	#$04		       
			BEQ	ZD7A2		       
			LDX	#M6A67		       
			STX	M00A9		       
			LDX	#M69C1		       
			JSR	LO_CALL_06	       
			JSR	ZB805		       
			BRA	ZD7A5		       
ZD7A2			JSR	Z91FE		       
ZD7A5			LDAA	#$01		       
			STAA	M7792		       
			CLR	M7793		       
			LDD	#M0101		       
			STD	M776E		       
			STD	M7770		       
			JSR	ZC95A		       
			JSR	ZC972		       
			RTS			       
ZD7BD			LDAA	M7772		       
			BITA	#$04		       
			BNE	ZD7D0		       
			JSR	HI_CALL_1B	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
ZD7D0			JSR	ZD883		       
			RTS			       
MD7D4_via_cvec_d764	JSR	HI_CALL_09	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZD8BB		       
			JSR	ZD883		       
			RTS			       
MD7E7_via_cvec_d766	JSR	HI_CALL_09	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZD8BB		       
			JSR	ZD883		       
			RTS			       
MD7FA_via_cvec_d768	JSR	HI_CALL_09	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZD8BB		       
			JSR	ZD883		       
			RTS			       
MD80D_via_cvec_d76a	JSR	HI_CALL_09	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZD883		       
			RTS			       
MD81D_via_cvec_d76c	JSR	HI_CALL_09	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZD8BB		       
			JSR	ZD883		       
			RTS			       
MD830_via_cvec_d76e	LDAA	#$08		       
			LDAB	#$0C		       
			LDX	#M6DD7		       
ZD837			ASL	$02,X		       
			ASR	$01,X		       
			ROR	$02,X		       
			ABX			       
			DECA			       
			BNE	ZD837		       
			JSR	LO_CALL_0A	       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			LDAA	M7772		       
			BITA	#$04		       
			BEQ	ZD857		       
			JSR	ZB805		       
ZD857			LDAA	#$01		       
			STAA	M7791		       
			JSR	ZC95A		       
			JSR	ZC972		       
			RTS			       
MD863_via_cvec_d770	LDAA	M7772		       
			BITA	#$04		       
			BEQ	ZD870		       
			LDAB	M7779		       
			JSR	ZB7D6		       
ZD870			JSR	ZD883		       
			RTS			       
MD874_via_cvec_d772	LDAA	#$01		       
			STAA	M00DF		       
			RTS			       
ZD879			LDX	#Z80DE		       
			BRA	ZD889		       
ZD87E			LDX	#MD8AA		       
			BRA	ZD889		       
ZD883			JSR	ZC95A		       
			LDX	#MD899		       
ZD889			JSR	ZC8C8		       
			LDAA	#$0C		       
			JSR	LCD_WAIT	       
			STAA	LCD_CMD 	       
			LDAA	#$01		       
			STAA	M0057		       
			RTS			       
MD899			FCC	" Midi Received  "     
			FCB	$00		       
MD8AA			FCC	"Midi CSUM Error "     
			FCB	$00		       
ZD8BB			JSR	HI_CALL_0F	       
			JSR	HI_CALL_18	       
			JSR	HI_CALL_11	       
			AIM	#$BF,TCSR3	       
			JSR	HI_CALL_15	       
			JSR	HI_CALL_16	       
			OIM	#$40,TCSR3	       
			RTS			       
HI_CALL_12		LDX	#M6ABE		       
ZD8D4			CLR	,X		       
			INX			       
			CPX	#M6AD5		       
			BNE	ZD8D4		       
			RTS			       
ZD8DD			STAA	M00BE		       
			LDAB	M00C1		       
			LDAA	M00C0		       
			CMPA	#$10		       
			BEQ	ZD90D		       
			CMPA	#$12		       
			BEQ	ZD900		       
			CMPB	#$17		       
			BCC	ZD8F3		       
			JSR	ZD93E		       
			RTS			       
ZD8F3			CMPB	#$40		       
			BCS	ZD8FF		       
			CMPB	#$4C		       
			BCC	ZD8FF		       
			JSR	ZDF29		       
			RTS			       
ZD8FF			RTS			       
ZD900			CMPB	#$57		       
			BCS	ZD909		       
			CMPB	#$5D		       
			BEQ	ZD909		       
			RTS			       
ZD909			JSR	ZDA3F		       
			RTS			       
ZD90D			CMPB	#$6E		       
			BCC	ZD915		       
			JSR	ZDBBD		       
			RTS			       
ZD915			CMPB	#$7B		       
			BNE	ZD91D		       
			JSR	ZDC7F		       
			RTS			       
ZD91D			CMPB	#$7C		       
			BNE	ZD925		       
			JSR	ZDD1C		       
			RTS			       
ZD925			CMPB	#$7D		       
			BNE	ZD92D		       
			JSR	ZDD7E		       
			RTS			       
ZD92D			CMPB	#$7E		       
			BNE	ZD935		       
			JSR	ZDDAC		       
			RTS			       
ZD935			CMPB	#$7F		       
			BNE	ZD93D		       
			JSR	ZDCF6		       
			RTS			       
ZD93D			RTS			       
ZD93E			PSHB			       
			JSR	ZDE08		       
			PULB			       
			CMPB	#$13		       
			BCS	ZD94A		       
			JMP	ZDA05		       
ZD94A			CMPB	#$05		       
			BCS	ZD958		       
			CMPB	#$0A		       
			BCS	ZD95F		       
			CMPB	#$0F		       
			BCS	ZD968		       
			BRA	ZD971		       
ZD958			LDAA	#$03		       
			STAA	M778C		       
			BRA	ZD976		       
ZD95F			SUBB	#$05		       
			LDAA	#$01		       
			STAA	M778C		       
			BRA	ZD976		       
ZD968			SUBB	#$0A		       
			LDAA	#$02		       
			STAA	M778C		       
			BRA	ZD976		       
ZD971			SUBB	#$0F		       
			CLR	M778C		       
ZD976			LDX	#MD97F		       
			ASLB			       
			ABX			       
			LDX	,X		       
			JMP	,X		       
MD97F			FDB	MD989_via_cvec_d97f,MD9A6_via_cvec_d981
			FDB	MD9C2_via_cvec_d983,MD9E2_via_cvec_d985
			FDB	MD9F0_via_cvec_d987    
MD989_via_cvec_d97f	LDAA	#$01		       
			STAA	M7788		       
			LDAA	#$04		       
			STAA	M7774		       
			LDAA	#$03		       
			LDAB	M778C		       
			MUL			       
			INCB			       
			STAB	M7789		       
			CLR	M778C		       
			LDAA	M00C2		       
			JSR	ZDE9D		       
			RTS			       
MD9A6_via_cvec_d981	LDAA	#$01		       
			STAA	M7788		       
			LDAA	#$04		       
			STAA	M7774		       
			LDAA	#$03		       
			LDAB	M778C		       
			MUL			       
			STAB	M7789		       
			CLR	M778C		       
			LDAA	M00C2		       
			JSR	ZDE9D		       
			RTS			       
MD9C2_via_cvec_d983	LDAA	#$01		       
			STAA	M7788		       
			LDAA	#$04		       
			STAA	M7774		       
			LDAA	#$03		       
			LDAB	M778C		       
			MUL			       
			INCB			       
			INCB			       
			STAB	M7789		       
			LDAA	#$01		       
			STAA	M778C		       
			LDAA	M00C2		       
			JSR	ZDE9D		       
			RTS			       
MD9E2_via_cvec_d985	CLR	M7788		       
			LDAA	#$05		       
			STAA	M7774		       
			LDAA	M00C2		       
			JSR	ZDE96		       
			RTS			       
MD9F0_via_cvec_d987	LDAA	#$01		       
			STAA	M7788		       
			LDAA	#$07		       
			STAA	M7774		       
			LDAA	#$05		       
			STAA	M7789		       
			LDAA	M00C2		       
			JSR	ZDE9D		       
			RTS			       
ZDA05			CMPB	#$13		       
			BNE	ZDA0A		       
			RTS			       
ZDA0A			CMPB	#$14		       
			BEQ	ZDA17		       
			CMPB	#$15		       
			BEQ	ZDA1E		       
			CMPB	#$16		       
			BEQ	ZDA25		       
			RTS			       
ZDA17			LDAA	#$0E		       
			STAA	M7789		       
			BRA	ZDA2C		       
ZDA1E			LDAA	#$05		       
			STAA	M7789		       
			BRA	ZDA2C		       
ZDA25			LDAA	#$06		       
			STAA	M7789		       
			BRA	ZDA2C		       
ZDA2C			LDAA	#$01		       
			STAA	M7788		       
			CLR	M778C		       
			LDAA	#$0A		       
			STAA	M7774		       
			LDAA	M00C2		       
			JSR	ZDE9D		       
			RTS			       
ZDA3F			PSHB			       
			JSR	ZDE08		       
			PULB			       
			CMPB	#$34		       
			BCS	ZDA4B		       
			JMP	ZDADF		       
ZDA4B			CMPB	#$0D		       
			BCS	ZDA59		       
			CMPB	#$1A		       
			BCS	ZDA60		       
			CMPB	#$27		       
			BCS	ZDA69		       
			BRA	ZDA72		       
ZDA59			LDAA	#$03		       
			STAA	M778C		       
			BRA	ZDA77		       
ZDA60			SUBB	#$0D		       
			LDAA	#$01		       
			STAA	M778C		       
			BRA	ZDA77		       
ZDA69			SUBB	#$1A		       
			LDAA	#$02		       
			STAA	M778C		       
			BRA	ZDA77		       
ZDA72			SUBB	#$27		       
			CLR	M778C		       
ZDA77			CMPB	#$0A		       
			BNE	ZDA89		       
			CLR	M7788		       
			LDAA	#$08		       
			STAA	M7774		       
			LDAA	M00C2		       
			JSR	ZDE96		       
			RTS			       
ZDA89			CMPB	#$0C		       
			BNE	ZDA9B		       
			CLR	M7788		       
			LDAA	#$06		       
			STAA	M7774		       
			LDAA	M00C2		       
			JSR	ZDE96		       
			RTS			       
ZDA9B			CMPB	#$0B		       
			BNE	ZDABE		       
			LDAA	#$01		       
			STAA	M7788		       
			LDAA	#$04		       
			STAA	M7774		       
			LDAA	M778C		       
			LDAB	#$03		       
			MUL			       
			INCB			       
			STAB	M7789		       
			LDAA	#$01		       
			STAA	M778C		       
			LDAA	M00C2		       
			JSR	ZDE9D		       
			RTS			       
ZDABE			CMPB	#$08		       
			BNE	ZDAC5		       
			INC	M778C		       
ZDAC5			LDX	#MDB7B		       
			ASLB			       
			ABX			       
			LDAA	,X		       
			STAA	M7774		       
			LDAA	$01,X		       
			STAA	M7789		       
			LDAA	#$01		       
			STAA	M7788		       
			LDAA	M00C2		       
			JSR	ZDE9D		       
			RTS			       
ZDADF			CMPB	#$5D		       
			BEQ	ZDB46		       
			CMPB	#$57		       
			BCC	ZDAFB		       
			CMPB	#$36		       
			BCC	ZDAFC		       
			CLR	M7788		       
			SUBB	#$34		       
			STAB	M7774		       
			CLR	M778C		       
			LDAA	M00C2		       
			JSR	ZDE96		       
ZDAFB			RTS			       
ZDAFC			CMPB	#$44		       
			BEQ	ZDAFB		       
			CMPB	#$45		       
			BEQ	ZDAFB		       
			CMPB	#$46		       
			BEQ	ZDAFB		       
			CMPB	#$4D		       
			BCS	ZDB27		       
			TBA			       
			SUBA	#$4D		       
			STAA	M778C		       
			LDAA	#$01		       
			STAA	M7788		       
			LDAA	#$0A		       
			STAA	M7774		       
			LDAA	#$0F		       
			STAA	M7789		       
			LDAA	M00C2		       
			JSR	ZDE9D		       
			RTS			       
ZDB27			SUBB	#$36		       
			ASLB			       
			LDX	#MDB8F		       
			ABX			       
			LDAA	,X		       
			STAA	M7774		       
			LDAA	$01,X		       
			STAA	M7789		       
			LDAA	#$01		       
			STAA	M7788		       
			CLR	M778C		       
			LDAA	M00C2		       
			JSR	ZDE9D		       
			RTS			       
ZDB46			CLR	M776E		       
			CLR	M776F		       
			CLR	M7770		       
			CLR	M7771		       
			LDAA	M00C2		       
			LSRA			       
			ROL	M7771		       
			LSRA			       
			ROL	M7770		       
			LSRA			       
			ROL	M776F		       
			LSRA			       
			ROL	M776E		       
			LDAA	#$01		       
			STAA	M778C		       
			CLR	M7788		       
			CLR	M7774		       
			CLRB			       
			JSR	ZB1DD		       
			JSR	ZC95A		       
			JSR	ZC972		       
			RTS			       
			RTS			       
MDB7B			FCB	$07,$00,$07,$01,$07,$03,$07,$04,$07,$02,$09,$01,$09
			FCB	$00,$03,$02,$03,$01,$03,$03
MDB8F			FCB	$02,$01,$02,$02,$02,$03,$02,$04,$02,$05,$02,$00,$03
			FCB	$00,$03,$01,$0A,$0D,$0A,$00,$0A,$01,$0A,$02,$0A,$03
			FCB	$0A,$04,$00,$00,$00,$00,$00,$00,$0A,$07,$0A,$08,$0A
			FCB	$09,$0A,$0A,$0A,$0B,$0A,$0C
ZDBBD			PSHB			       
			JSR	ZDE65		       
			PULB			       
			CMPB	#$60		       
			BCS	ZDBC9		       
			JMP	ZDC24		       
ZDBC9			CLRA			       
ZDBCA			SUBB	#$0C		       
			BCS	ZDBD1		       
			INCA			       
			BRA	ZDBCA		       
ZDBD1			ADDB	#$0C		       
			STAA	M778C		       
			CMPB	#$0B		       
			BNE	ZDBE0		       
			INC	M778C		       
			INC	M778C		       
ZDBE0			CMPB	#$01		       
			BNE	ZDBF1		       
			PSHB			       
			LDAB	M00C2		       
			BNE	ZDBEC		       
			CLRB			       
			BRA	ZDBEE		       
ZDBEC			LDAB	#$80		       
ZDBEE			STAB	M00C2		       
			PULB			       
ZDBF1			CMPB	#$02		       
			BNE	ZDC06		       
			PSHB			       
			LDAB	M00C1		       
			LDX	#M6DD7		       
			ABX			       
			LDAB	,X		       
			LDAA	M00C2		       
			ANDB	#$80		       
			ABA			       
			STAA	M00C2		       
			PULB			       
ZDC06			CLR	M7788		       
			LDX	#MDC18		       
			ABX			       
			LDAA	,X		       
			STAA	M7774		       
			LDAA	M00C2		       
			JSR	ZDE96		       
			RTS			       
MDC18			FCB	$29,$2A,$2A,$2B,$2C,$2D,$2E,$2F,$30,$31,$32,$33
ZDC24			CMPB	#$64		       
			BCC	ZDC67		       
			CMPB	#$60		       
			BEQ	ZDC36		       
			CMPB	#$61		       
			BEQ	ZDC40		       
			CMPB	#$62		       
			BEQ	ZDC4A		       
			BRA	ZDC54		       
ZDC36			CLR	M778C		       
			LDAA	#$33		       
			STAA	M7774		       
			BRA	ZDC5E		       
ZDC40			LDAA	#$28		       
			STAA	M7774		       
			CLR	M778C		       
			BRA	ZDC5E		       
ZDC4A			LDAA	#$34		       
			STAA	M7774		       
			CLR	M778C		       
			BRA	ZDC5E		       
ZDC54			LDAA	#$33		       
			STAA	M7774		       
			LDAA	#$01		       
			STAA	M778C		       
ZDC5E			CLR	M7788		       
			LDAA	M00C2		       
			JSR	ZDE96		       
			RTS			       
ZDC67			CMPB	#$6E		       
			BCS	ZDC6C		       
			RTS			       
ZDC6C			SUBB	#$64		       
			STAB	M778C		       
			CLR	M7788		       
			LDAA	#$35		       
			STAA	M7774		       
			LDAA	M00C2		       
			JSR	ZDE96		       
			RTS			       
ZDC7F			LDAB	M00C2		       
			CMPB	#$1B		       
			BCS	ZDC86		       
			RTS			       
ZDC86			PSHB			       
			JSR	ZDDD7		       
			PULB			       
			CMPB	#$0B		       
			BCS	ZDC92		       
			JMP	ZDCE2		       
ZDC92			CLR	M778C		       
			TSTB			       
			BNE	ZDC9F		       
			LDAA	#$14		       
			STAA	M7774		       
			BRA	ZDCB3		       
ZDC9F			CMPB	#$08		       
			BNE	ZDCAA		       
			LDAA	#$16		       
			STAA	M7774		       
			BRA	ZDCB3		       
ZDCAA			CMPB	#$09		       
			BNE	ZDCBD		       
			LDAA	#$17		       
			STAA	M7774		       
ZDCB3			CLR	M7788		       
			LDAA	>M00C3		       
			JSR	ZDE96		       
			RTS			       
ZDCBD			DECB			       
			LDAA	#$01		       
			STAA	M7788		       
			LDAA	#$15		       
			STAA	M7774		       
			LDX	#MDCD8		       
			ABX			       
			LDAA	,X		       
			STAA	M7789		       
			LDAA	>M00C3		       
			JSR	ZDE9D		       
			RTS			       
MDCD8			FCB	$00,$01,$02,$03,$05,$06,$07,$00,$00,$04
ZDCE2			SUBB	#$0B		       
			STAB	M778C		       
			CLR	M7788		       
			LDAA	#$1F		       
			STAA	M7774		       
			LDAA	>M00C3		       
			JSR	ZDE96		       
			RTS			       
ZDCF6			JSR	ZDDD7		       
			LDAA	#$02		       
			STAA	M7788		       
			LDAA	#$15		       
			STAA	M7774		       
			CLR	M778C		       
			LDAA	#$0C		       
			STAA	M7789		       
			LDAA	M00C2		       
			STAA	M778A		       
			LDAA	>M00C3		       
			LDAB	M00BE		       
			ASLB			       
			LSRD			       
			TBA			       
			JSR	ZDEC9		       
			RTS			       
ZDD1C			LDAB	M00C2		       
			CMPB	#$37		       
			BCS	ZDD23		       
			RTS			       
ZDD23			JSR	ZDDD7		       
			LDAB	M00C2		       
			CMPB	#$07		       
			BCC	ZDD58		       
			LDAA	#$01		       
			STAA	M7788		       
			LDX	#MDD4A		       
			ASLB			       
			ABX			       
			LDAA	,X		       
			STAA	M7774		       
			LDAA	$01,X		       
			STAA	M7789		       
			CLR	M778C		       
			LDAA	>M00C3		       
			JSR	ZDE9D		       
			RTS			       
MDD4A			FCB	$19,$00,$19,$01,$19,$02,$19,$03,$1A,$01,$1A,$00,$1A
			FCB	$02		       
ZDD58			LDAA	#$02		       
			STAA	M7788		       
			LDAA	#$1B		       
			STAA	M7774		       
			CLR	M778A		       
			SUBB	#$07		       
			CLRA			       
ZDD68			SUBB	#$04		       
			BCS	ZDD6F		       
			INCA			       
			BRA	ZDD68		       
ZDD6F			ADDB	#$04		       
			STAA	M7789		       
			STAB	M778C		       
			LDAA	>M00C3		       
			JSR	ZDEC9		       
			RTS			       
ZDD7E			JSR	ZDDD7		       
			LDAB	M00C2		       
			CMPB	#$0C		       
			BCS	ZDD88		       
			RTS			       
ZDD88			LDAA	#$02		       
			STAA	M7788		       
			LDAA	#$1C		       
			STAA	M7774		       
			CLR	M7789		       
			STAB	M778A		       
			CLR	M778C		       
			LDAA	>M00C3		       
			JSR	ZDEC9		       
			LDAA	#$01		       
			STAA	M778C		       
			LDAA	M00BE		       
			JSR	ZDEC9		       
			RTS			       
ZDDAC			JSR	ZDDD7		       
			LDAA	#$02		       
			STAA	M7788		       
			LDAA	#$1C		       
			STAA	M7774		       
			LDAA	#$02		       
			STAA	M7789		       
			LDAA	M00C2		       
			STAA	M778A		       
			CLR	M778C		       
			LDAA	>M00C3		       
			JSR	ZDEC9		       
			LDAA	#$01		       
			STAA	M778C		       
			LDAA	M00BE		       
			JSR	ZDEC9		       
			RTS			       
ZDDD7			LDAB	M7772		       
			ANDB	#$07		       
			STAB	M7772		       
			LDX	#MDDE8		       
			ASLB			       
			ABX			       
			LDX	,X		       
			JMP	,X		       
MDDE8			FDB	MDE07_via_cvec_dde8,MDE02_via_cvec_ddea
			FDB	MDE02_via_cvec_ddea,MDE07_via_cvec_dde8
			FDB	MDDF8_via_cvec_ddf0,MDDF8_via_cvec_ddf0
			FDB	MDDFD_via_cvec_ddf4,MDE07_via_cvec_dde8
MDDF8_via_cvec_ddf0	LDAB	#$07		       
			JSR	Z8A08		       
MDDFD_via_cvec_ddf4	LDAB	#$07		       
			JSR	Z8A08		       
MDE02_via_cvec_ddea	LDAB	#$05		       
			JSR	Z8A08		       
MDE07_via_cvec_dde8	RTS			       
ZDE08			LDAB	M7772		       
			ANDB	#$07		       
			STAB	M7772		       
			LDX	#MDE19		       
			ASLB			       
			ABX			       
			LDX	,X		       
			JMP	,X		       
MDE19			FDB	MDE33_via_cvec_de19,MDE38_via_cvec_de1b
			FDB	MDE33_via_cvec_de19,MDE38_via_cvec_de1b
			FDB	MDE29_via_cvec_de21,MDE29_via_cvec_de21
			FDB	MDE2E_via_cvec_de25,MDE38_via_cvec_de1b
MDE29_via_cvec_de21	LDAB	#$07		       
			JSR	Z8A08		       
MDE2E_via_cvec_de25	LDAB	#$07		       
			JSR	Z8A08		       
MDE33_via_cvec_de19	LDAB	#$06		       
			JSR	Z8A08		       
MDE38_via_cvec_de1b	RTS			       
ZDE39			LDAB	M7772		       
			ANDB	#$07		       
			STAB	M7772		       
			LDX	#MDE4A		       
			ASLB			       
			ABX			       
			LDX	,X		       
			JMP	,X		       
MDE4A			FDB	MDE64_via_cvec_de4a,MDE64_via_cvec_de4a
			FDB	MDE64_via_cvec_de4a,MDE64_via_cvec_de4a
			FDB	MDE5A_via_cvec_de52,MDE5A_via_cvec_de52
			FDB	MDE5F_via_cvec_de56,MDE64_via_cvec_de4a
MDE5A_via_cvec_de52	LDAB	#$07		       
			JSR	Z8A08		       
MDE5F_via_cvec_de56	LDAB	#$07		       
			JSR	Z8A08		       
MDE64_via_cvec_de4a	RTS			       
ZDE65			LDAB	M7772		       
			ANDB	#$07		       
			STAB	M7772		       
			LDX	#MDE76		       
			ASLB			       
			ABX			       
			LDX	,X		       
			JMP	,X		       
MDE76			FDB	MDE86_via_cvec_de76,MDE86_via_cvec_de76
			FDB	MDE8B_via_cvec_de7a,MDE95_via_cvec_de7c
			FDB	MDE90_via_cvec_de7e,MDE95_via_cvec_de7c
			FDB	MDE90_via_cvec_de7e,MDE95_via_cvec_de7c
MDE86_via_cvec_de76	LDAB	#$07		       
			JSR	Z8A08		       
MDE8B_via_cvec_de7a	LDAB	#$07		       
			JSR	Z8A08		       
MDE90_via_cvec_de7e	LDAB	#$06		       
			JSR	Z8A08		       
MDE95_via_cvec_de7c	RTS			       
ZDE96			CLR	M7788		       
			JSR	ZDF0D		       
			RTS			       
ZDE9D			PSHA			       
			LDAB	M778C		       
			PSHB			       
			LDAB	M7789		       
			PSHB			       
			CLR	M7788		       
			CLR	M778C		       
			LDAB	M7774		       
			JSR	ZB1DD		       
			LDAB	#$01		       
			JSR	ZB931		       
			PULB			       
			STAB	M7789		       
			PULB			       
			STAB	M778C		       
			LDAA	#$01		       
			STAA	M7788		       
			PULA			       
			JSR	ZDF0D		       
			RTS			       
ZDEC9			PSHA			       
			LDAB	M778A		       
			PSHB			       
			LDAB	M778C		       
			PSHB			       
			LDAB	M7789		       
			PSHB			       
			CLR	M7788		       
			CLR	M778C		       
			LDAB	M7774		       
			JSR	ZB1DD		       
			LDAB	#$01		       
			JSR	ZB931		       
			PULB			       
			STAB	M7789		       
			LDAA	#$01		       
			STAA	M7788		       
			LDAB	M7774		       
			JSR	ZB1DD		       
			LDAB	#$01		       
			JSR	ZB931		       
			PULB			       
			STAB	M778C		       
			PULB			       
			STAB	M778A		       
			LDAB	#$02		       
			STAB	M7788		       
			PULA			       
			JSR	ZDF0D		       
			RTS			       
ZDF0D			PSHA			       
			LDAB	M7774		       
			JSR	ZB1DD		       
			PULA			       
			CMPA	M7783		       
			BLS	ZDF1C		       
			BRA	ZDF22		       
ZDF1C			LDX	M7781		       
			JSR	ZBE61		       
ZDF22			JSR	ZC95A		       
			JSR	ZC972		       
			RTS			       
ZDF29			CLR	>M00CC		       
			LDAA	M00C2		       
			LDAB	M00C1		       
			CMPB	#$41		       
			BEQ	ZDF63		       
			CMPB	#$49		       
			BEQ	ZDF6F		       
			CMPB	#$4A		       
			BEQ	ZDF7B		       
			CMPA	#$40		       
			BCC	ZDF43		       
			JMP	ZDF93		       
ZDF43			CMPB	#$40		       
			BNE	ZDF4A		       
			JMP	hdlr_RST	       
ZDF4A			BCC	ZDF4F		       
			JMP	ZDF93		       
ZDF4F			CMPB	#$4C		       
			BCS	ZDF56		       
			JMP	ZDF93		       
ZDF56			SUBB	#$40		       
			LDX	#MDF87		       
			ABX			       
			LDAB	,X		       
ZDF5E			JSR	Z8A08		       
			BRA	ZDF93		       
ZDF63			CMPA	#$40		       
			BCC	ZDF6B		       
			LDAB	#$04		       
			BRA	ZDF5E		       
ZDF6B			LDAB	#$03		       
			BRA	ZDF5E		       
ZDF6F			CMPA	#$40		       
			BCC	ZDF77		       
			LDAB	#$0D		       
			BRA	ZDF5E		       
ZDF77			LDAB	#$0A		       
			BRA	ZDF5E		       
ZDF7B			CMPA	#$40		       
			BCC	ZDF83		       
			LDAB	#$0E		       
			BRA	ZDF5E		       
ZDF83			LDAB	#$0B		       
			BRA	ZDF5E		       
MDF87			FCB	$00,$00,$05,$06,$07,$08,$09,$02,$01,$00,$00,$0C
ZDF93			RTS			       
MDF94			FCB	$FE,$C0,$B4,$AE,$A8,$A2,$9E,$98,$94,$90,$8D,$8A,$86
			FCB	$82,$80,$7D,$7A,$77,$74,$72,$70,$6D,$6B,$69,$67,$65
			FCB	$63,$61,$5F,$5D,$5C,$5A,$58,$56,$55,$53,$52,$51,$4F
			FCB	$4E,$4C,$4B,$4A,$48,$47,$46,$44,$43,$42,$41,$40,$3F
			FCB	$3E,$3C,$3B,$3A,$39,$38,$37,$36,$35,$34,$32,$31,$30
			FCB	$2F,$2E,$2D,$2C,$2B,$2A,$29,$28,$27,$26,$25,$24,$23
			FCB	$22,$21,$20,$1F,$1E,$1D,$1C,$1B,$1A,$1A,$19,$18,$17
			FCB	$16,$16,$15,$14,$13,$12,$12,$11,$10,$10,$0F,$0E,$0E
			FCB	$0D,$0C,$0C,$0B,$0B,$0A,$09,$09,$08,$07,$07,$06,$06
			FCB	$05,$05,$04,$04,$03,$03,$02,$02,$01,$01,$00
ZE014			LDAA	XROM		       
			PSHA			       
			LDAA	TRSCR		       
			ASLA			       
			BCS	ZE023		       
			ASLA			       
			BCS	ZE06C		       
			BMI	ZE043		       
			BRA	ZE075		       
ZE023			LDAA	RDR		       
			LDX	M00BA		       
			STAA	,X		       
			INX			       
			CPX	#M7EE8		       
			BNE	ZE032		       
			LDX	#M7E0C		       
ZE032			CPX	M00B6		       
			BEQ	ZE03A		       
			STX	M00BA		       
			BRA	ZE075		       
ZE03A			LDAA	#$01		       
			STAA	M00CA		       
			JSR	HI_CALL_07	       
			BRA	ZE075		       
ZE043			LDX	M00B4		       
			CPX	M00B8		       
			BEQ	ZE066		       
			LDAA	,X		       
			BPL	ZE057		       
			CMPA	#$F0		       
			BEQ	ZE055		       
			CMPA	#$FE		       
			BEQ	ZE055		       
ZE055			STAA	M00BC		       
ZE057			STAA	TDR		       
			INX			       
			CPX	#M7E0C		       
			BNE	ZE062		       
			LDX	#M7DCC		       
ZE062			STX	M00B4		       
			BRA	ZE075		       
ZE066			LDAA	#$3A		       
			STAA	TRSCR		       
			BRA	ZE075		       
ZE06C			LDAA	#$02		       
			STAA	M00CA		       
			JSR	HI_CALL_07	       
			LDAA	RDR		       
ZE075			PULA			       
			STAA	XROM		       
			RTS			       
HI_CALL_08		LDAA	#$0C		       
			STAA	RMCR		       
			LDAA	#$3A		       
			STAA	TRSCR		       
			LDAA	TRSCR		       
			LDAA	RDR		       
			LDX	#M7DCC		       
			STX	M00B8		       
			STX	M00B4		       
			LDAA	#$F7		       
			STAA	M00BD		       
			LDX	#M7E0C		       
			STX	M00BA		       
			STX	M00B6		       
			RTS			       
HI_CALL_07		LDAA	#$F7		       
			STAA	M00BD		       
			LDX	#M7E0C		       
			STX	M00BA		       
			STX	M00B6		       
			RTS			       
ZE0A4			TST	M7568		       
			BEQ	ZE0C1		       
			TST	M756C		       
			BNE	ZE0C1		       
			TST	>M00CC		       
			BNE	ZE0C1		       
			LDAA	M7567		       
			ORAA	#$C0		       
			JSR	HI_CALL_0C	       
			TBA			       
			ANDA	#$7F		       
			JSR	HI_CALL_0C	       
ZE0C1			RTS			       
ZE0C2			RTS			       
			PSHA			       
			CMPB	#$40		       
			BEQ	ZE0D5		       
			CMPB	#$7E		       
			BEQ	ZE0D5		       
			CMPB	#$7F		       
			BEQ	ZE0D5		       
			TST	M7569		       
			BEQ	ZE0E7		       
ZE0D5			LDAA	M7567		       
			ORAA	#$B0		       
			JSR	HI_CALL_0C	       
			TBA			       
			JSR	HI_CALL_0C	       
			PULA			       
			LSRA			       
			JSR	HI_CALL_0C	       
			RTS			       
ZE0E7			PULA			       
			RTS			       
ZE0E9			RTS			       
			PSHB			       
			ADDB	#$5F		       
			LDAA	#$FF		       
			BSR	ZE0C2		       
			PULB			       
			RTS			       
ZE0F3			RTS			       
			TST	M6AA6		       
			BEQ	ZE0FF		       
			LDAB	#$7E		       
			LDAA	#$02		       
			BRA	ZE102		       
ZE0FF			LDAB	#$7F		       
			CLRA			       
ZE102			JMP	ZE0C2		       
HI_CALL_0B		RTS			       
			LDAA	#$FE		       
			JSR	HI_CALL_0C	       
			RTS			       
ZE10C			RTS			       
			RTS			       
ZE10E			RTS			       
ZE10F			RTS			       
ZE110			RTS			       
ZE111			RTS			       
ZE112			RTS			       
ZE113			RTS			       
ZE114			RTS			       
ZE115			RTS			       
HI_CALL_06		RTS			       
HI_CALL_0D		RTS			       
HI_CALL_04		RTS			       
HI_CALL_0A		RTS			       
			RTS			       
			RTS			       
			RTS			       
ZE11D			TST	M756C		       
			BEQ	ZE159		       
			TST	>M00CC		       
			BNE	ZE159		       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZC8D5		       
			STX	M00A7		       
			LDX	#ME15A		       
			JSR	ZC8CF		       
			CLR	>M00C7		       
			JSR	HI_CALL_0E	       
ZE141			LDAA	M00C7		       
			LDAB	#$4E		       
			MUL			       
			ADDD	#M6001		       
			XGDX			       
			JSR	ZE306		       
			LDAB	M00C7		       
			INCB			       
			STAB	M00C7		       
			CMPB	#$20		       
			BNE	ZE141		       
			JSR	HI_CALL_10	       
ZE159			RTS			       
ME15A			FCB	'T,'r,'a,'n,'s,'m,'i,'t,'t,'i,'n,'g,'!,'!,' ,' ,$00
ZE16B			TST	M756C		       
			BEQ	ZE182		       
			TST	>M00CC		       
			BNE	ZE182		       
			JMP	ZE1C6		       
ZE178			TST	M756C		       
			BEQ	ZE182		       
			TST	>M00CC		       
			BEQ	ZE185		       
ZE182			JMP	ZE230		       
ZE185			CLRB			       
ZE186			LDX	#ME236		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$02		       
			BCS	ZE186		       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
ZE19A			LDX	#ME236		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$0F		       
			BCS	ZE19A		       
			LDAA	#$3D		       
			STAA	M00C5		       
			LDX	#M6ABE		       
ZE1AF			LDAA	,X		       
			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M6AD5		       
			BNE	ZE1AF		       
			JSR	HI_CALL_10	       
ZE1C6			CLRB			       
ZE1C7			LDX	#ME231		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$02		       
			BCS	ZE1C7		       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
ZE1DB			LDX	#ME231		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$05		       
			BCS	ZE1DB		       
			CLR	>M00C5		       
			LDX	#M6A67		       
ZE1EF			LDAA	,X		       
			CPX	#M6AAD		       
			BNE	ZE1F7		       
			CLRA			       
ZE1F7			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M6ABE		       
			BNE	ZE1EF		       
ZE209			LDAA	#$63		       
			PSHX			       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M6AC1		       
			BNE	ZE209		       
ZE21B			LDAA	#$32		       
			PSHX			       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M6AC4		       
			BNE	ZE21B		       
			JSR	HI_CALL_10	       
ZE230			RTS			       
ME231			FCB	$F0,$43,$03,$00,$5D    
ME236			FCB	$F0,$43,$7E,$00,$21,$4C,$4D,$20,$20,$38,$39,$37,$36
			FCB	$41,$45 	       
ME245_via_cvec_d38f	TST	M756C		       
			BEQ	ZE28A		       
			TST	>M00CC		       
			BNE	ZE28A		       
			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZC8D5		       
			STX	M00A7		       
			LDX	#ME15A		       
			JSR	ZC8CF		       
			CLR	>M00C7		       
			JSR	ZE28B		       
ZE269			LDAA	M00C7		       
			CMPA	#$18		       
			BCS	ZE274		       
			LDX	#MAF13		       
			BRA	ZE27B		       
ZE274			LDAB	#$4C		       
			MUL			       
			ADDD	#M6E45		       
			XGDX			       
ZE27B			JSR	ZE2C2		       
			LDAB	M00C7		       
			INCB			       
			STAB	M00C7		       
			CMPB	#$20		       
			BNE	ZE269		       
			JSR	HI_CALL_10	       
ZE28A			RTS			       
ZE28B			CLRB			       
ZE28C			LDX	#ME2B3		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$02		       
			BCS	ZE28C		       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
ZE2A0			LDX	#ME2B3		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$0F		       
			BCS	ZE2A0		       
			LDAA	#$54		       
			STAA	M00C5		       
			RTS			       
ME2B3			FCB	$F0,$43,$7E,$13,$0A,$4C,$4D,$20,$20,$38,$39,$37,$36
			FCB	$50,$4D 	       
ZE2C2			CLRB			       
ZE2C3			PSHB			       
			LDAA	,X		       
			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			PULB			       
			INCB			       
			CMPB	#$4C		       
			BNE	ZE2C3		       
			RTS			       
HI_CALL_0E		CLRB			       
ZE2DB			LDX	#ME301		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$02		       
			BCS	ZE2DB		       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
ZE2EF			LDX	#ME301		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$05		       
			BCS	ZE2EF		       
			CLR	>M00C5		       
			RTS			       
ME301			SUBB	M4304		       
			BRA	ZE306		       
ZE306			CLRB			       
ZE307			PSHB			       
			LDAA	,X		       
			CMPB	#$30		       
			BNE	ZE31F		       
			TIM	#$04,$00,X	       
			BNE	ZE319		       
			ANDA	#$FB		       
			ORAA	#$02		       
			BRA	ZE31D		       
ZE319			ORAA	#$04		       
			ANDA	#$FD		       
ZE31D			ANDA	#$0F		       
ZE31F			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			PULB			       
			INCB			       
			CMPB	#$43		       
			BNE	ZE307		       
			PSHX			       
ZE333			LDAA	#$63		       
			PSHB			       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULB			       
			INCB			       
			CMPB	#$46		       
			BNE	ZE333		       
ZE344			LDAA	#$32		       
			PSHB			       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULB			       
			INCB			       
			CMPB	#$49		       
			BNE	ZE344		       
			PULX			       
ZE356			PSHB			       
			LDAA	,X		       
			CMPB	#$4F		       
			BNE	ZE35F		       
			ANDA	#$0F		       
ZE35F			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			PULB			       
			INCB			       
			CMPB	#$54		       
			BNE	ZE356		       
ZE372			CLRA			       
			PSHB			       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULB			       
			INCB			       
			CMPB	#$80		       
			BNE	ZE372		       
			RTS			       
ME383_via_cvec_d38d	LDAA	#$08		       
			LDAB	#$0C		       
			LDX	#M6DD7		       
ZE38A			ASR	$02,X		       
			ROL	$02,X		       
			ROL	$01,X		       
			ABX			       
			DECA			       
			BNE	ZE38A		       
			TST	M756C		       
			BNE	ZE39A		       
			RTS			       
ZE39A			TST	>M00CC		       
			BEQ	ZE3A0		       
			RTS			       
ZE3A0			LDAA	#$F0		       
			JSR	HI_CALL_0C	       
			LDAA	#$43		       
			JSR	HI_CALL_0C	       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
			CLRB			       
ZE3B1			LDX	#ME3DE		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$0D		       
			BCS	ZE3B1		       
			LDAA	#$4C		       
			STAA	M00C5		       
			LDX	#M6DD7		       
ZE3C6			LDAA	,X		       
			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M6E45		       
			BNE	ZE3C6		       
			JSR	HI_CALL_10	       
			RTS			       
ME3DE			FCB	$7E,$00,$78,$4C,$4D,$20,$20,$38,$39,$37,$36,$50,$45
ME3EB_via_cvec_d383	TST	M756C		       
			BNE	ZE3F1		       
			RTS			       
ZE3F1			TST	>M00CC		       
			BEQ	ZE3F7		       
			RTS			       
ZE3F7			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZC8D5		       
			STX	M00A7		       
			LDX	#ME15A		       
			JSR	ZC8CF		       
			LDAA	#$F0		       
			JSR	HI_CALL_0C	       
			LDAA	#$43		       
			JSR	HI_CALL_0C	       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
			CLRB			       
ZE41C			LDX	#ME449		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$0D		       
			BCS	ZE41C		       
			LDAA	#$84		       
			STAA	M00C5		       
			LDX	#M7628		       
ZE431			LDAA	,X		       
			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M7640		       
			BNE	ZE431		       
			JSR	HI_CALL_10	       
			RTS			       
ME449			FCB	$7E,$00,$22,$4C,$4D,$20,$20,$4D,$43,$52,$54,$45,$30
ME456_via_cvec_d385	TST	M756C		       
			BNE	ZE45C		       
			RTS			       
ZE45C			TST	>M00CC		       
			BEQ	ZE462		       
			RTS			       
ZE462			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZC8D5		       
			STX	M00A7		       
			LDX	#ME15A		       
			JSR	ZC8CF		       
			LDAA	#$F0		       
			JSR	HI_CALL_0C	       
			LDAA	#$43		       
			JSR	HI_CALL_0C	       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
			CLRB			       
ZE487			LDX	#ME4B4		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$0D		       
			BCS	ZE487		       
			LDAA	#$85		       
			STAA	M00C5		       
			LDX	#M7640		       
ZE49C			LDAA	,X		       
			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M7740		       
			BNE	ZE49C		       
			JSR	HI_CALL_10	       
			RTS			       
ME4B4			FCB	$7E,$02,$0A,$4C,$4D,$20,$20,$4D,$43,$52,$54,$45,$31
ME4C1_via_cvec_bc10	TST	M756C		       
			BNE	ZE4C7		       
			RTS			       
ZE4C7			TST	>M00CC		       
			BEQ	ZE4CD		       
			RTS			       
ZE4CD			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZC8D5		       
			STX	M00A7		       
			LDX	#ME15A		       
			JSR	ZC8CF		       
			LDAA	#$F0		       
			JSR	HI_CALL_0C	       
			LDAA	#$43		       
			JSR	HI_CALL_0C	       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
			CLRB			       
ZE4F2			LDX	#ME536		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$0D		       
			BCS	ZE4F2		       
			LDAA	#$3A		       
			STAA	M00C5		       
			LDX	#M7565		       
ZE507			LDAA	,X		       
			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M7570		       
			BNE	ZE507		       
			LDX	#M7740		       
ZE51E			LDAA	,X		       
			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M7750		       
			BNE	ZE51E		       
			JSR	HI_CALL_10	       
			RTS			       
ME536			JMP	>Z0025		       
			INCA			       
			TSTA			       
			BRA	ZE55D		       
			PULX			       
			RTS			       
			PSHB			       
			PSHA			       
			COMB			       
			TSX			       
ME543_via_cvec_bc12	TST	M756C		       
			BNE	ZE549		       
			RTS			       
ZE549			TST	>M00CC		       
			BEQ	ZE54F		       
			RTS			       
ZE54F			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZC8D5		       
			STX	M00A7		       
ZE55D			LDX	#ME15A		       
			JSR	ZC8CF		       
			LDAA	#$F0		       
			JSR	HI_CALL_0C	       
			LDAA	#$43		       
			JSR	HI_CALL_0C	       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
			CLRB			       
ZE574			LDX	#ME5B1		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$0D		       
			BCS	ZE574		       
			LDAA	#$3B		       
			STAA	M00C5		       
			LDX	#M7571		       
ZE589			LDAA	,X		       
			ROLA			       
			ROLA			       
			PSHX			       
			ANDA	#$01		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			LDAA	,X		       
			ANDA	#$7F		       
			PSHX			       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M75F1		       
			BNE	ZE589		       
			JSR	HI_CALL_10	       
			RTS			       
ME5B1			JMP	Z020A		       
			INCA			       
			TSTA			       
			BRA	ZE5D8		       
			PULX			       
			RTS			       
			PSHB			       
			PSHA			       
			COMB			       
			INS			       
ME5BE_via_cvec_bc14	TST	M756C		       
			BNE	ZE5C4		       
			RTS			       
ZE5C4			TST	>M00CC		       
			BEQ	ZE5CA		       
			RTS			       
ZE5CA			JSR	HI_CALL_00	       
			JSR	HI_CALL_01	       
			CLR	>M005A		       
			JSR	ZC8D5		       
			STX	M00A7		       
ZE5D8			LDX	#ME15A		       
			JSR	ZC8CF		       
			LDAA	#$F0		       
			JSR	HI_CALL_0C	       
			LDAA	#$43		       
			JSR	HI_CALL_0C	       
			LDAA	M7567		       
			JSR	HI_CALL_0C	       
			CLRB			       
ZE5EF			LDX	#ME61C		       
			ABX			       
			LDAA	,X		       
			JSR	HI_CALL_0C	       
			INCB			       
			CMPB	#$0D		       
			BCS	ZE5EF		       
			LDAA	#$3C		       
			STAA	M00C5		       
			LDX	#M75F1		       
ZE604			LDAA	,X		       
			PSHX			       
			ANDA	#$7F		       
			TAB			       
			ADDB	M00C5		       
			STAB	M00C5		       
			JSR	HI_CALL_0C	       
			PULX			       
			INX			       
			CPX	#M7628		       
			BNE	ZE604		       
			JSR	HI_CALL_10	       
			RTS			       
ME61C			FCB	$7E,$00,$41,$4C,$4D,$20,$20,$38,$39,$37,$36,$53,$32
ME629_via_cvec_bc16	JSR	ME3EB_via_cvec_d383    
			JSR	ZF052		       
			JSR	ME456_via_cvec_d385    
			RTS			       
ME633_via_cvec_bc0e	JSR	ME543_via_cvec_bc12    
			JSR	ZF052		       
			JSR	ME5BE_via_cvec_bc14    
			JSR	ZF052		       
			JSR	ME3EB_via_cvec_d383    
			JSR	ZF052		       
			JSR	ME456_via_cvec_d385    
			RTS			       
HI_CALL_10		LDAA	M00C5		       
			NEGA			       
			ANDA	#$7F		       
			JSR	HI_CALL_0C	       
			LDAA	#$F7		       
			JSR	HI_CALL_0C	       
			RTS			       
HI_CALL_0C		LDX	M00B8		       
			STAA	,X		       
			CPX	#M7E0B		       
			BNE	ZE663		       
			LDX	#M7DCB		       
ZE663			INX			       
			CPX	M00B4		       
			BEQ	HI_CALL_0C	       
			STX	M00B8		       
			LDAA	#$3E		       
			STAA	TRSCR		       
			RTS			       
ZE66F			JSR	ZE6CE		       
			LDX	#M7DAB		       
			STX	M00A7		       
			LDAA	#$01		       
			CMPA	M00CA		       
			BNE	ZE682		       
			LDX	#ME69B		       
			BRA	ZE685		       
ZE682			LDX	#ME6AC		       
ZE685			JSR	ZC868		       
			JSR	ZC892		       
			LDAA	#$0C		       
			JSR	LCD_WAIT	       
			STAA	LCD_CMD 	       
			CLR	>M00CA		       
			LDAA	#$01		       
			STAA	M0056		       
			RTS			       
ME69B			FCC	"Midi Buffer Full"     
			FCB	$00		       
ME6AC			FCC	"Midi Data Error!"     
			FCB	$00		       
ZE6BD			JSR	ZE6CE		       
			SEI			       
ZE6C1			BRN	ZE6C1		       
			JSR	HI_CALL_07	       
			CLI			       
			JSR	ZC7C2		       
			CLR	>M00CB		       
			RTS			       
ZE6CE			LDAA	TCSR1		       
			PSHA			       
			AIM	#$F7,TCSR1	       
			JSR	HI_CALL_16	       
			LDAA	#$07		       
			LDX	#M7CF1		       
ZE6DC			TIM	#$04,$01,X	       
			BNE	ZE6E8		       
ZE6E1			DEX			       
			DEX			       
			DECA			       
			BPL	ZE6DC		       
			BRA	ZE710		       
ZE6E8			PSHA			       
			PSHX			       
			LDX	#M793B		       
			TAB			       
			ABX			       
			LDAA	,X		       
			BMI	ZE70C		       
			LDAB	M7772		       
			ANDB	#$04		       
			BEQ	ZE700		       
			TST	M6E38		       
			BEQ	ZE700		       
			CLRA			       
ZE700			STAA	M00E0		       
			JSR	Z87CA		       
			PULX			       
			PULA			       
			PSHA			       
			PSHX			       
			JSR	Z8609		       
ZE70C			PULX			       
			PULA			       
			BRA	ZE6E1		       
ZE710			LDAB	M006C		       
			ASLB			       
			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	ZE72C		       
			TST	M6E38		       
			BNE	ZE78B		       
			LDAA	#$08		       
			MUL			       
			ADDD	#M7F39		       
			XGDX			       
			DEX			       
			DEX			       
			LDAB	#$08		       
			BRA	ZE734		       
ZE72C			LDX	#M7F39		       
			ABX			       
			DEX			       
			DEX			       
			LDAB	#$01		       
ZE734			PSHB			       
			LDAB	M006C		       
ZE737			TIM	#$04,$01,X	       
			BNE	ZE747		       
ZE73C			DEX			       
			DEX			       
			DECB			       
			BNE	ZE737		       
			PULB			       
			DECB			       
			BNE	ZE734		       
			BRA	ZE78B		       
ZE747			PULA			       
			PSHA			       
			PSHB			       
			PSHX			       
			DECA			       
			STAA	M00E0		       
			LDAB	M006C		       
			ASLB			       
			MUL			       
			ADDD	#M7F39		       
			STD	M00E1		       
			TIM	#$01,$01,X	       
			BNE	ZE77B		       
			LDX	#M7F01		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			STAA	M005A		       
			TSTA			       
			BLE	ZE787		       
			JSR	Z87CA		       
			LDAA	M005A		       
			DECA			       
			STAA	M005A		       
			LDX	#M7F01		       
			LDAB	M00E0		       
			ABX			       
			STAA	,X		       
			BNE	ZE782		       
ZE77B			LDX	M00E1		       
			JSR	Z8703		       
			BRA	ZE787		       
ZE782			PULX			       
			PSHX			       
			JSR	Z8731		       
ZE787			PULX			       
			PULB			       
			BRA	ZE73C		       
ZE78B			PULA			       
			STAA	TCSR1		       
			RTS			       
ZE78F			STAB	M00E0		       
			LDX	#M00F6		       
			ABX			       
			TST	,X		       
			BNE	ZE79C		       
			JMP	ZE820		       
ZE79C			JSR	Z87CA		       
			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	ZE7AB		       
			TST	M6E38		       
			BNE	ZE7B7		       
ZE7AB			LDAA	M00E0		       
			JSR	Z9A2F		       
			TST	$3F,X		       
			BEQ	ZE7B7		       
			JMP	ZE7E7		       
ZE7B7			LDX	#M7EF1		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			TAB			       
			LDX	#M7CE3		       
			ASLB			       
			ABX			       
ZE7C5			LDAB	$01,X		       
			ANDB	#$7C		       
			CMPB	#$04		       
			BEQ	ZE7DE		       
ZE7CD			INX			       
			INX			       
			PSHX			       
			LDX	#M7EF9		       
			LDAB	M00E0		       
			ABX			       
			CMPA	,X		       
			PULX			       
			BEQ	ZE820		       
			INCA			       
			BRA	ZE7C5		       
ZE7DE			PSHA			       
			PSHX			       
			JSR	Z85FA		       
			PULX			       
			PULA			       
			BRA	ZE7CD		       
ZE7E7			LDX	#M7F01		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			STAA	M005A		       
			TSTA			       
			BLE	ZE820		       
			LDAA	M00E0		       
			LDAB	M006C		       
			ASLB			       
			MUL			       
			ADDD	#M7F39		       
			STD	M00E1		       
			LDAB	M006C		       
			DECB			       
			ASLB			       
			LDX	M00E1		       
			ABX			       
			LDAB	M006C		       
ZE808			LDAA	$01,X		       
			ANDA	#$7C		       
			CMPA	#$04		       
			BEQ	ZE817		       
ZE810			DEX			       
			DEX			       
			DECB			       
			BNE	ZE808		       
			BRA	ZE820		       
ZE817			PSHB			       
			PSHX			       
			JSR	Z86E4		       
			PULX			       
			PULB			       
			BRA	ZE810		       
ZE820			RTS			       
ZE821			STAB	M00E0		       
			LDX	#M00F6		       
			ABX			       
			TST	,X		       
			BNE	ZE82E		       
			JMP	ZE8CF		       
ZE82E			JSR	Z87CA		       
			LDAA	M7772		       
			ANDA	#$04		       
			BEQ	ZE83D		       
			TST	M6E38		       
			BNE	ZE849		       
ZE83D			LDAA	M00E0		       
			JSR	Z9A2F		       
			TST	$3F,X		       
			BEQ	ZE849		       
			JMP	ZE87E		       
ZE849			LDX	#M7EF1		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			TAB			       
			LDX	#M7CE3		       
			ASLB			       
			ABX			       
ZE857			TIM	#$04,$01,X	       
			BNE	ZE86D		       
ZE85C			INX			       
			INX			       
			PSHX			       
			LDX	#M7EF9		       
			LDAB	M00E0		       
			ABX			       
			CMPA	,X		       
			PULX			       
			BEQ	ZE8CF		       
			INCA			       
			BRA	ZE857		       
ZE86D			LDAB	M0058		       
			ANDB	#$78		       
			ANDB	$01,X		       
			BEQ	ZE85C		       
			PSHA			       
			PSHX			       
			JSR	Z8609		       
			PULX			       
			PULA			       
			BRA	ZE85C		       
ZE87E			LDX	#M7F01		       
			LDAB	M00E0		       
			ABX			       
			LDAA	,X		       
			STAA	M005A		       
			LDAA	M00E0		       
			LDAB	M006C		       
			ASLB			       
			MUL			       
			ADDD	#M7F39		       
			STD	M00E1		       
			LDAB	M006C		       
			DECB			       
			ASLB			       
			LDX	M00E1		       
			ABX			       
			LDAB	M006C		       
ZE89C			TIM	#$04,$01,X	       
			BNE	ZE8A8		       
ZE8A1			DEX			       
			DEX			       
			DECB			       
			BNE	ZE89C		       
			BRA	ZE8CF		       
ZE8A8			LDAA	M0058		       
			ANDA	#$78		       
			ANDA	$01,X		       
			BEQ	ZE8A1		       
			PSHB			       
			PSHX			       
			LDAA	M005A		       
			DECA			       
			STAA	M005A		       
			LDX	#M7F01		       
			LDAB	M00E0		       
			ABX			       
			STAA	,X		       
			PULX			       
			PSHX			       
			BNE	ZE8C8		       
			JSR	Z8703		       
			BRA	ZE8CB		       
ZE8C8			JSR	Z8731		       
ZE8CB			PULX			       
			PULB			       
			BRA	ZE8A1		       
ZE8CF			RTS			       
ZE8D0			TST	>M00AF		       
			BEQ	ZE8F3		       
			TST	>M00B2		       
			BNE	ZE8F3		       
			LDD	M00B0		       
			ADDD	#DDR2		       
			STD	M00B0		       
			XGDX			       
			CPX	#M0060		       
			BCS	ZE8F3		       
			CLR	>M00AF		       
			LDD	#M0000		       
			STD	M00B0		       
			LDAA	#$01		       
			STAA	M00CB		       
ZE8F3			RTS			       
HI_CALL_15		LDAA	M776B		       
			ANDA	#$E9		       
			STAA	M776B		       
			LDAA	M7772		       
			BITA	#$04		       
			BNE	ZE935		       
			ANDA	#$07		       
			BNE	ZE92C		       
			LDAA	M7788		       
			BEQ	ZE92C		       
			LDAA	M7774		       
			CMPA	#$19		       
			BEQ	ZE94D		       
			CMPA	#$1A		       
			BEQ	ZE956		       
			CMPA	#$1B		       
			BNE	ZE92C		       
			LDAA	M7788		       
			CMPA	#$02		       
			BEQ	ZE95A		       
			LDAA	M776B		       
			ANDA	#$F7		       
			STAA	M776B		       
			BRA	ZE95A		       
ZE92C			LDAA	M776B		       
			ANDA	#$F7		       
			STAA	M776B		       
			RTS			       
ZE935			LDAA	M6E39		       
			CMPA	#$01		       
			BEQ	ZE94D		       
			CMPA	#$02		       
			BEQ	ZE956		       
			CMPA	#$03		       
			BEQ	ZE95A		       
			LDAA	M776B		       
			ANDA	#$F7		       
			STAA	M776B		       
			RTS			       
ZE94D			LDAA	M776B		       
			ORAA	#$10		       
			STAA	M776B		       
			RTS			       
ZE956			JSR	ZE963		       
			RTS			       
ZE95A			LDAA	M776B		       
			ORAA	#$04		       
			STAA	M776B		       
			RTS			       
ZE963			CLRA			       
			CLRB			       
			STD	M775D		       
			STD	M775F		       
			STD	M7761		       
			STD	M7763		       
ZE971			LDX	#M7933		       
			ABX			       
			LDAA	,X		       
			BEQ	ZE99B		       
			LSRA			       
			BCS	ZE99B		       
			ASLA			       
			LDX	#M793B		       
			ABX			       
			PSHB			       
			LDAB	,X		       
			TSTB			       
			BPL	ZE98A		       
			PULB			       
			BRA	ZE99B		       
ZE98A			LDX	#M775D		       
			ABX			       
			ORAA	#$01		       
			STAA	,X		       
			PULB			       
			LDAA	M776B		       
			ORAA	#$02		       
			STAA	M776B		       
ZE99B			INCB			       
			CMPB	#$08		       
			BNE	ZE971		       
			RTS			       
HI_CALL_16		LDAA	M776B		       
			BITA	#$10		       
			BNE	ZE9AD		       
			BITA	#$02		       
			BNE	ZE9C5		       
			RTS			       
ZE9AD			AIM	#$F7,TCSR1	       
			CLR	M7751		       
			CLR	M7752		       
			CLR	M7753		       
			CLR	M7754		       
			LDAA	M776B		       
			ANDA	#$FE		       
			STAA	M776B		       
			RTS			       
ZE9C5			CLR	M7766		       
			RTS			       
ZE9C9			LDAA	M776B		       
			BITA	#$10		       
			BNE	ZE9D5		       
			BITA	#$02		       
			BNE	ZEA02		       
			RTS			       
ZE9D5			CMPB	M784E		       
			BNE	ZEA01		       
			CLRB			       
ZE9DB			LDX	#M7751		       
			ABX			       
			TST	,X		       
			BEQ	ZE9F9		       
			TST	$0C,X		       
			BNE	ZE9F9		       
			LDAA	#$01		       
			STAA	$0C,X		       
			LDAA	M75F1		       
			INCA			       
			STAA	$14,X		       
			LDAA	M776B		       
			ORAA	#$01		       
			STAA	M776B		       
ZE9F9			INCB			       
			CMPB	#$04		       
			BNE	ZE9DB		       
			LDAB	M784E		       
ZEA01			RTS			       
ZEA02			LDX	#M775D		       
			ABX			       
			TST	,X		       
			BEQ	ZEA0D		       
			CLR	M7766		       
ZEA0D			RTS			       
ZEA0E			CMPB	M784E		       
			BNE	ZEA1A		       
			LDAA	M776B		       
			BITA	#$10		       
			BNE	ZEA1B		       
ZEA1A			RTS			       
ZEA1B			LDAA	M784E		       
			PSHB			       
			LDAB	>M0052		       
			JSR	Z8831		       
			PULB			       
			BCC	ZEA1A		       
			TST	M7751		       
			BEQ	ZEA4A		       
			TST	M7752		       
			BEQ	ZEA4D		       
			TST	M7753		       
			BEQ	ZEA51		       
			TST	M7754		       
			BEQ	ZEA55		       
			CLR	M7751		       
			LDAA	#$0C		       
			STAA	>M0058		       
			LDAB	M784E		       
			JSR	ZE821		       
ZEA4A			CLRB			       
			BRA	ZEA57		       
ZEA4D			LDAB	#$01		       
			BRA	ZEA57		       
ZEA51			LDAB	#$02		       
			BRA	ZEA57		       
ZEA55			LDAB	#$03		       
ZEA57			PSHB			       
			LDAB	M75F4		       
			LDAA	#$A5		       
			MUL			       
			ASLD			       
			ASLD			       
			COMA			       
			LSRA			       
			LDAB	>M00F1		       
			ABA			       
			BCS	ZEA72		       
			BNE	ZEA6E		       
			LDAA	#$01		       
			BRA	ZEA77		       
ZEA6E			CMPA	#$78		       
			BCS	ZEA77		       
ZEA72			PULB			       
			LDAB	M784E		       
			RTS			       
ZEA77			PULB			       
			LDX	#M7751		       
			ABX			       
			STAA	$04,X		       
			LDAA	>M0052		       
			STAA	,X		       
			LDAA	#$01		       
			STAA	$08,X		       
			CLR	$0C,X		       
			LDAA	M75F1		       
			INCA			       
			STAA	$10,X		       
			LDAA	M776B		       
			ORAA	#$01		       
			STAA	M776B		       
			LDAB	M784E		       
			RTS			       
ZEA9B			CMPB	M784E		       
			BNE	ZEAA7		       
			LDAA	M776B		       
			BITA	#$10		       
			BNE	ZEAA8		       
ZEAA7			RTS			       
ZEAA8			LDAA	M784E		       
			PSHB			       
			LDAB	>M0051		       
			JSR	Z8831		       
			PULB			       
			BCC	ZEAA7		       
			LDAA	>M0051		       
			CLRB			       
ZEAB9			LDX	#M7751		       
			ABX			       
			CMPA	,X		       
			BNE	ZEAC7		       
			TST	$0C,X		       
			BNE	ZEAC7		       
			BRA	ZEAD0		       
ZEAC7			INCB			       
			CMPB	#$04		       
			BNE	ZEAB9		       
			LDAB	M784E		       
			RTS			       
ZEAD0			LDAA	#$01		       
			STAA	$0C,X		       
			LDAA	M75F1		       
			INCA			       
			STAA	$14,X		       
			LDAA	M776B		       
			ORAA	#$01		       
			STAA	M776B		       
			LDAB	M784E		       
			RTS			       
ZEAE6			LDAA	M776B		       
			ANDA	#$FE		       
			STAA	M776B		       
			BITA	#$10		       
			BNE	ZEAF3		       
			RTS			       
ZEAF3			CLRB			       
ZEAF4			LDX	#M7751		       
			ABX			       
			TST	,X		       
			BEQ	ZEB22		       
			LDAA	M776B		       
			ORAA	#$01		       
			STAA	M776B		       
			TST	$04,X		       
			BEQ	ZEB15		       
			DEC	$10,X		       
			BNE	ZEB15		       
			PSHB			       
			JSR	ZEB28		       
			PULB			       
			LDX	#M7751		       
			ABX			       
ZEB15			TST	$0C,X		       
			BEQ	ZEB22		       
			DEC	$14,X		       
			BNE	ZEB22		       
			PSHB			       
			JSR	ZEBB1		       
			PULB			       
ZEB22			INCB			       
			CMPB	#$04		       
			BCS	ZEAF4		       
			RTS			       
ZEB28			PSHB			       
			LDAB	$08,X		       
			LDAA	,X		       
			STAA	>M0052		       
ZEB30			LDAA	M75F2		       
			ADDA	>M0052		       
			SUBA	#$18		       
			BMI	ZEB42		       
ZEB3A			STAA	>M0052		       
			DECB			       
			BNE	ZEB30		       
			BRA	ZEB52		       
ZEB42			CMPA	#$C0		       
			BCS	ZEB4C		       
ZEB46			ADDA	#$0C		       
			BMI	ZEB46		       
			BRA	ZEB3A		       
ZEB4C			SUBA	#$0C		       
			BMI	ZEB4C		       
			BRA	ZEB3A		       
ZEB52			LDAA	$04,X		       
			STAA	>M00F1		       
			PULB			       
			CMPB	#$01		       
			BCS	ZEB69		       
			BEQ	ZEB70		       
			CMPB	#$02		       
			BEQ	ZEB77		       
			LDAA	#$44		       
			STAA	>M0058		       
			BRA	ZEB7E		       
ZEB69			LDAA	#$0C		       
			STAA	>M0058		       
			BRA	ZEB7E		       
ZEB70			LDAA	#$14		       
			STAA	>M0058		       
			BRA	ZEB7E		       
ZEB77			LDAA	#$24		       
			STAA	>M0058		       
			BRA	ZEB7E		       
ZEB7E			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1D	       
			PULX			       
			INC	$08,X		       
			LDAA	$04,X		       
			LDAB	M75F3		       
			PSHX			       
			LDX	#MEBA9		       
			ABX			       
			ADDA	,X		       
			PULX			       
			BCS	ZEB9D		       
			CMPA	#$78		       
			BCC	ZEB9D		       
			BRA	ZEBA0		       
ZEB9D			CLR	$04,X		       
			RTS			       
ZEBA0			STAA	$04,X		       
			LDAA	M75F1		       
			INCA			       
			STAA	$10,X		       
			RTS			       
MEBA9			FCB	$FF,$76,$3B,$27,$1D,$17,$13,$0E
ZEBB1			PSHB			       
			LDAB	$0C,X		       
			LDAA	,X		       
			STAA	>M0051		       
ZEBB9			LDAA	M75F2		       
			ADDA	>M0051		       
			SUBA	#$18		       
			BMI	ZEBCB		       
ZEBC3			STAA	>M0051		       
			DECB			       
			BNE	ZEBB9		       
			BRA	ZEBDB		       
ZEBCB			CMPA	#$C0		       
			BCS	ZEBD5		       
ZEBCF			ADDA	#$0C		       
			BMI	ZEBCF		       
			BRA	ZEBC3		       
ZEBD5			SUBA	#$0C		       
			BMI	ZEBD5		       
			BRA	ZEBC3		       
ZEBDB			PULB			       
			CMPB	#$01		       
			BCS	ZEBEA		       
			BEQ	ZEBEE		       
			CMPB	#$02		       
			BEQ	ZEBF2		       
			LDAA	#$44		       
			BRA	ZEBF6		       
ZEBEA			LDAA	#$0C		       
			BRA	ZEBF6		       
ZEBEE			LDAA	#$14		       
			BRA	ZEBF6		       
ZEBF2			LDAA	#$24		       
			BRA	ZEBF6		       
ZEBF6			STAA	>M0058		       
			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1C	       
			PULX			       
			INC	$0C,X		       
			LDAA	$0C,X		       
			CMPA	$08,X		       
			BNE	ZEC10		       
			TST	$04,X		       
			BNE	ZEC10		       
			CLR	,X		       
			RTS			       
ZEC10			LDAA	M75F1		       
			INCA			       
			STAA	$14,X		       
			RTS			       
ZEC17			LDAA	#$02		       
			BITA	M776B		       
			BNE	ZEC1F		       
			RTS			       
ZEC1F			INC	M7765		       
			LDAA	M7765		       
			CMPA	#$3C		       
			BEQ	ZEC2A		       
			RTS			       
ZEC2A			CLR	M7765		       
			CLRA			       
			CLRB			       
ZEC2F			LDX	#M775D		       
			ABX			       
			TST	,X		       
			BEQ	ZEC41		       
			LDX	#M7D6B		       
			ABX			       
			CMPA	,X		       
			BCC	ZEC41		       
			LDAA	,X		       
ZEC41			INCB			       
			CMPB	#$08		       
			BNE	ZEC2F		       
			TAB			       
			COMB			       
			LDX	#MA82B		       
			ABX			       
			LDAB	,X		       
			COMB			       
			LDX	#MEF41		       
			ABX			       
			LDAA	,X		       
			STAA	M775B		       
			TST	M75F5		       
			BEQ	ZEC6F		       
			LDAB	M7750		       
			CMPB	#$40		       
			BCS	ZEC68		       
			STAA	M775C		       
			RTS			       
ZEC68			ASLB			       
			ASLB			       
			MUL			       
			STAA	M775C		       
			RTS			       
ZEC6F			LDAB	M7750		       
			MUL			       
			STAA	M775C		       
			RTS			       
ZEC77			LDAA	#$02		       
			BITA	M776B		       
			BNE	ZEC7F		       
			RTS			       
ZEC7F			TST	M75F5		       
			BNE	ZEC85		       
			RTS			       
ZEC85			LDX	#M775D		       
			ABX			       
			TST	,X		       
			BNE	ZEC8E		       
			RTS			       
ZEC8E			INC	M7766		       
			LDAA	M7766		       
			CMPA	#$01		       
			BEQ	ZEC99		       
			RTS			       
ZEC99			PSHB			       
			LDAA	M75F5		       
			CMPA	#$01		       
			BEQ	ZECA6		       
			LDAA	>M0052		       
			BRA	ZECA9		       
ZECA6			LDAA	M7769		       
ZECA9			ASLA			       
			LDAB	M7750		       
			CMPB	#$41		       
			BCS	ZECD8		       
			CMPA	#$80		       
			BEQ	ZECD8		       
			BCS	ZECC8		       
			SUBA	#$80		       
			MUL			       
			CMPA	#$20		       
			BCS	ZECC2		       
			LDAA	#$FF		       
			BRA	ZECD8		       
ZECC2			ASLD			       
			ASLD			       
			ADDA	#$80		       
			BRA	ZECD8		       
ZECC8			NEGA			       
			SUBA	#$80		       
			MUL			       
			CMPA	#$20		       
			BCS	ZECD3		       
			CLRA			       
			BRA	ZECD8		       
ZECD3			ASLD			       
			ASLD			       
			ADDA	#$80		       
			NEGA			       
ZECD8			JSR	ZED1E		       
			PULB			       
			RTS			       
ZECDD			LDAA	M776B		       
			BITA	#$02		       
			BNE	ZECE5		       
			RTS			       
ZECE5			TST	M75F5		       
			BNE	ZECEB		       
			RTS			       
ZECEB			LDX	#M775D		       
			ABX			       
			TST	,X		       
			BNE	ZECF4		       
			RTS			       
ZECF4			DEC	M7766		       
			BMI	ZECFA		       
			RTS			       
ZECFA			CLR	M7766		       
			RTS			       
ZECFE			LDAB	#$02		       
			BITB	M776B		       
			BNE	ZED06		       
			RTS			       
ZED06			TST	M75F5		       
			BEQ	ZED0C		       
			RTS			       
ZED0C			LDAA	M7836		       
			SUBA	#$3F		       
			CMPA	#$80		       
			BCC	ZED18		       
			ASLA			       
			BRA	ZED1A		       
ZED18			COMA			       
			ASLA			       
ZED1A			JSR	ZED1E		       
			RTS			       
ZED1E			LDAB	M775B		       
			MUL			       
			TST	M75F5		       
			BEQ	ZED33		       
			LDAB	M7750		       
			CMPB	#$40		       
			BCC	ZED37		       
			ASLB			       
			ASLB			       
			MUL			       
			BRA	ZED37		       
ZED33			LDAB	M7750		       
			MUL			       
ZED37			TAB			       
			LDAA	M775C		       
			SBA			       
			TST	M75F6		       
			BEQ	ZED44		       
			PSHA			       
			TBA			       
			PULB			       
ZED44			STAA	M7751		       
			STAB	M7752		       
			CLRB			       
ZED4B			LDX	#M775D		       
			ABX			       
			LDAA	,X		       
			BEQ	ZED69		       
			LDX	#M7753		       
			ABX			       
			BITA	#$02		       
			BEQ	ZED62		       
			LDAA	M7752		       
			STAA	,X		       
			BRA	ZED6F		       
ZED62			LDAA	M7751		       
			STAA	,X		       
			BRA	ZED6F		       
ZED69			LDX	#M7753		       
			ABX			       
			CLR	,X		       
ZED6F			INCB			       
			CMPB	#$08		       
			BNE	ZED4B		       
			RTS			       
ZED75			LDAA	#$31		       
			STAA	M7751		       
			STAA	M7752		       
			STAA	M7753		       
			STAA	M7754		       
			CLR	M7755		       
			LDAA	M776B		       
			ORAA	#$08		       
			STAA	M776B		       
			RTS			       
ZED8F			LDAA	M776B		       
			BITA	#$04		       
			BNE	ZED98		       
			CLV			       
			RTS			       
ZED98			CMPB	M784E		       
			BEQ	ZED9F		       
			CLV			       
			RTS			       
ZED9F			LDAA	M784E		       
			PSHB			       
			LDAB	>M0052		       
			JSR	Z8831		       
			PULB			       
			BCS	ZEDAE		       
			CLV			       
			RTS			       
ZEDAE			LDAA	M776B		       
			BITA	#$08		       
			BNE	ZEDC2		       
			LDAA	>M0052		       
			PSHA			       
			JSR	ZEE69		       
			PULA			       
			STAA	>M0052		       
			SEV			       
			RTS			       
ZEDC2			LDAA	>M0052		       
			SUBA	#$24		       
			SUBA	M7789		       
			CMPA	#$31		       
			BCS	ZEDD0		       
			SEV			       
			RTS			       
ZEDD0			LDAB	M7755		       
			CMPB	#$04		       
			BCS	ZEDDC		       
			LDAB	M784E		       
			CLV			       
			RTS			       
ZEDDC			LDX	#M7751		       
			ABX			       
			STAA	,X		       
			INC	M7755		       
			LDAB	M784E		       
			CLV			       
			RTS			       
ZEDEA			LDAA	M776B		       
			BITA	#$04		       
			BNE	ZEDF3		       
			CLV			       
			RTS			       
ZEDF3			CMPB	M784E		       
			BEQ	ZEDFA		       
			CLV			       
			RTS			       
ZEDFA			LDAA	M784E		       
			PSHB			       
			LDAB	>M0051		       
			JSR	Z8831		       
			PULB			       
			BCS	ZEE09		       
			CLV			       
			RTS			       
ZEE09			LDAA	M776B		       
			BITA	#$08		       
			BNE	ZEE1D		       
			LDAA	>M0051		       
			PSHA			       
			JSR	ZEED5		       
			PULA			       
			STAA	>M0051		       
			SEV			       
			RTS			       
ZEE1D			CLV			       
			RTS			       
ZEE1F			LDAA	M776B		       
			ANDA	#$0C		       
			CMPA	#$0C		       
			BEQ	ZEE29		       
			RTS			       
ZEE29			TST	M7755		       
			BNE	ZEE2F		       
			RTS			       
ZEE2F			LDX	#M7CE3		       
			CLRA			       
			ORAA	$01,X		       
			ORAA	$03,X		       
			ORAA	$05,X		       
			ORAA	$07,X		       
			ORAA	$09,X		       
			ORAA	$0B,X		       
			ORAA	$0D,X		       
			ORAA	$0F,X		       
			TSTA			       
			BEQ	ZEE47		       
			RTS			       
ZEE47			LDAA	M776B		       
			ANDA	#$F7		       
			STAA	M776B		       
			LDAB	M7789		       
			ASLB			       
			ASLB			       
			LDX	#M75F8		       
			ABX			       
			LDD	M7751		       
			STD	,X		       
			LDD	M7753		       
			STD	$02,X		       
			JSR	ZC95A		       
			JSR	ZC972		       
			RTS			       
ZEE69			LDAA	>M0052		       
			STAA	M7756		       
ZEE6F			SUBA	#$0C		       
			BCC	ZEE6F		       
			ADDA	#$0C		       
			TAB			       
			ASLB			       
			ASLB			       
			LDX	#M75F8		       
			ABX			       
			LDAA	,X		       
			CMPA	#$31		       
			BCC	ZEE92		       
			SUBA	#$18		       
			ADDA	M7756		       
			STAA	>M0052		       
			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1D	       
			PULX			       
ZEE92			LDAA	$01,X		       
			CMPA	#$31		       
			BCC	ZEEA8		       
			SUBA	#$18		       
			ADDA	M7756		       
			STAA	>M0052		       
			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1D	       
			PULX			       
ZEEA8			LDAA	$02,X		       
			CMPA	#$31		       
			BCC	ZEEBE		       
			SUBA	#$18		       
			ADDA	M7756		       
			STAA	>M0052		       
			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1D	       
			PULX			       
ZEEBE			LDAA	$03,X		       
			CMPA	#$31		       
			BCC	ZEED4		       
			SUBA	#$18		       
			ADDA	M7756		       
			STAA	>M0052		       
			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1D	       
			PULX			       
ZEED4			RTS			       
ZEED5			LDAA	>M0051		       
			STAA	M7756		       
ZEEDB			SUBA	#$0C		       
			BCC	ZEEDB		       
			ADDA	#$0C		       
			TAB			       
			ASLB			       
			ASLB			       
			LDX	#M75F8		       
			ABX			       
			LDAA	,X		       
			CMPA	#$31		       
			BCC	ZEEFE		       
			SUBA	#$18		       
			ADDA	M7756		       
			STAA	>M0051		       
			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1C	       
			PULX			       
ZEEFE			LDAA	$01,X		       
			CMPA	#$31		       
			BCC	ZEF14		       
			SUBA	#$18		       
			ADDA	M7756		       
			STAA	>M0051		       
			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1C	       
			PULX			       
ZEF14			LDAA	$02,X		       
			CMPA	#$31		       
			BCC	ZEF2A		       
			SUBA	#$18		       
			ADDA	M7756		       
			STAA	>M0051		       
			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1C	       
			PULX			       
ZEF2A			LDAA	$03,X		       
			CMPA	#$31		       
			BCC	ZEF40		       
			SUBA	#$18		       
			ADDA	M7756		       
			STAA	>M0051		       
			LDAB	M784E		       
			PSHX			       
			JSR	HI_CALL_1C	       
			PULX			       
ZEF40			RTS			       
MEF41			FCB	$00,$08,$0C,$13,$18,$1D,$20,$27,$2B,$30,$33,$38,$3C
			FCB	$3F,$43,$47,$4B,$50,$54,$58,$5B,$5F,$63,$65,$68,$6C
			FCB	$6F,$72,$75,$78,$7B,$7D,$80,$83,$9A,$9C,$8B,$8D,$90
			FCB	$92,$94,$96,$99,$9B,$9D,$9F,$A1,$A3,$A5,$A7,$A9,$AB
			FCB	$AD,$AE,$B0,$B2,$B3,$B5,$B7,$B8,$BA,$BB,$BD,$BE,$BF
			FCB	$C1,$C2,$C4,$C5,$C6,$C7,$C9,$CA,$CB,$CC,$CD,$CE,$CF
			FCB	$D1,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$D8,$D8,$D9,$DA,$DB
			FCB	$DC,$DC,$DD,$DE,$DE,$DF,$E0,$E1,$E1,$E2,$E2,$E3,$E4
			FCB	$E4,$E5,$E5,$E6,$E6,$E7,$E7,$E8,$E8,$E9,$E9,$EA,$EA
			FCB	$EB,$EB,$EB,$EC,$EC,$ED,$ED,$ED,$EE,$EE,$EE,$EF,$EF
			FCB	$F0,$F0,$F0,$F0,$F1,$F1,$F1,$F2,$F2,$F2,$F2,$F3,$F3
			FCB	$F3,$F3,$F4,$F4,$F4,$F4,$F5,$F5,$F5,$F5,$F5,$F6,$F6
			FCB	$F6,$F6,$F6,$F6,$F7,$F7,$F7,$F7,$F7,$F7,$F8,$F8,$F8
			FCB	$F8,$F8,$F8,$F8,$F9,$F9,$F9,$F9,$F9,$F9,$F9,$F9,$FA
			FCB	$FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA,$FB,$FB,$FB
			FCB	$FB,$FB,$FB,$FB,$FB,$FB,$FB,$FB,$FB,$FB,$FC,$FC,$FC
			FCB	$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
			FCB	$FC,$FC,$FC,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
			FCB	$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
			FCB	$FD,$FD,$FD,$FD,$FD,$FD,$FE,$FE,$FF
SVERSION		FCC	"V1.6  03-Feb-88 "     
			FCB	$00		       
ZF052			LDAB	#$1E		       
ZF054			LDX	#M1194		       
ZF057			DEX			       
			BNE	ZF057		       
			DECB			       
			BNE	ZF054		       
			RTS			       
			RTS			       
			RTS			       
			RTS			       
			RTS			       
			RTS			       
			RTS			       
			RTS			       
ZF065			BRA	ZF065		       

			ORG	$FFEA		       

; Interrupt Vectors
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

			END			       
