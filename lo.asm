; f9dasm: M6800/1/2/3/8/9 / H6309 Binary/OS9/FLEX9 Disassembler V1.79
; Loaded binary file lo.bin

;****************************************************
;* Used Labels                                      *
;****************************************************

        OPT     H03,NCL,NOW
FILCHR  TEXT    $FF
M0000   EQU     $0000
PORT2   EQU     $0003
M0004   EQU     $0004
TCSR1   EQU     $0008
FRCL    EQU     $000A
TCSR2   EQU     $000F
RMCR    EQU     $0010
RP5CR   EQU     $0014
PORT5   EQU     $0015
DDR6    EQU     $0016
PORT6   EQU     $0017
TCSR3   EQU     $001B
M0020   EQU     $0020
M0030   EQU     $0030
Z0033   EQU     $0033
Z0034   EQU     $0034
XROM    EQU     $0040
M0046   EQU     $0046
M0050   EQU     $0050
M0051   EQU     $0051
M0052   EQU     $0052
M0056   EQU     $0056
M0058   EQU     $0058
M005A   EQU     $005A
M0064   EQU     $0064
M0068   EQU     $0068
M0069   EQU     $0069
M0074   EQU     $0074
M0077   EQU     $0077
M0079   EQU     $0079
M007B   EQU     $007B
M0087   EQU     $0087
M009A   EQU     $009A
M009F   EQU     $009F
M00A3   EQU     $00A3
M00A5   EQU     $00A5
M00A6   EQU     $00A6
M00A7   EQU     $00A7
M00A9   EQU     $00A9
M00AB   EQU     $00AB
M00AC   EQU     $00AC
Z00AD   EQU     $00AD
M00C5   EQU     $00C5
M00C7   EQU     $00C7
M00CC   EQU     $00CC
M00CD   EQU     $00CD
M00CE   EQU     $00CE
M00CF   EQU     $00CF
M00D0   EQU     $00D0
M00D1   EQU     $00D1
M00D2   EQU     $00D2
M00D3   EQU     $00D3
M00D4   EQU     $00D4
M00D5   EQU     $00D5
M00D6   EQU     $00D6
M00D7   EQU     $00D7
M00D8   EQU     $00D8
M00D9   EQU     $00D9
M00DA   EQU     $00DA
M00DC   EQU     $00DC
M00DE   EQU     $00DE
M00F1   EQU     $00F1
M00F8   EQU     $00F8
M0101   EQU     $0101
M012C   EQU     $012C
M0134   EQU     $0134
M03E8   EQU     $03E8
M1194   EQU     $1194
M1770   EQU     $1770
OPZ_R0  EQU     $2000
OPZ_R1  EQU     $2001
M204E   EQU     $204E
M2710   EQU     $2710
Z317E   EQU     $317E
Z327E   EQU     $327E
Z3300   EQU     $3300
Z337E   EQU     $337E
M3400   EQU     $3400
M3531   EQU     $3531
LCD_CMD EQU     $4000
LCD_DATA EQU     $4001
M487A   EQU     $487A
M4F50   EQU     $4F50
RAM     EQU     $6000
M6001   EQU     $6001
M6974   EQU     $6974
M69C1   EQU     $69C1
M6A04   EQU     $6A04
M6A0A   EQU     $6A0A
M6A0B   EQU     $6A0B
M6A0D   EQU     $6A0D
M6A0E   EQU     $6A0E
M6A0F   EQU     $6A0F
M6A11   EQU     $6A11
M6A15   EQU     $6A15
M6A16   EQU     $6A16
M6A17   EQU     $6A17
M6A19   EQU     $6A19
M6A67   EQU     $6A67
M6AA5   EQU     $6AA5
M6AA6   EQU     $6AA6
M6AC0   EQU     $6AC0
M6DD7   EQU     $6DD7
M6E07   EQU     $6E07
M6E37   EQU     $6E37
M6E3A   EQU     $6E3A
M6E3B   EQU     $6E3B
M6E45   EQU     $6E45
M7565   EQU     $7565
M7566   EQU     $7566
M7567   EQU     $7567
M7568   EQU     $7568
M7569   EQU     $7569
M756A   EQU     $756A
M756B   EQU     $756B
M756C   EQU     $756C
M756D   EQU     $756D
M756E   EQU     $756E
M756F   EQU     $756F
M7571   EQU     $7571
M75F1   EQU     $75F1
M75F8   EQU     $75F8
M7628   EQU     $7628
M7640   EQU     $7640
M7740   EQU     $7740
M7750   EQU     $7750
M776C   EQU     $776C
M776D   EQU     $776D
M776E   EQU     $776E
M7770   EQU     $7770
M7772   EQU     $7772
M7773   EQU     $7773
M7774   EQU     $7774
M7779   EQU     $7779
M777A   EQU     $777A
M777B   EQU     $777B
M777C   EQU     $777C
M777E   EQU     $777E
M777F   EQU     $777F
M7781   EQU     $7781
M7784   EQU     $7784
M7787   EQU     $7787
M7788   EQU     $7788
M7789   EQU     $7789
M778A   EQU     $778A
M778B   EQU     $778B
M778C   EQU     $778C
M778D   EQU     $778D
M778F   EQU     $778F
M7791   EQU     $7791
M7792   EQU     $7792
M7793   EQU     $7793
M7794   EQU     $7794
M7795   EQU     $7795
M784E   EQU     $784E
M784F   EQU     $784F
M7933   EQU     $7933
M7D53   EQU     $7D53
M7D63   EQU     $7D63
M7D6B   EQU     $7D6B
M7D8B   EQU     $7D8B
M7DAB   EQU     $7DAB
M7DAC   EQU     $7DAC
M7DAD   EQU     $7DAD
M7DAE   EQU     $7DAE
M7DAF   EQU     $7DAF
M7DB0   EQU     $7DB0
M7DB1   EQU     $7DB1
M7DB2   EQU     $7DB2
M7DB3   EQU     $7DB3
M7DB4   EQU     $7DB4
M7DB5   EQU     $7DB5
M7DB6   EQU     $7DB6
M7DB7   EQU     $7DB7
M7DB8   EQU     $7DB8
M7DB9   EQU     $7DB9
M7DBA   EQU     $7DBA
M7DBB   EQU     $7DBB
M7DBF   EQU     $7DBF
M7DC0   EQU     $7DC0
M7DC1   EQU     $7DC1
M7DC3   EQU     $7DC3
M7DC4   EQU     $7DC4
M7DC5   EQU     $7DC5
M7DC6   EQU     $7DC6
M7DC7   EQU     $7DC7
M7DC8   EQU     $7DC8
M7DC9   EQU     $7DC9
M7DCA   EQU     $7DCA
M7DCB   EQU     $7DCB
M7E0C   EQU     $7E0C
M7EE8   EQU     $7EE8
M7F99   EQU     $7F99
M7FE0   EQU     $7FE0
Z811F   EQU     $811F

;****************************************************
;* Program Code / Data Areas                        *
;****************************************************

        ORG     $8000

hdlr_RST OIM     #$08,PORT6
        LDAA    #$F8
        STAA    DDR6
        OIM     #$08,PORT6
        NOP
        NOP
        RTS
hdlr_SWI2 NOP
        OIM     #$08,PORT6
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RTI
hdlr_CMI NOP
        OIM     #$08,PORT6
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RTI
hdlr_DIV0 NOP
        OIM     #$08,PORT6
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RTI
hdlr_IRQ NOP
        OIM     #$08,PORT6
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        RTI
XROM_CALL1 OIM     #$08,PORT6
        LDX     #M8202
        PSHB
        LDAB    XROM
        ABX
        ABX
        PULB
        LDX     ,X
        JSR     ,X
        OIM     #$08,PORT6
        RTS
XROM_CALL2 OIM     #$08,PORT6
        BSR     XROM_LOOKUP
        LDAA    ,X
        OIM     #$08,PORT6
        RTS
XROM_CALL3 OIM     #$08,PORT6
        BSR     XROM_LOOKUP
        LDAB    ,X
        OIM     #$08,PORT6
        RTS
XROM_CALL4 OIM     #$08,PORT6
        BSR     XROM_LOOKUP
        ABX
        LDD     ,X
        OIM     #$08,PORT6
        RTS
XROM_CALL5 OIM     #$08,PORT6
        BSR     XROM_LOOKUP
        ABX
        ABX
        LDX     ,X
        OIM     #$08,PORT6
        RTS
XROM_LOOKUP LDX     #M8200
        ABX
        ABX
        LDX     ,X
        TAB
        ABX
        RTS
INIT_VOICE FCB     $1F,$1F,$00,$0F,$0F,$00,$00,$00,$04,$03,$1F,$1F,$00
        FCB     $0F,$0F,$00,$00,$00,$04,$03,$1F,$1F,$00,$0F,$0F,$00
        FCB     $00,$00,$04,$03,$1F,$1F,$00,$0F,$0F,$00,$00,$5A,$04
        FCB     $03,$00,$23,$00,$00,$00,$62,$18,$04,$04,$00,$28,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "INIT VOICE"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
M80D4_via_dvec_8f10 FCC     "(TX)"
        FCB     $00
M80D9_via_dvec_8f0e FCC     "(DX)"
        FCB     $00
Z80DE   FCC     "Memory Protected"
        FCB     $00
M80EF   FCC     "<Good morning!!>"
        FCB     0

        ORG     $8200 

M8200   FDB     hdlr_RST
; jump table
M8202   FDB     LO_CALL_00,LO_CALL_01,LO_CALL_02,LO_CALL_03
        FDB     LO_CALL_04,LO_CALL_05,LO_CALL_06,LO_CALL_08
        FDB     LO_CALL_09,LO_CALL_0A,LO_CALL_0B,LO_CALL_0C
        FDB     LO_CALL_0D
LO_CALL_00 LDAB    #$04
Z821E   PSHB
        LDAB    #$06
        JSR     Z86B7
        LDX     M00A9
        LDAA    ,X
        STAA    M009F
        LDAB    $03,X
        INX
        STX     M00A9
        LDX     M00A7
        PSHB
        ANDB    #$07
        STAB    $06,X
        PULB
        ANDB    #$18
        LSRB
        LSRB
        LSRB
        STAB    ,X
        ANDA    #$07
        STAA    $03,X
        LDAA    M009F
        ANDA    #$38
        LSRA
        LSRA
        LSRA
        STAA    $01,X
        LDAA    M009F
        ROLA
        ROLA
        ROLA
        ANDA    #$01
        STAA    $02,X
        LDAB    #$04
        ABX
        LDAB    #$02
        JSR     Z86B5
        LDX     M00A9
        INX
        STX     M00A9
        LDX     M00A7
        INX
        STX     M00A7
        PULB
        DECB
        BNE     Z821E
        STX     M00A7
        LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        PSHA
        ANDA    #$07
        STAA    ,X
        INX
        PULA
        LSRA
        LSRA
        LSRA
        PSHA
        ANDA    #$07
        STAA    ,X
        PULA
        ANDA    #$08
        LSRA
        LSRA
        LSRA
        STAA    $05,X
        INX
        LDAB    #$04
        JSR     Z86B5
        LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        INX
        PSHA
        ANDA    #$03
        STAA    ,X
        PULA
        LSRA
        LSRA
        PSHA
        ANDA    #$03
        STAA    $02,X
        PULA
        LSRA
        LSRA
        STAA    $01,X
        INX
        INX
        INX
        LDAB    #$01
        JSR     Z86B5
        TST     M756E
        BNE     Z82CA
        LDAB    #$0E
        ABX
        STX     M00A7
        LDX     M00A9
        LDAB    #$0A
        ABX
        STX     M00A9
        JMP     Z8310
Z82CA   LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        STAA    $01,X
        LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        PSHA
        ANDA    #$01
        STAA    $02,X
        PULA
        LSRA
        PSHA
        ANDA    #$01
        STAA    $06,X
        PULA
        LSRA
        PSHA
        ANDA    #$01
        STAA    $05,X
        PULA
        LSRA
        PSHA
        ANDA    #$01
        STAA    ,X
        PULA
        LSRA
        ANDA    #$01
        STAA    $07,X
        INX
        INX
        INX
        LDAB    #$02
        JSR     Z86B5
        INX
        INX
        INX
        STX     M00A7
        LDAB    #$06
        JSR     Z86B7
Z8310   LDAB    #$0A
        JSR     Z86B7
        LDAB    #$04
Z8317   PSHB
        LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        PSHA
        ANDA    #$07
        STAA    $01,X
        PULA
        LSRA
        LSRA
        LSRA
        PSHA
        ANDA    #$01
        STAA    ,X
        PULA
        LSRA
        ANDA    #$03
        STAA    $04,X
        INX
        INX
        STX     M00A7
        LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        PSHA
        ANDA    #$0F
        STAA    ,X
        PULA
        LSRA
        LSRA
        LSRA
        LSRA
        ANDA    #$07
        STAA    $01,X
        INX
        INX
        INX
        STX     M00A7
        PULB
        DECB
        BNE     Z8317
        TST     M756E
        BNE     Z8378
        LDX     M00A7
        LDAB    #$03
        ABX
        STX     M00A7
        LDX     M00A9
        ABX
        STX     M00A9
        LDAA    M7772
        ANDA    #$04
        BNE     Z837D
        LDAA    #$01
        STAA    M7792
        BRA     Z837D
Z8378   LDAB    #$03
        JSR     Z86B7
Z837D   RTS
LO_CALL_06 LDAB    #$04
Z8380   PSHB
        LDAB    #$06
        JSR     Z86B7
        LDX     M00A9
        LDAA    ,X
        ASLA
        ASLA
        ASLA
        ADDA    $06,X
        INX
        STX     M00A9
        LDX     M00A7
        STAA    $03,X
        LDX     M00A9
        LDAA    $01,X
        ASLA
        ASLA
        ASLA
        ADDA    ,X
        ASLA
        ASLA
        ASLA
        ADDA    $02,X
        INX
        INX
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        LDAB    #$02
        JSR     Z86B5
        LDX     M00A9
        INX
        STX     M00A9
        LDX     M00A7
        INX
        STX     M00A7
        PULB
        DECB
        BNE     Z8380
        STX     M00A7
        LDX     M00A9
        LDAA    $06,X
        ASLA
        ASLA
        ASLA
        ADDA    $01,X
        ASLA
        ASLA
        ASLA
        ADDA    ,X
        INX
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        LDAB    #$04
        JSR     Z86B5
        LDX     M00A9
        INX
        LDAA    $01,X
        ASLA
        ASLA
        ADDA    $02,X
        ASLA
        ASLA
        ADDA    ,X
        INX
        INX
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        LDAB    #$01
        JSR     Z86B5
        LDX     M00A9
        LDAA    $01,X
        LDX     M00A7
        STAA    ,X
        INX
        STX     M00A7
        LDX     M00A9
        LDAA    $07,X
        ASLA
        ADDA    ,X
        ASLA
        ADDA    $05,X
        ASLA
        ADDA    $06,X
        ASLA
        ADDA    $02,X
        INX
        INX
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        LDAB    #$02
        JSR     Z86B5
        LDX     M00A9
        INX
        INX
        INX
        STX     M00A9
        LDAB    #$10
        JSR     Z86B7
        LDAB    #$04
Z8433   PSHB
        LDX     M00A9
        LDAA    $04,X
        ASLA
        ADDA    ,X
        ASLA
        ASLA
        ASLA
        ADDA    $01,X
        INX
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        STX     M00A7
        LDX     M00A9
        LDAA    $01,X
        ASLA
        ASLA
        ASLA
        ASLA
        ADDA    ,X
        INX
        INX
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        STX     M00A7
        PULB
        DECB
        BNE     Z8433
        LDAB    #$03
        JSR     Z86B7
        RTS
LO_CALL_05 LDAB    #$08
Z846D   PSHB
        LDX     M00A9
        LDAA    ,X
        LDAB    $01,X
        ANDB    #$7F
        INX
        INX
        STX     M00A9
        LDX     M00A7
        PSHA
        ANDA    #$0F
        STAA    ,X
        PULA
        LSRA
        LSRA
        LSRA
        LSRA
        PSHA
        ANDA    #$01
        BEQ     Z848D
        ORAB    #$80
Z848D   STAB    $02,X
        PULA
        LSRA
        ANDA    #$03
        STAA    $09,X
        INX
        INX
        INX
        STX     M00A7
        LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        PSHA
        ANDA    #$1F
        STAA    ,X
        PULA
        LSRA
        LSRA
        LSRA
        LSRA
        LSRA
        ANDA    #$03
        STAA    $07,X
        INX
        LDAB    #$03
        JSR     Z86B5
        LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        PSHA
        ANDA    #$3F
        STAA    ,X
        PULA
        LSRA
        LSRA
        LSRA
        LSRA
        LSRA
        LSRA
        ANDA    #$01
        STAA    $04,X
        INX
        LDAB    #$01
        JSR     Z86B5
        INX
        INX
        INX
        STX     M00A7
        PULB
        DECB
        BNE     Z846D
        LDAB    #$01
        JSR     Z86B7
        LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        PSHA
        ANDA    #$01
        STAA    ,X
        PULA
        LSRA
        PSHA
        ANDA    #$03
        STAA    $01,X
        PULA
        LSRA
        LSRA
        ANDA    #$0F
        STAA    $02,X
        INX
        INX
        INX
        LDAB    #$0A
        JMP     Z86B5
LO_CALL_08 LDAB    #$08
Z850B   PSHB
        LDX     M00A9
        LDAA    $09,X
        ASLA
        TIM     #$80,$02,X
        BEQ     Z8518
        ADDA    #$01
Z8518   ASLA
        ASLA
        ASLA
        ASLA
        ADDA    ,X
        INX
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        STX     M00A7
        LDX     M00A9
        LDAA    ,X
        ANDA    #$7F
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        STX     M00A7
        LDX     M00A9
        LDAA    $07,X
        ASLA
        ASLA
        ASLA
        ASLA
        ASLA
        ADDA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        LDAB    #$03
        JSR     Z86B5
        LDX     M00A9
        LDAA    $04,X
        ASLA
        ASLA
        ASLA
        ASLA
        ASLA
        ASLA
        ADDA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        LDAB    #$01
        JSR     Z86B5
        LDX     M00A9
        INX
        INX
        INX
        STX     M00A9
        PULB
        DECB
        BNE     Z850B
        LDAB    #$01
        JSR     Z86B7
        LDX     M00A9
        LDAA    $02,X
        ASLA
        ASLA
        ADDA    $01,X
        ASLA
        ADDA    ,X
        INX
        INX
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        LDAB    #$0A
        JMP     Z86B5
LO_CALL_09 CLR     >M009F
Z8597   JSR     LO_CALL_0D
        LDAB    M009F
        INCB
        STAB    M009F
        CMPB    #$08
        BNE     Z8597
LO_CALL_0B LDX     #M6DD7
        LDAB    #$08
        STX     M00A9
Z85AA   LDX     #D871F
        STX     M00A7
        PSHB
        LDAB    #$0C
        BSR     Z862F
        PULB
        DECB
        BNE     Z85AA
        LDAB    #$04
        BSR     Z862F
        JSR     LO_CALL_0A
        LDX     #M6DD7
        CLRA
        LDAB    #$0C
Z85C5   ADDA    ,X
        CMPA    #$09
        BCS     Z85CD
        CLR     ,X
Z85CD   ABX
        CPX     #M6E37
        BNE     Z85C5
        RTS
LO_CALL_0A LDAB    #$0A
Z85D6   LDAA    #$7F
        LDX     M00A9
        CMPA    ,X
        BCC     Z85E0
        STAA    ,X
Z85E0   LDAA    #$1F
        CMPA    ,X
        BCS     Z85EA
        LDAA    #$24
        STAA    ,X
Z85EA   INX
        STX     M00A9
        DECB
        BNE     Z85D6
        RTS
D85F1   FCB     $1F,$1F,$1F,$0F,$0F,$63,$03,$07,$01,$07,$63,$3F,$06
        FCB     $07,$07,$63,$63,$63,$63,$01,$03,$07,$03,$30,$01,$0C
        FCB     $01,$63,$63,$01,$01,$01,$63,$63,$63,$63,$64,$63
D8716   FCB     $01,$07,$0F,$07,$03,$07,$63,$63
D871F   FCB     $08,$00,$9F,$10,$7F,$7F,$0E,$30,$63,$03,$03,$01,$0C
        FCB     $01,$03,$0B
Z862F   LDX     M00A7
        LDAA    ,X
        INX
        STX     M00A7
        LDX     M00A9
        CMPA    ,X
        BCC     Z863E
        STAA    ,X
Z863E   INX
        STX     M00A9
        DECB
        BNE     Z862F
        RTS
LO_CALL_0D LDAB    M009F
        LDAA    #$6E
        MUL
        ADDD    #M6A67
        STD     M00A9
        CLRB
Z8650   LDX     #D85F1
        STX     M00A7
        PSHB
        LDAB    #$03
        JSR     Z862F
        TST     ,X
        BNE     Z8663
        LDAA    #$01
        STAA    ,X
Z8663   LDAB    #$08
        JSR     Z862F
        TIM     #$3C,$00,X
        BNE     Z8686
        LDAA    #$6E
        LDAB    M009F
        MUL
        ADDD    #M6AC0
        XGDX
        PULB
        PSHB
        LDAA    #$05
        MUL
        ABX
        LDAA    ,X
        CMPA    #$08
        BCS     Z8684
        LDAA    #$07
Z8684   STAA    ,X
Z8686   LDAB    #$02
        JSR     Z862F
        PULB
        INCB
        CMPB    #$04
        BNE     Z8650
        LDAB    #$19
        JSR     Z862F
        JSR     LO_CALL_0A
        LDAB    #$04
Z869B   LDX     #D8716
        STX     M00A7
        PSHB
        LDAB    #$05
        JSR     Z862F
        PULB
        DECB
        BNE     Z869B
        LDX     M00A9
        DEX
        CLR     ,X
        LDAB    #$03
        JSR     Z862F
        RTS
Z86B5   STX     M00A7
Z86B7   LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        STAA    ,X
        INX
        STX     M00A7
        DECB
        BNE     Z86B7
        RTS
LO_CALL_03 TST     M756C
        BEQ     Z870C
        TST     >M00CC
        BNE     Z870C
        JSR     HI_CALL_00
        JSR     HI_CALL_01
        CLR     >M005A
        JSR     Z9B4A
        STX     M00A7
        LDX     #S870D
        JSR     Z9BC4
        CLR     >M00C7
        JSR     HI_CALL_0E
Z86ED   LDAA    M777E
        DECA
        LDAB    #$20
        MUL
        ADDB    M00C7
        LDAA    #$4E
        MUL
        ADDD    #PRESET_TABLE
        XGDX
        JSR     Z9ACD
        LDAB    M00C7
        INCB
        STAB    M00C7
        CMPB    #$20
        BNE     Z86ED
        JSR     HI_CALL_10
Z870C   RTS
S870D   FCC     "Transmitting!!  "
        FCB     $00
LO_CALL_04 LDAA    #$01
        STAA    M7791
        LDAA    M777E
        LDAB    #$4C
        MUL
        ADDD    #MODE_TABLE
        XGDX
        STX     M00A9
        AIM     #$BF,TCSR3
        LDX     #M6DD7
        STX     M00A7
        JSR     LO_CALL_05
        JSR     HI_CALL_13
        JSR     HI_CALL_14
        RTS
Z8741   CLRB
Z8742   PSHB
        LDX     #M876B
        ABX
        LDAA    ,X
        CMPA    #$80
        BCS     Z874E
        CLRA
Z874E   LDAB    #$4E
        MUL
        ADDD    #PRESET_TABLE
        STD     M00A9
        PULB
        PSHB
        LDAA    #$4E
        MUL
        ADDD    #M6001
        XGDX
        LDAB    #$4E
        JSR     Z86B5
        PULB
        INCB
        CMPB    #$20
        BNE     Z8742
        RTS
M876B   FCB     $00,$08,$0C,$10,$18,$1E,$20,$22,$29,$2F,$30,$34,$37
        FCB     $3C,$3F,$40,$41,$43,$48,$4A,$4E,$55,$57,$59,$60,$61
        FCB     $64,$67,$6F,$79,$7A,$7D
Z878B   CLRB
        LDX     #M6E45
        STX     M00A7
Z8791   PSHB
        LDAA    #$4C
        MUL
        ADDD    #PERFORM_TABLE
        STD     M00A9
        LDAB    #$4C
        JSR     Z86B7
        PULB
        INCB
        CMPB    #$18
        BNE     Z8791
        RTS
; Mode table  - 5 x 76 bytes per mode
MODE_TABLE FCB     $68,$00,$20,$00,$7F,$07,$18,$63,$60,$00,$41,$00,$7F
        FCB     $07,$18,$63,$60,$00,$62,$00,$7F,$07,$18,$63,$60,$00
        FCB     $63,$00,$7F,$07,$18,$63,$60,$00,$64,$00,$7F,$07,$18
        FCB     $63,$60,$00,$65,$00,$7F,$07,$18,$63,$60,$00,$66,$00
        FCB     $7F,$07,$18,$63,$60,$00,$67,$00,$7F,$07,$18,$63,$00
        FCB     $00
        FCC     "SINGLE    "
        FCB     $64,$00,$20,$00,$7F,$07,$18,$63,$64,$00,$40,$00,$7F
        FCB     $09,$18,$63,$60,$00,$62,$00,$7F,$07,$18,$63,$60,$00
        FCB     $63,$00,$7F,$07,$18,$63,$60,$00,$64,$00,$7F,$07,$18
        FCB     $63,$60,$00,$65,$00,$7F,$07,$18,$63,$60,$00,$66,$00
        FCB     $7F,$07,$18,$63,$60,$00,$67,$00,$7F,$07,$18,$63,$00
        FCB     $00
        FCC     "DUAL      "
        FCB     $64,$00,$20,$3C,$7F,$07,$18,$63,$64,$00,$40,$00,$3B
        FCB     $07,$18,$63,$60,$00,$62,$00,$7F,$07,$18,$63,$60,$00
        FCB     $63,$00,$7F,$07,$18,$63,$60,$00,$64,$00,$7F,$07,$18
        FCB     $63,$60,$00,$65,$00,$7F,$07,$18,$63,$60,$00,$66,$00
        FCB     $7F,$07,$18,$63,$60,$00,$67,$00,$7F,$07,$18,$63,$00
        FCB     $00
        FCC     "SPLIT     "
        FCB     $61,$00,$20,$00,$7F,$07,$18,$63,$61,$01,$41,$00,$7F
        FCB     $07,$18,$63,$61,$02,$62,$00,$7F,$07,$18,$63,$61,$03
        FCB     $63,$00,$7F,$07,$18,$63,$61,$04,$64,$00,$7F,$07,$18
        FCB     $63,$61,$05,$65,$00,$7F,$07,$18,$63,$61,$06,$66,$00
        FCB     $7F,$07,$18,$63,$61,$07,$67,$00,$7F,$07,$18,$63,$00
        FCB     $00
        FCC     "MONO8     "
        FCB     $62,$00,$20,$00,$7F,$07,$18,$63,$62,$01,$41,$00,$7F
        FCB     $07,$18,$63,$62,$02,$62,$00,$7F,$07,$18,$63,$62,$03
        FCB     $63,$00,$7F,$07,$18,$63,$60,$04,$64,$00,$7F,$07,$18
        FCB     $63,$60,$05,$65,$00,$7F,$07,$18,$63,$60,$06,$66,$00
        FCB     $7F,$07,$18,$63,$60,$07,$67,$00,$7F,$07,$18,$63,$00
        FCB     $00
        FCC     "POLY4     "
LO_CALL_01 JSR     Z8EBE
        LDAB    M7789
        CMPB    #$0B
        BCS     Z892F
        JMP     Z8A4F
Z892F   JSR     JMPOFFB
        FCB     $1F,$10,$0C,$08,$17,$0C,$08,$04,$0C,$08,$04
J893D   JMP     Z8D3E
J8940   JMP     Z8B4A
J8943   JMP     Z8ABD
J8946   LDAB    M777E
        ADDB    #$03
        BRA     Z895B
J894D   LDAB    #$02
        BRA     Z895B
J8951   TST     M777E
        BEQ     Z8959
        CLRB
        BRA     Z895B
Z8959   LDAB    #$01
Z895B   STAB    M00D7
        JSR     Z8EF2
        JSR     Z9B4A
        STX     M00A7
        LDX     #M8F2E
        JSR     Z9B5E
        JSR     Z8EB0
Z896E   JSR     HI_CALL_17
        CMPB    #$02
        BNE     Z8978
        JMP     Z8A4F
Z8978   CMPB    #$01
        BNE     Z896E
        JSR     Z9B4A
        STX     M00A7
        CLR     M6A15
        LDAB    M00D7
Z8986   ASLB
        LDX     #M8A6E
        ABX
        LDX     ,X
        JSR     Z9B5E
        LDX     #M8FDC
        JSR     Z9BC4
        LDAB    #$04
        LDX     #M0000
Z899B   TIM     #$20,PORT5
        BEQ     Z89F1
        DEX
        BNE     Z899B
        DECB
        BNE     Z899B
        LDAA    M00D7
        CMPA    #$03
        BCS     Z89B1
        CLR     >M00CD
        BRA     Z89C1
Z89B1   CLRA
        STAA    M00CD
Z89B4   LDX     #M7DC0
        STX     M00A7
        INCA
        CLRB
        JSR     Z9BD1
        JSR     Z9B87
Z89C1   LDAA    M00CD
        JSR     Z903F
        LDAA    M00CD
        JSR     Z8A7E
        JSR     Z92F3
        STD     M6A17
        PSHB
        LDAB    M00D7
        CMPB    #$01
        BEQ     Z89E8
        CMPB    #$02
        BNE     Z89E2
        PULB
        STD     M6A0F
        BRA     Z89E9
Z89E2   PULB
        STD     M6A0B
        BRA     Z89E9
Z89E8   PULB
Z89E9   JSR     Z931B
        TST     >M00D3
        BEQ     Z89F3
Z89F1   BRA     Z8A51
Z89F3   LDAA    M00CD
        INCA
        STAA    M00CD
        LDAB    M00D7
        JSR     JMPOFFB
        FCB     $08,$07,$0A,$0F,$36,$2D,$34,$2F
J8A05   CMPA    #$20
        BRA     Z8A0B
J8A09   CMPA    #$18
Z8A0B   BNE     Z89B4
        BRA     J8A37
        LDAB    M6A15
        CMPB    #$02
        BEQ     J8A33
        CMPB    #$01
        BEQ     Z8A1E
        CMPA    #$04
        BNE     Z89C1
Z8A1E   JSR     Z9B4A
        STX     M00A7
        LDAB    M6A15
        INCB
        STAB    M6A15
        ADDB    #$05
        JMP     Z8986
J8A2F   CMPA    #$04
        BRA     Z8A35
J8A33   CMPA    #$05
Z8A35   BNE     Z89C1
J8A37   JSR     HI_CALL_06
        LDAA    M00D7
        CMPA    #$02
        BEQ     Z8A46
        BCS     Z8A4A
        LDAA    #$09
        BRA     Z8A4C
Z8A46   LDAA    #$05
        BRA     Z8A4C
Z8A4A   LDAA    #$01
Z8A4C   STAA    M7789
Z8A4F   CLI
        RTS
Z8A51   LDAA    M00D7
        CMPA    #$02
        BCS     Z8A63
        LDAA    M777E
        DECA
        CMPA    #$05
        BCS     Z8A69
        LDAA    #$04
        BRA     Z8A69
Z8A63   LDAA    M777E
        INCA
        ANDA    #$01
Z8A69   STAA    M777E
        BRA     Z8A4F
M8A6E   FDB     M8F34_via_dvec_8a6e,M8F34_via_dvec_8a6e
        FDB     M8FD3_via_dvec_8a72,M8FEE_via_dvec_8a74
        FDB     M8FF7_via_dvec_8a76,M8FEE_via_dvec_8a74
        FDB     M9000_via_dvec_8a7a,M9009_via_dvec_8a7c
Z8A7E   LDAA    M00CD
        LDAB    M00D7
        CMPB    #$08
        BCS     Z8A87
        CLRB
Z8A87   JSR     JMPOFFB
        FCB     $2C,$07,$0A,$10,$1A,$1D,$20,$23
J8A92   ADDA    #$20
        BRA     J8AB6
        ADDA    #$40
        STAA    M6A0E
        BRA     J8AB6
J8A9D   LDAB    M6A15
        BEQ     J8AAC
        CMPB    #$01
        BEQ     J8AB0
        BRA     J8AB4
J8AA8   LDAA    #$60
        BRA     J8AB6
J8AAC   ADDA    #$61
        BRA     J8AB6
J8AB0   LDAA    #$65
        BRA     J8AB6
J8AB4   ADDA    #$66
J8AB6   STAA    M6A0A
        STAA    M6A16
        RTS
Z8ABD   JSR     Z9B4A
        STX     M00A7
        LDX     #M8F26
        JSR     Z9B5E
        JSR     Z8EB0
Z8ACB   JSR     HI_CALL_17
        CMPB    #$02
        BEQ     Z8B47
        CMPB    #$01
        BNE     Z8ACB
        CLR     M6A15
        JSR     Z9B4A
        STX     M00A7
        LDX     #M8F42
        JSR     Z9B5E
        LDAB    M7789
        ANDB    #$0C
        CMPB    #$08
        BNE     Z8AF5
        LDX     #M7DC8
        STX     M00A7
        JSR     Z8C1C
Z8AF5   CLRA
        STAA    M00CD
Z8AF8   JSR     Z8C82
        BCC     Z8B34
        LDAA    M00D3
        CMPA    #$03
        BNE     Z8B0B
        JSR     Z8EF2
        CLR     >M00D3
        BRA     Z8AF5
Z8B0B   JSR     Z9207
        BNE     Z8B44
        LDAA    M00CD
        BNE     Z8B19
        JSR     Z8EF2
        LDAA    M00CD
Z8B19   INCA
        STAA    M00CD
        JSR     Z8C34
        BCC     Z8AF8
        LDX     #M7DBB
        STX     M00A7
        LDX     #M8F5C
        JSR     Z9BC4
        JSR     HI_CALL_0D
        CLI
        LDAA    #$01
        STAA    M00CE
Z8B34   LDAA    M777E
        ANDA    #$0F
        DECA
        CMPA    #$05
        BCS     Z8B40
        LDAA    #$04
Z8B40   STAA    M777E
        RTS
Z8B44   JMP     Z8CE9
Z8B47   JMP     Z8D03
Z8B4A   TST     M756D
        BEQ     Z8B52
        JMP     Z8C0D
Z8B52   LDX     #M7DBB
        STX     M00A7
        LDAB    M7789
        CMPB    #$0A
        BNE     Z8B63
        LDX     #M8F7E
        BRA     Z8B66
Z8B63   LDX     #M8F6D
Z8B66   JSR     Z9BC4
Z8B69   JSR     HI_CALL_17
        CMPB    #$02
        BNE     Z8B73
        JMP     Z8C0A
Z8B73   CMPB    #$01
        BNE     Z8B69
        JSR     Z9B4A
        STX     M00A7
        CLR     M6A15
        LDAB    M7789
        ANDB    #$0C
        BEQ     Z8B9A
        CMPB    #$04
        BEQ     Z8B95
        LDX     #M8FE4
        JSR     Z9B5E
        JSR     Z8C1C
        BRA     Z8BA0
Z8B95   LDX     #M8FC6
        BRA     Z8B9D
Z8B9A   LDX     #M8F4F
Z8B9D   JSR     Z9BC4
Z8BA0   CLR     >M00D3
        CLRA
        STAA    M00CD
Z8BA6   JSR     Z8C82
        BCC     Z8B34
        LDAA    M00D3
        CMPA    #$03
        BNE     Z8BB6
        JSR     Z8EF2
        BRA     Z8BA0
Z8BB6   LDAA    M00CD
        JSR     Z90F5
        LDAA    M00CD
        BNE     Z8BC4
        JSR     Z8EF2
        LDAA    M00CD
Z8BC4   INCA
        STAA    M00CD
        JSR     Z8C34
        BCC     Z8BA6
        LDX     #M7DBB
        STX     M00A7
        LDX     #M8FAF
        JSR     Z9BC4
        CLI
        LDAB    M00D7
        CMPB    #$02
        BCS     Z8C01
        BEQ     Z8BFE
        JSR     HI_CALL_09
        JSR     HI_CALL_00
        JSR     HI_CALL_01
        JSR     HI_CALL_0F
        JSR     HI_CALL_18
        JSR     HI_CALL_11
        AIM     #$BF,TCSR3
        JSR     HI_CALL_15
        JSR     HI_CALL_16
        OIM     #$40,TCSR3
Z8BFE   JMP     Z8CF5
Z8C01   JSR     HI_CALL_1B
        JSR     HI_CALL_04
        JMP     Z8CF5
Z8C0A   JMP     Z8D03
Z8C0D   JSR     Z9B4A
        STX     M00A7
        LDX     #Z80DE
        JSR     Z9BC4
        CLI
        JMP     Z8CF5
Z8C1C   LDAB    M777E
        ASLB
        LDX     #M8C2A
        ABX
        LDX     ,X
        JSR     Z9BC4
        RTS
M8C2A   FDB     M9012_via_dvec_8c2a,M9016_via_dvec_8c2c
        FDB     M901A_via_dvec_8c2e,M901E_via_dvec_8c30
        FDB     M9022_via_dvec_8c32
Z8C34   LDAB    M00D7
        JSR     JMPOFFB
        FCB     $08,$07,$0A,$0F,$43,$0D,$14,$0F
J8C41   CMPA    #$20
        BRA     Z8C47
J8C45   CMPA    #$18
Z8C47   BNE     Z8C7D
        BRA     J8C80
J8C4B   CMPA    #$04
        BRA     Z8C51
J8C4F   CMPA    #$05
Z8C51   BNE     Z8C7D
J8C53   LDAB    M777E
        ANDB    #$0F
        BNE     J8C80
        LDAB    M777E
        LDAA    M00D7
        CMPA    #$05
        BNE     Z8C67
        ORAB    #$20
        BRA     Z8C71
Z8C67   CMPA    #$06
        BNE     Z8C6F
        ORAB    #$40
        BRA     Z8C71
Z8C6F   ORAB    #$80
Z8C71   STAB    M777E
        ANDB    #$E0
        CMPB    #$E0
        BEQ     J8C80
        CLRA
        STAA    M00CD
Z8C7D   CLC
        BRA     Z8C81
J8C80   SEC
Z8C81   RTS
Z8C82   LDAB    M7789
        ANDB    #$0C
        CMPB    #$08
        BEQ     Z8C98
        LDX     #M7DC8
        STX     M00A7
        INCA
        CLRB
        JSR     Z9BD1
        JSR     Z9B87
Z8C98   JSR     Z93D6
        LDAA    M00D3
        CMPA    #$02
        BCC     Z8CE9
        CMPA    #$01
        BEQ     Z8D03
        JSR     Z8ED4
        JSR     Z8D11
        LDAA    M00D3
        CMPA    #$03
        BEQ     Z8CE7
        LDAB    M00D7
        CMPB    #$03
        BCS     Z8CD3
        CMPB    #$04
        BNE     Z8CBF
        LDAB    #$60
        BRA     Z8CDA
Z8CBF   CMPB    #$05
        BNE     Z8CC7
        LDAB    #$61
        BRA     Z8CD8
Z8CC7   CMPB    #$06
        BNE     Z8CCF
        LDAB    #$65
        BRA     Z8CDA
Z8CCF   LDAB    #$66
        BRA     Z8CD8
Z8CD3   LDAA    #$20
        LDAB    M00D7
        MUL
Z8CD8   ADDB    M00CD
Z8CDA   CMPB    M6A16
        BNE     Z8CE9
        JSR     Z92F3
        SUBD    M6A17
        BNE     Z8CE9
Z8CE7   SEC
        RTS
Z8CE9   LDX     #M7DC7
        STX     M00A7
        LDX     #M8F3D
        JSR     Z9BC4
        CLI
Z8CF5   LDAA    #$01
        STAA    M00CE
        LDAA    M777E
        ANDA    #$0F
        STAA    M777E
        CLC
        RTS
Z8D03   CLI
        CLR     >M00CE
        LDAA    M777E
        ANDA    #$0F
        STAA    M777E
        CLC
        RTS
Z8D11   LDAB    M7789
        ANDB    #$0C
        LDAA    M00D7
        CMPA    #$02
        BEQ     Z8D27
        BHI     Z8D2D
        TSTB
        BEQ     Z8D3D
Z8D21   LDAA    #$03
        STAA    M00D3
        BRA     Z8D3D
Z8D27   CMPB    #$04
        BNE     Z8D21
        BRA     Z8D3D
Z8D2D   CMPB    #$08
        BNE     Z8D21
        LDAB    M777E
        ANDB    #$0F
        BEQ     Z8D3D
        ADDB    #$03
        SBA
        BNE     Z8D21
Z8D3D   RTS
Z8D3E   JSR     Z9B4A
        STX     M00A7
        LDX     #M8F8F
        JSR     Z9BC4
Z8D49   JSR     HI_CALL_17
        CMPB    #$02
        BNE     Z8D53
        JMP     Z8EA8
Z8D53   JSR     JMPOFF1
D8D56   FCB     $06,$08,$06,$0A,$02,$00
J8D5C   BRA     Z8D49
J8D5E   CLRA
Z8D5F   LDAB    #$02
Z8D61   LDX     #MA000
Z8D64   DEX
        BNE     Z8D64
        DECB
        BNE     Z8D61
        STAA    M7EE8
        LDX     #M7DC0
        STX     M00A7
        INCA
        CLRB
        JSR     Z9BD1
        JSR     Z9B87
Z8D7A   JSR     HI_CALL_17
        CMPB    #$02
        BNE     Z8D84
        JMP     Z8EA8
Z8D84   CMPB    #$01
        BEQ     Z8DC3
        JSR     JMPOFF1
D8D8B   FCB     $06,$08,$06,$0A,$02,$00
J8D91   BRA     Z8D7A
J8D93   LDAA    M7EE8
        CMPB    #$08
        BEQ     Z8DAF
        INCA
        LDAB    M7789
        ANDB    #$0C
        CMPB    #$04
        BNE     Z8DA8
        CMPA    #$18
        BRA     Z8DAA
Z8DA8   CMPA    #$20
Z8DAA   BCS     Z8DC1
        CLRA
        BRA     Z8DC1
Z8DAF   DECA
        BPL     Z8DC1
        LDAB    M7789
        ANDB    #$0C
        CMPB    #$04
        BNE     Z8DBF
        LDAA    #$17
        BRA     Z8DC1
Z8DBF   LDAA    #$1F
Z8DC1   BRA     Z8D5F
Z8DC3   CLR     >M00D3
        JSR     Z9B4A
        STX     M00A7
        LDX     #M8FA0
        JSR     Z9BC4
        LDX     #M7DC8
        STX     M00A7
        LDAA    M7EE8
        INCA
        CLRB
        JSR     Z9BD1
        JSR     Z9B87
Z8DE1   CLRA
        STAA    M00CD
Z8DE4   JSR     Z93D6
        LDAA    M00D3
        CMPA    #$02
        BCS     Z8DF0
        JMP     Z8EAD
Z8DF0   CMPA    #$01
        BNE     Z8DF7
        JMP     Z8EA8
Z8DF7   JSR     Z8ED4
        JSR     Z8D11
        LDAA    M00D3
        CMPA    #$03
        BNE     Z8E0B
        JSR     Z8EF2
        CLR     >M00D3
        BRA     Z8DE1
Z8E0B   LDAA    #$20
        LDAB    M00D7
        MUL
        ADDB    M7EE8
        CMPB    M6A16
        BEQ     Z8E1B
        JMP     Z8E9C
Z8E1B   JSR     Z92F3
        SUBD    M6A17
        BEQ     Z8E26
        JMP     Z8EAD
Z8E26   JSR     Z8EF2
        LDAB    M7789
        ANDB    #$0C
        BEQ     Z8E4D
        AIM     #$BF,TCSR3
        JSR     Z90E5
        LDX     #M69C1
        STX     M00A9
        LDX     #M6DD7
        STX     M00A7
        JSR     LO_CALL_05
        JSR     LO_CALL_0B
        LDAA    #$01
        STAA    M7791
        BRA     Z8E88
Z8E4D   AIM     #$BF,TCSR3
        LDAB    M7773
        JSR     HI_CALL_19
        JSR     Z90D5
        LDX     #M69C1
        STX     M00A9
        LDX     #M6A67
        STX     M00A7
        JSR     LO_CALL_00
        TST     >M00D7
        BNE     Z8E6E
        JSR     HI_CALL_12
Z8E6E   JSR     LO_CALL_09
        JSR     HI_CALL_05
        LDAA    #$01
        STAA    M7792
        CLR     M7793
        LDD     #M0101
        STD     M776E
        STD     M7770
        OIM     #$40,TCSR3
Z8E88   LDX     #M7DBB
        STX     M00A7
        LDX     #M8FAF
        JSR     Z9BC4
        JSR     HI_CALL_0A
        CLI
        LDAA    #$01
        STAA    M00CE
        RTS
Z8E9C   LDAA    M00CD
        INCA
        STAA    M00CD
        CMPA    #$20
        BEQ     Z8EA8
        JMP     Z8DE4
Z8EA8   CLI
        CLR     >M00CE
        RTS
Z8EAD   JMP     Z8CE9
Z8EB0   CLR     >M00D3
        LDX     #M7DC4
        STX     M00A7
        LDX     #M8F1E
        JMP     Z9BC4
Z8EBE   JSR     HI_CALL_00
        SEI
        JSR     HI_CALL_01
        CLR     >M005A
        LDAB    #$0C
        JSR     LCD_WAIT
        STAB    LCD_CMD
        JSR     HI_CALL_07
        RTS
Z8ED4   LDAA    M6A0A
        STAA    M6A16
        LDAA    M00D7
        BEQ     Z8EEB
        CMPA    #$03
        BCC     Z8EEB
        CMPA    #$02
        BNE     Z8EF1
        LDD     M6A0F
        BRA     Z8EEE
Z8EEB   LDD     M6A0B
Z8EEE   STD     M6A17
Z8EF1   RTS
Z8EF2   LDX     #M7DB4
        STX     M00A7
        LDAB    #$07
        JSR     Z9CD8
        LDX     #M7DB6
        STX     M00A7
        LDX     #M8F0E
        LDAB    M00D7
        ASLB
        ABX
        LDX     ,X
        JSR     Z9BC4
        RTS
M8F0E   FDB     M80D9_via_dvec_8f0e,M80D4_via_dvec_8f10
        FDB     M8FC0_via_dvec_8f12,M9026_via_dvec_8f14
        FDB     M902B_via_dvec_8f16,M9030_via_dvec_8f18
        FDB     M9035_via_dvec_8f1a,M903A_via_dvec_8f1c
M8F1E   FCC     "ready? "
        FCB     $00
M8F26   FCC     " Verify"
        FCB     $00
M8F2E   FCC     " Save"
        FCB     $00
M8F34_via_dvec_8a6e FCC     " INT    "
        FCB     $00
M8F3D   FCC     " ERR"
        FCB     $00
M8F42   FCC     " Verify Tape"
        FCB     $00
M8F4F   FCC     " Tape to INT"
        FCB     $00
M8F5C   FCC     "Verify Completed"
        FCB     $00
M8F6D   FCC     "Load all  ready?"
        FCB     $00
M8F7E   FCC     "Load    ready?  "
        FCB     $00
M8F8F   FCC     "Tape ?? to BUFF?"
        FCB     $00
M8FA0   FCC     " Search Tape  "
        FCB     $00
M8FAF   FCC     " Load Completed "
        FCB     $00
M8FC0_via_dvec_8f12 FCC     "(PFM)"
        FCB     $00
M8FC6   FCC     " Tape to PFM"
        FCB     $00
M8FD3_via_dvec_8a72 FCC     " PFM    "
        FCB     $00
M8FDC   FCC     "to Tape"
        FCB     $00
M8FE4   FCC     " Tape to "
        FCB     $00
M8FEE_via_dvec_8a74 FCC     " PGMCNG "
        FCB     $00
M8FF7_via_dvec_8a76 FCC     " S"
Z8FF9   FCC     "YS"
Z8FFB   FCC     "TEM "
        FCB     $00
M9000_via_dvec_8a7a FCC     " EFFECT "
        FCB     $00
M9009_via_dvec_8a7c FCC     " MICTUN "
        FCB     $00
M9012_via_dvec_8c2a FCC     "ALL"
        FCB     $00
M9016_via_dvec_8c2c FCC     "SYS"
        FCB     $00
M901A_via_dvec_8c2e FCC     "PC "
        FCB     $00
M901E_via_dvec_8c30 FCC     "EF "
        FCB     $00
M9022_via_dvec_8c32 FCC     "MC "
        FCB     $00
M9026_via_dvec_8f14 FCC     "(AL)"
        FCB     $00
M902B_via_dvec_8f16 FCC     "(SY)"
        FCB     $00
M9030_via_dvec_8f18 FCC     "(PC)"
        FCB     $00
M9035_via_dvec_8f1a FCC     "(EF)"
        FCB     $00
M903A_via_dvec_8f1c FCC     "(MC)"
        FCB     $00
Z903F   LDX     #M69C1
        STX     M0079
        LDAB    M00D7
        JSR     JMPOFFB
        FCB     $08,$07,$11,$27,$31,$49,$5A,$68
J9051   LDAB    #$4E
        MUL
        ADDD    #M6001
        STD     M0077
        JMP     Z9196
J905C   LDAB    #$4C
        MUL
Z905F   ADDD    #M6E45
        STD     M0077
        LDAB    #$49
        JSR     Z91E9
        LDX     M0079
        INX
        STX     M0079
        LDAB    #$03
        JMP     Z91E9
J9073   LDAB    M6A15
        BEQ     J9097
        CMPB    #$01
        BEQ     J90A9
        BRA     J90B8
J907E   LDX     #M7565
        STX     M0077
        LDAB    #$0B
        JSR     Z91E9
        LDX     #M7740
        STX     M0077
        LDAB    #$10
        JSR     Z91E9
        LDAB    #$2E
        JMP     Z91FB
J9097   LDAB    #$40
        MUL
        ADDD    #M7571
        STD     M0077
Z909F   LDAB    #$40
        JSR     Z91E9
        LDAB    #$09
        JMP     Z91FB
J90A9   LDX     #M75F1
        STX     M0077
        LDAB    #$37
        JSR     Z91E9
        LDAB    #$12
        JMP     Z91FB
J90B8   TSTA
        BNE     Z90CA
        LDX     #M7628
        STX     M0077
        LDAB    #$18
        JSR     Z91E9
        LDAB    #$31
        JMP     Z91FB
Z90CA   DECA
        LDAB    #$40
        MUL
        ADDD    #M7640
        STD     M0077
        BRA     Z909F
Z90D5   LDX     #M6A0B
        STX     M0077
        LDX     #M6A04
        STX     M0079
        LDAB    #$0B
        JSR     Z91E9
        RTS
Z90E5   LDX     #M6A0B
        STX     M0077
        LDX     #M6A0A
        STX     M0079
        LDAB    #$03
        JSR     Z91E9
        RTS
Z90F5   LDX     #M69C1
        STX     M0077
        LDAB    M00D7
        JSR     JMPOFFB
        FCB     $08,$07,$21,$4D,$37,$4B,$5C,$66
J9107   LDAB    #$4E
        MUL
        ADDD    #M6001
        STD     M0079
        JSR     Z91E7
        TST     >M00D7
        BEQ     Z9189
        LDX     #M6A0B
        STX     M0077
        LDAB    #$0B
        JSR     Z91E9
        RTS
J9122   LDAB    #$4C
        MUL
        ADDD    #M6E45
        STD     M0079
        LDAB    #$49
        JSR     Z91E9
        LDX     #M6A0B
        STX     M0077
        LDAB    #$03
        JSR     Z91E9
        RTS
J913A   LDX     #M7565
        STX     M0079
        LDAB    #$0B
        JSR     Z91E9
        LDX     #M7740
        STX     M0079
        LDAB    #$10
        JSR     Z91E9
        RTS
J914F   CMPA    #$02
        BCC     Z9160
        LDAB    #$40
        MUL
        ADDD    #M7571
        STD     M0079
        LDAB    #$40
        JSR     Z91E9
Z9160   RTS
J9161   LDX     #M75F1
        STX     M0079
        LDAB    #$37
        JSR     Z91E9
        RTS
J916C   TSTA
        BNE     Z917A
        LDX     #M7628
        STX     M0079
        LDAB    #$18
        JSR     Z91E9
        RTS
Z917A   DECA
        LDAB    #$40
        MUL
        ADDD    #M7640
        STD     M0079
        LDAB    #$40
        JSR     Z91E9
        RTS
Z9189   LDAB    #$0B
Z918B   LDX     M0079
        CLR     ,X
        INX
        STX     M0079
        DECB
        BNE     Z918B
        RTS
Z9196   CLRB
Z9197   LDX     M0077
        LDAA    ,X
        CMPB    #$43
        BCS     Z91B9
        CMPB    #$46
        BCS     Z91B5
        CMPB    #$49
        BEQ     Z91D1
        BCS     Z91B1
        CMPB    #$50
        BNE     Z91CE
        ANDA    #$0F
        BRA     Z91CE
Z91B1   LDAA    #$32
        BRA     Z91D1
Z91B5   LDAA    #$63
        BRA     Z91D1
Z91B9   CMPB    #$30
        BNE     Z91CE
        TIM     #$04,$00,X
        BNE     Z91C8
        ANDA    #$FB
        ORAA    #$02
        BRA     Z91CC
Z91C8   ORAA    #$04
        ANDA    #$FD
Z91CC   ANDA    #$0F
Z91CE   INX
        STX     M0077
Z91D1   LDX     M0079
        STAA    ,X
        INX
        STX     M0079
        INCB
        TST     M777E
        BNE     Z91E2
        CMPB    #$55
        BRA     Z91E4
Z91E2   CMPB    #$49
Z91E4   BNE     Z9197
        RTS
Z91E7   LDAB    #$43
Z91E9   LDX     M0077
        LDAA    ,X
        INX
        STX     M0077
        LDX     M0079
        STAA    ,X
        INX
        STX     M0079
        DECB
        BNE     Z91E9
        RTS
Z91FB   CLRA
Z91FC   LDX     M0079
        STAA    ,X
        INX
        STX     M0079
        DECB
        BNE     Z91FC
        RTS
Z9207   LDX     #M69C1
        STX     M0077
        LDAA    M00CD
        LDAB    M00D7
        JSR     JMPOFFB
        FCB     $35,$34,$06,$72,$A6,$70,$82,$8A
J921B   LDAB    #$4C
        MUL
        ADDD    #M6E45
        STD     M0079
        CLRB
Z9224   LDX     M0077
        LDAA    ,X
        INX
        STX     M0077
        LDX     M0079
        SUBA    ,X
        BNE     Z9287
        INX
        STX     M0079
        INCB
        CMPB    #$49
        BCS     Z9224
        BHI     Z9242
        LDX     #M6A0B
        STX     M0077
        BRA     Z9224
Z9242   CMPB    #$4C
        BCS     Z9224
        BRA     Z9287
J9248   LDAB    #$4E
        MUL
        ADDD    #M6001
        STD     M0079
        CLRB
Z9251   LDX     M0077
        LDAA    ,X
        INX
        STX     M0077
        LDX     M0079
        CMPB    #$30
        BNE     Z9266
        EORA    ,X
        ANDA    #$0D
        BNE     Z9287
        BRA     Z926A
Z9266   SUBA    ,X
        BNE     Z9287
Z926A   INX
        STX     M0079
        INCB
        CMPB    #$43
        BCS     Z9251
        BHI     Z9283
        LDAA    M00D7
        BEQ     Z9287
        CMPA    #$01
        BNE     Z9287
        LDX     #M6A0B
        STX     M0077
        BRA     Z9251
Z9283   CMPB    #$4E
        BNE     Z9251
Z9287   RTS
J9288   CMPA    #$02
        BCC     Z9298
        LDAB    #$40
        MUL
        ADDD    #M7571
        STD     M0079
        LDAB    #$40
        BRA     Z92DE
Z9298   CLRB
        BRA     Z9287
J929B   LDX     #M75F1
        STX     M0079
        LDAB    #$37
        BRA     Z92DE
J92A4   TSTA
        BNE     Z92B0
        LDX     #M7628
        STX     M0079
        LDAB    #$18
        BRA     Z92DE
Z92B0   DECA
        LDAB    #$40
        MUL
        ADDD    #M7640
        STD     M0079
        LDAB    #$40
        BRA     Z92DE
J92BD   LDX     #M7565
        STX     M0079
        LDAB    #$0B
Z92C4   LDX     M0077
        LDAA    ,X
        INX
        STX     M0077
        LDX     M0079
        SUBA    ,X
        BNE     Z9287
        INX
        STX     M0079
        DECB
        BNE     Z92C4
        LDX     #M7740
        STX     M0079
        LDAB    #$10
Z92DE   LDX     M0077
        LDAA    ,X
        INX
        STX     M0077
        LDX     M0079
        SUBA    ,X
        BNE     Z9287
        INX
        STX     M0079
        DECB
        BNE     Z92DE
        BRA     Z9287
Z92F3   LDX     #M69C1
        LDAB    M00D7
        BEQ     Z92FE
        CMPB    #$03
        BCS     Z9302
Z92FE   LDAB    #$4A
        BRA     Z930C
Z9302   CMPB    #$01
        BNE     Z930A
        LDAB    #$56
        BRA     Z930C
Z930A   LDAB    #$4E
Z930C   STAB    M007B
        CLRA
        CLRB
Z9310   ADDB    ,X
        ADCA    #$00
        INX
        DEC     >M007B
        BNE     Z9310
        RTS
Z931B   LDX     #M69C1
        LDAB    M00D7
        CMPB    #$01
        BNE     Z9328
        LDAB    #$58
        BRA     Z9332
Z9328   CMPB    #$02
        BNE     Z9330
        LDAB    #$50
        BRA     Z9332
Z9330   LDAB    #$4C
Z9332   STAB    M00CF
        BSR     Z934A
        LDAB    #$3C
        BRN     Z933A
Z933A   NOP
Z933B   LDAA    ,X
        BSR     Z939D
        LDAB    #$3B
        PSHX
        PULX
        INX
        DEC     >M00CF
        BNE     Z933B
        RTS
Z934A   PSHA
        PSHB
        PSHX
        TST     >M00CD
        BNE     Z9357
        LDX     #M1770
        BRA     Z935A
Z9357   LDX     #M012C
Z935A   LDAB    #$1E
        BRN     Z935E
Z935E   NOP
        DES
        BSR     Z936A
        INS
        DEX
        BNE     Z935A
        PULX
        PULB
        PULA
        RTS
Z936A   LDAA    #$01
        BSR     Z9383
        BSR     Z9381
        BSR     Z9381
        BSR     Z9381
        RTS
Z9375   LDAA    #$01
        BSR     Z9383
        LDAB    #$41
        PSHX
        PULX
        NOP
        BSR     Z9383
        RTS
Z9381   LDAB    #$20
Z9383   TIM     #$20,PORT5
        BEQ     Z9393
        DECB
        BNE     Z9383
        BRN     Z938D
Z938D   NOP
        EORA    #$01
        STAA    PORT2
        RTS
Z9393   LDAA    #$01
        STAA    M00D3
        TSX
        LDAB    #$0B
        ABX
        TXS
        RTS
Z939D   PSHA
        PSHB
        PSHX
        LDX     #TCSR1
        PSHA
        BSR     Z9375
        PULA
        BRN     Z93A9
Z93A9   BRN     Z93AB
Z93AB   NOP
Z93AC   NOP
        NOP
        RORA
        PSHA
        BCS     Z93B8
        LDAB    #$3F
        BSR     Z9375
        BRA     Z93BE
Z93B8   LDAB    #$1D
        BSR     Z936A
        BRA     Z93BE
Z93BE   PULA
        DEX
        BNE     Z93AC
        LDAB    #$1D
        PSHX
        PULX
        NOP
        DES
        BSR     Z936A
        LDAB    #$1E
        PSHX
        PULX
        NOP
        BSR     Z936A
        INS
        PULX
        PULB
        PULA
        RTS
Z93D6   CLR     >M00D7
        LDX     #M69C1
        JSR     Z9467
        BCS     Z93E4
        JMP     Z9466
Z93E4   JSR     Z9481
        BCC     Z9466
        LDAA    #$80
        STAA    M00D2
        JSR     Z94DE
        BCC     Z9466
        LDAA    M00D2
        STAA    ,X
        INX
Z93F7   JSR     Z94AD
        BCC     Z9466
        LDAA    M00D2
        STAA    ,X
        INX
        LDAB    M00D7
        BEQ     Z941F
        CMPB    #$04
        BCC     Z941F
        CMPB    #$01
        BNE     Z9414
        CPX     #M6A19
        BNE     Z93F7
        BRA     Z9465
Z9414   CMPB    #$02
        BNE     Z945E
        CPX     #M6A11
        BNE     Z93F7
        BRA     Z9465
Z941F   CPX     #M6A0D
        BNE     Z93F7
        LDAA    M6A0A
        ANDA    #$E0
        BEQ     Z9465
        CMPA    #$20
        BNE     Z9433
        LDAB    #$01
        BRA     Z945A
Z9433   CMPA    #$40
        BNE     Z943B
        LDAB    #$02
        BRA     Z945A
Z943B   LDAA    M6A0A
        CMPA    #$60
        BNE     Z9446
        LDAB    #$04
        BRA     Z9456
Z9446   CMPA    #$65
        BEQ     Z9450
        BHI     Z9454
        LDAB    #$05
        BRA     Z9456
Z9450   LDAB    #$06
        BRA     Z9456
Z9454   LDAB    #$07
Z9456   STAB    M00D7
        BRA     Z9465
Z945A   STAB    M00D7
        BRA     Z93F7
Z945E   LDAB    #$02
        STAB    M00D3
        CLC
        BRA     Z9466
Z9465   SEC
Z9466   RTS
Z9467   CLRA
        STAA    M00D1
Z946A   BSR     Z9493
        BCC     Z9480
        BSR     Z9494
        BCC     Z9480
        CMPB    #$38
        BCC     Z9467
        CMPB    #$11
        BCS     Z9467
        INC     >M00D1
        BNE     Z946A
        SEC
Z9480   RTS
Z9481   CLR     >M00D4
Z9484   BSR     Z9493
        BCC     Z9492
        TBA
        ADDA    M00D4
        STAB    M00D4
        CMPA    #$41
        BCS     Z9484
        SEC
Z9492   RTS
Z9493   CLRB
Z9494   TIM     #$20,PORT5
        BEQ     Z94A7
        INCB
        LDAA    PORT2
        ANDA    #$02
        EORA    M00D5
        BEQ     Z9494
        EIM     #$02,M00D5
        SEC
        RTS
Z94A7   LDAA    #$01
        STAA    M00D3
        CLC
        RTS
Z94AD   LDAA    #$80
        STAA    M00D2
        BSR     Z951E
        BCC     Z94F4
Z94B5   CLRB
Z94B6   INCB
        BEQ     Z94F4
        TIM     #$20,PORT5
        BEQ     Z94F0
        LDAA    PORT2
        ANDA    #$02
        EORA    M00D5
        BEQ     Z94B6
Z94C6   INCB
        BEQ     Z94F4
        TIM     #$20,PORT5
        BEQ     Z94F0
        LDAA    PORT2
        ANDA    #$02
        EORA    M00D5
        BNE     Z94C6
        CMPB    #$66
        BCC     Z94F4
        CMPB    #$33
        BCS     Z94B5
Z94DE   BSR     Z94FA
        BCC     Z94F4
        LDAA    M00D6
        CMPA    #$04
        BCC     Z94F4
        RORA
        RORA
        ROR     >M00D2
        BCC     Z94DE
        RTS
Z94F0   LDAA    #$01
        BRA     Z94F6
Z94F4   LDAA    #$02
Z94F6   STAA    M00D3
        CLC
        RTS
Z94FA   LDAA    PORT2
        ANDA    #$02
        STAA    M00D0
        CLR     >M00D6
        LDAB    #$28
Z9505   LDAA    PORT2
        ANDA    #$02
        EORA    M00D0
        BEQ     Z951A
        INC     >M00D6
        EIM     #$02,M00D0
Z9513   DECB
        BNE     Z9505
        LDAA    M00D0
        BRA     Z9527
Z951A   PSHX
        PULX
        BRA     Z9513
Z951E   CLRB
Z951F   INCB
        TSTB
        BEQ     Z9538
        LDAA    PORT2
        ANDA    #$02
Z9527   EORA    M00D5
        BEQ     Z951F
Z952B   INCB
        TSTB
        BEQ     Z9538
        LDAA    PORT2
        ANDA    #$02
        EORA    M00D5
        BNE     Z952B
        SEC
Z9538   RTS
LO_CALL_02 LDAA    #$00
        STAA    M7772
        CLR     M776C
        LDD     #M0101
        STD     M776E
        STD     M7770
        LDAA    #$40
        STAA    M7565
        JSR     HI_CALL_00
        JSR     HI_CALL_01
        CLR     >M005A
        JSR     Z9998
        JSR     HI_CALL_1A
        JSR     Z9B4E
        LDAA    M00A6
        CMPA    #$03
        BNE     Z9583
        LDAA    #$04
        STAA    M7772
        JSR     Z98BA
        LDAA    #$04
        STAA    M00D8
        CLR     >M00D9
        JSR     Z96C4
        SEI
Z957A   BRN     Z957A
        JSR     HI_CALL_08
        CLI
        JMP     Z966E
Z9583   LDX     #M7DAB
        STX     M00A7
        LDX     #M9774
        JSR     Z9B5E
        LDAA    #$FE
        STAA    M7D63
        CLR     M7D53
        CLR     M776D
        CLR     M7D6B
        CLR     M7F99
        AIM     #$BF,TCSR3
        AIM     #$F7,TCSR1
        AIM     #$FE,RP5CR
        LDAA    #$04
        STAA    M0058
        LDAA    #$45
        STAA    M0052
        LDAA    #$30
        STAA    M00F1
        LDAB    #$00
        JSR     HI_CALL_1D
        OIM     #$01,RP5CR
        OIM     #$08,TCSR1
        OIM     #$40,TCSR3
        CLR     M7933
        CLRA
        LDAB    #$30
        BSR     Z961F
        CLRA
        LDX     #M9632
        BSR     Z9604
        LDAA    #$80
        LDX     #M9637
        BSR     Z9604
        CLRA
        LDX     #M963C
        BSR     Z9604
        LDAA    #$80
        LDX     #Z9642
        BSR     Z9604
        AIM     #$BF,TCSR3
        AIM     #$F7,TCSR1
        LDAA    #$04
        STAA    M0058
        LDAA    #$45
        STAA    M0051
        LDAB    #$00
        JSR     HI_CALL_1C
        OIM     #$08,TCSR1
        OIM     #$40,TCSR3
        LDAA    #$04
        STAA    M7772
        BRA     Z9648
Z9604   PSHA
        PSHX
        LDX     #M7DB6
        STX     M00A7
        PULX
        JSR     Z9BC4
        PULA
        BSR     Z961D
Z9612   JSR     HI_CALL_17
        CMPB    #$01
        BNE     Z9612
        JSR     Z98BA
        RTS
Z961D   LDAB    #$20
Z961F   SEI
Z9620   BRN     Z9620
Z9622   TST     OPZ_R1
        BMI     Z9622
        STAB    OPZ_R0
Z962A   BRN     Z962A
        NOP
        STAA    OPZ_R1
        CLI
        RTS
M9632   FCC     "1(L)"
        FCB     $00
M9637   FCC     "2(R)"
        FCB     $00
M963C   FCC     "HP(L)"
        FCB     $00
Z9642   FCC     "HP(R)"
        FCB     $00
Z9648   JSR     Z9B4E
        SEI
Z964C   BRN     Z964C
        CLRA
        STAA    TCSR1
        STAA    TCSR2
        LDAA    #$02
        STAA    TCSR3
        AIM     #$FE,RP5CR
        JSR     Z96C4
        JSR     Z9700
        JSR     Z97E2
        JSR     HI_CALL_08
        CLI
        JSR     Z978D
        LDAA    #$52
        STAA    TCSR3
Z966E   LDAA    M00D8
        BNE     Z9677
        JSR     Z9852
        BRA     Z96A4
Z9677   CMPA    #$01
        BNE     Z9680
        JSR     Z9893
        BRA     Z96A4
Z9680   CMPA    #$02
        BNE     Z9689
        JSR     Z9883
        BRA     Z96A4
Z9689   CMPA    #$03
        BNE     Z9692
        JSR     Z98C6
        BRA     Z96A4
Z9692   CMPA    #$04
        BNE     Z969B
        JSR     Z9907
        BRA     Z966E
Z969B   CMPA    #$05
        BNE     Z96A4
        JSR     Z9914
        BRA     Z96AC
Z96A4   JSR     HI_CALL_17
        JSR     Z96AD
        BRA     Z966E
Z96AC   RTS
Z96AD   TSTB
        BEQ     Z96B4
        CMPB    #$01
        BEQ     Z96B5
Z96B4   RTS
Z96B5   LDAA    M00D8
        CMPA    #$05
        BHI     Z96AD
        INC     >M00D8
        CLR     >M00D9
        JMP     Z9B4E
Z96C4   CLR     M7773
        CLR     M7779
        LDAA    #$01
        STAA    M776C
        STAA    M7569
        STAA    M756A
        STAA    M7568
        STAA    M756C
        LDAA    #$10
        STAA    M7566
        CLR     M7567
        CLR     M756B
        CLR     M756F
        LDAB    #$40
        LDAA    #$0A
Z96ED   COMA
        JSR     LCD_WAIT
        STAB    LCD_CMD
        JSR     LCD_WAIT
        STAA    LCD_DATA
        INCB
        CMPB    #$48
        BNE     Z96ED
        RTS
Z9700   LDX     #RAM
        STX     M00A9
        LDX     #M00F8
        STX     M00A7
Z970A   BSR     Z9718
        BSR     Z9744
        BSR     Z9723
        LDX     M00A9
        CPX     #M7FE0
        BCS     Z970A
        RTS
Z9718   LDX     M00A9
        STX     M00DA
        LDX     M00A7
        STX     M00DC
        BSR     Z9733
        RTS
Z9723   LDX     M00A7
        STX     M00DA
        LDX     M00A9
        STX     M00DC
        BSR     Z9733
        LDX     M00A9
        ABX
        STX     M00A9
        RTS
Z9733   CLRB
Z9734   LDX     M00DA
        ABX
        LDAA    ,X
        LDX     M00DC
        ABX
        STAA    ,X
        INCB
        CMPB    #$08
        BNE     Z9734
        RTS
Z9744   CLRB
Z9745   LDX     M00A9
        ABX
        LDAA    #$55
        BSR     Z9756
        LDAA    #$AA
        BSR     Z9756
        INCB
        CMPB    #$08
        BNE     Z9745
        RTS
Z9756   STAA    ,X
        CMPA    ,X
        BNE     Z975D
        RTS
Z975D   LDAA    #$0E
        PSHA
        LDX     #M977E
        JSR     Z9BBD
        PULA
        LDX     #M7DAE
        STX     M00A7
        JSR     Z9BD1
        JSR     Z9B87
Z9772   BRA     Z9772
M9774   FCC     "Check LVL"
        FCB     $00
M977E   FCC     " IC   is NG ! "
        FCB     $00
Z978D   LDAB    #$0A
Z978F   LDX     #M7E0C
        ABX
        CLR     ,X
        DECB
        BNE     Z978F
        CLRB
Z9799   LDX     #Z97DC
        ABX
        LDAA    ,X
        BEQ     Z97A7
        JSR     HI_CALL_0C
        INCB
        BRA     Z9799
Z97A7   LDAB    #$01
        JSR     Z98BC
Z97AC   LDX     #Z97DC
        STX     M00A9
        LDX     #M7E0C
        STX     M00A7
Z97B6   LDX     M00A9
        ABX
        LDAA    ,X
        BEQ     Z97C7
        LDX     M00A7
        ABX
        CMPA    ,X
        BNE     Z97C8
        INCB
        BRA     Z97B6
Z97C7   RTS
Z97C8   LDX     #M97D0
        JSR     Z9BBD
Z97CE   BRA     Z97CE
M97D0   FCC     "ERROR MIDI!"
        FCB     $00
Z97DC   FCC     "TX81Z"
        FCB     $00
Z97E2   CLRB
Z97E3   EIM     #$01,PORT2
        BSR     Z981B
        LDAA    PORT2
        ANDA    #$02
        STAA    M00D0
Z97EE   DECB
        BNE     Z97E3
        LDAB    #$80
Z97F3   EIM     #$01,PORT2
        BSR     Z9824
        DECB
        BNE     Z97F3
        LDAA    M00DE
        CMPA    #$7E
        BCS     Z9806
        CMPA    #$83
        BCC     Z9806
Z9805   RTS
Z9806   LDX     #M9845
        JSR     Z9BBD
        LDAA    M00A6
        CMPA    #$02
Z9810   BNE     Z9810
Z9812   JSR     HI_CALL_17
        CMPB    #$02
        BNE     Z9812
        BRA     Z9805
Z981B   LDX     #M009F
        NOP
        NOP
Z9820   DEX
        BNE     Z9820
        RTS
Z9824   LDX     #PORT5
Z9827   LDAA    PORT2
        ANDA    #$02
        EORA    M00D0
        BEQ     Z9838
        EORA    M00D0
        STAA    M00D0
        INC     >M00DE
        BRA     Z983E
Z9838   PSHX
        PULX
Z983A   BRN     Z983A
Z983C   BRN     Z983C
Z983E   DEX
        BNE     Z9827
        PSHX
        PULX
        NOP
        RTS
M9845   FCC     "ERROR CASS.!"
        FCB     $00
Z9852   LDX     #Z9872
        JSR     Z9BBD
        LDAA    #$AA
        JSR     HI_CALL_0C
        LDAA    #$FF
        JSR     HI_CALL_0C
        CLRA
        JSR     HI_CALL_0C
        LDAA    #$55
        JSR     HI_CALL_0C
        LDX     #MA000
Z986E   DEX
        BNE     Z986E
        RTS
Z9872   FCC     "Check MIDI THRU "
        FCB     $00
Z9883   CLRA
        CLRB
Z9885   LDX     #M7DAB
        ABX
        STAA    ,X
        INCB
        CMPB    #$20
        BNE     Z9885
        JMP     Z9B87
Z9893   LDAA    M00D9
        ANDA    #$01
        BNE     Z98B5
        LDAA    #$20
        CLRB
Z989C   LDX     #M7DAB
        ABX
        STAA    ,X
        INCB
        CMPB    #$20
        BNE     Z989C
        JSR     Z9B87
        LDAA    M00D9
        CMPA    #$05
        BCC     Z98C5
        INCA
        STAA    M00D9
        BRA     Z98BA
Z98B5   LDAA    #$FF
        CLRB
        BRA     Z989C
Z98BA   LDAB    #$1E
Z98BC   LDX     #M1194
Z98BF   DEX
        BNE     Z98BF
        DECB
        BNE     Z98BC
Z98C5   RTS
Z98C6   TST     >M00D9
        BNE     Z98F9
        LDAA    #$01
        STAA    M776C
        STAA    M7569
        STAA    M00D9
        LDX     #M98FA
        JSR     Z9BBD
        CLRB
Z98DC   LDAA    #$80
Z98DE   ANDA    #$F7
        STAA    PORT6
        LSRA
        PSHB
        LDAB    #$1E
        JSR     Z98BC
        PULB
        INCB
        CMPB    #$04
        BEQ     Z98DC
        CMPB    #$08
        BNE     Z98DE
        LDAA    #$F0
        ANDA    #$F7
        STAA    PORT6
Z98F9   RTS
M98FA   FCC     "Check LED1-4"
        FCB     $00
Z9907   BRN     Z9907
Z9909   BRN     Z9909
        INC     >M00D8
        CLR     >M00D9
        JMP     Z9B4E
Z9914   TST     >M00D9
        BNE     Z9922
        CLR     >M00DA
        LDX     #M998C
        JSR     Z9BBD
Z9922   LDAA    M00D9
        INCA
        CLRB
        LDX     #M7DB7
        STX     M00A7
        JSR     Z9BD1
        JSR     Z9B87
        JSR     HI_CALL_17
        TSTB
        BNE     Z993C
        CLR     >M00DA
Z993A   BRA     Z9922
Z993C   CMPB    #$03
        BCS     Z997C
        CMPB    #$04
        BCS     Z9981
        BEQ     Z9922
        CMPB    #$0A
        BCS     Z9984
        CMPB    #$0D
        BCS     Z9988
        BRA     Z9922
Z9950   CMPB    M00D9
        BEQ     Z995A
        LDAB    #$01
        STAB    M00DA
        BRA     Z9922
Z995A   TST     >M00DA
        BEQ     Z996C
        DEC     >M00D9
        TST     >M00D9
Z9965   BMI     Z9965
        CLR     >M00DA
        BRA     Z9922
Z996C   LDAB    #$01
        STAB    M00DA
        INC     >M00D9
        LDAB    M00D9
        CMPB    #$0B
        BNE     Z9922
        JMP     hdlr_RST
Z997C   COMB
        SUBB    #$F7
        BRA     Z9950
Z9981   CLRB
        BRA     Z9950
Z9984   SUBB    #$04
        BRA     Z9950
Z9988   SUBB    #$02
        BRA     Z9950
M998C   FCC     "Push Switch"
        FCB     $00
Z9998   JSR     Z8741
        JSR     Z878B
        LDX     #M99C9
        STX     M00A9
        LDAB    #$37
        LDX     #M75F1
        JSR     Z86B5
        CLRB
        LDX     #M7571
Z99AF   STAB    ,X
        INCB
        INX
        CPX     #M75F1
        BNE     Z99AF
        LDX     #M80EF
        STX     M00A9
        LDAB    #$10
        LDX     #M7740
        JSR     Z86B5
        JSR     Z9A00
        RTS
M99C9   FCB     $08,$18,$00,$49,$00,$00,$19,$10,$13,$18,$31,$10,$13
        FCB     $15,$18,$11,$15,$18,$31,$10,$13,$18,$31,$0F,$14,$18
        FCB     $31,$10
Z99E5   FCB     $13,$15,$18,$10,$13,$15,$18,$10,$13,$18,$31,$10,$13
        FCB     $15,$18,$0F,$14,$18,$31,$10,$13,$15,$18,$0F,$12,$14
        FCB     $18
Z9A00   LDAA    M778A
        PSHA
        LDAA    M7789
        PSHA
        LDAB    #$01
        STAB    M778A
        LDAB    #$01
        STAB    M7789
        CLRA
        JSR     HI_CALL_02
        LDAB    #$03
        STAB    M7789
        CLRA
        JSR     HI_CALL_02
        PULA
        STAA    M7789
        PULA
        STAA    M778A
        JSR     HI_CALL_03
        RTS
HI_CALL_00 PSHB
        LDAB    #$00
        JMP     Z9AC6
HI_CALL_01 PSHB
        LDAB    #$01
        JMP     Z9AC6
HI_CALL_02 PSHB
        LDAB    #$02
        JMP     Z9AC6
HI_CALL_03 PSHB
        LDAB    #$03
        JMP     Z9AC6
HI_CALL_04 PSHB
        LDAB    #$04
        JMP     Z9AC6
HI_CALL_05 PSHB
        LDAB    #$05
        JMP     Z9AC6
HI_CALL_06 PSHB
        LDAB    #$06
        JMP     Z9AC6
HI_CALL_07 PSHB
        LDAB    #$07
        BRA     Z9AC6
HI_CALL_08 PSHB
        LDAB    #$08
        BRA     Z9AC6
HI_CALL_09 PSHB
        LDAB    #$09
        BRA     Z9AC6
HI_CALL_0A PSHB
        LDAB    #$0A
        BRA     Z9AC6
HI_CALL_0B PSHB
        LDAB    #$0B
        BRA     Z9AC6
HI_CALL_0C PSHB
        LDAB    #$0C
        BRA     Z9AC6
HI_CALL_0D PSHB
        LDAB    #$0D
        BRA     Z9AC6
HI_CALL_0E PSHB
        LDAB    #$0E
        BRA     Z9AC6
HI_CALL_0F PSHB
        LDAB    #$0F
        BRA     Z9AC6
HI_CALL_10 PSHB
        LDAB    #$10
        BRA     Z9AC6
HI_CALL_11 PSHB
        LDAB    #$11
        BRA     Z9AC6
HI_CALL_12 PSHB
        LDAB    #$12
        BRA     Z9AC6
HI_CALL_13 PSHB
        LDAB    #$13
        BRA     Z9AC6
HI_CALL_14 PSHB
        LDAB    #$14
        BRA     Z9AC6
HI_CALL_15 PSHB
        LDAB    #$15
        BRA     Z9AC6
HI_CALL_16 PSHB
        LDAB    #$16
        BRA     Z9AC6
HI_CALL_17 PSHB
        LDAB    #$17
        BRA     Z9AC6
HI_CALL_18 PSHB
        LDAB    #$18
        BRA     Z9AC6
HI_CALL_19 PSHB
        LDAB    #$19
        BRA     Z9AC6
HI_CALL_1A PSHB
        LDAB    #$1A
        BRA     Z9AC6
HI_CALL_1B PSHB
        LDAB    #$1B
        BRA     Z9AC6
HI_CALL_1C PSHB
        LDAB    #$1C
        BRA     Z9AC6
HI_CALL_1D PSHB
        LDAB    #$1D
Z9AC6   STAB    XROM
        PULB
        JSR     XROM_CALL1
        RTS
Z9ACD   CLRB
Z9ACE   PSHB
        LDAA    ,X
        CMPB    #$30
        BNE     Z9AE6
        TIM     #$04,$00,X
        BNE     Z9AE0
        ANDA    #$FB
        ORAA    #$02
        BRA     Z9AE4
Z9AE0   ORAA    #$04
        ANDA    #$FD
Z9AE4   ANDA    #$0F
Z9AE6   PSHX
        ANDA    #$7F
        TAB
        ADDB    M00C5
        STAB    M00C5
        JSR     HI_CALL_0C
        PULX
        INX
        PULB
        INCB
        CMPB    #$43
        BNE     Z9ACE
        PSHX
Z9AFA   LDAA    #$63
        PSHB
        TAB
        ADDB    M00C5
        STAB    M00C5
        JSR     HI_CALL_0C
        PULB
        INCB
        CMPB    #$46
        BNE     Z9AFA
Z9B0B   LDAA    #$32
        PSHB
        TAB
        ADDB    M00C5
        STAB    M00C5
        JSR     HI_CALL_0C
        PULB
        INCB
        CMPB    #$49
        BNE     Z9B0B
        PULX
Z9B1D   PSHB
        LDAA    ,X
        CMPB    #$4F
        BNE     Z9B26
        ANDA    #$0F
Z9B26   PSHX
        ANDA    #$7F
        TAB
        ADDB    M00C5
        STAB    M00C5
        JSR     HI_CALL_0C
        PULX
        INX
        PULB
        INCB
        CMPB    #$54
        BNE     Z9B1D
Z9B39   CLRA
        PSHB
        TAB
        ADDB    M00C5
        STAB    M00C5
        JSR     HI_CALL_0C
        PULB
        INCB
        CMPB    #$80
        BNE     Z9B39
        RTS
Z9B4A   LDAA    #$10
        BRA     Z9B50
Z9B4E   LDAA    #$20
Z9B50   LDX     #M7DCB
Z9B53   PSHA
        LDAA    #$20
        DEX
        STAA    ,X
        PULA
        DECA
        BNE     Z9B53
        RTS
Z9B5E   LDAB    ,X
        BMI     Z9B6C
        CMPB    #$20
        BCC     Z9B67
        RTS
Z9B67   BSR     Z9B77
        INX
        BRA     Z9B5E
Z9B6C   PSHX
        LDX     #MABF0
        ABX
        BSR     Z9B5E
        PULX
        INX
        BRA     Z9B5E
Z9B77   PSHX
        LDX     M00A7
        STAB    ,X
        INX
        STX     M00A7
        PULX
        RTS
LCD_WAIT TST     LCD_CMD
        BMI     LCD_WAIT
        RTS
Z9B87   LDX     #M7DAB
        STX     M00A9
        LDX     #M7D8B
        STX     M00A7
        LDAB    #$80
Z9B93   LDX     M00A9
        LDAA    ,X
        INX
        STX     M00A9
        LDX     M00A7
        CMPA    ,X
        BEQ     Z9BAC
        BSR     LCD_WAIT
        STAB    LCD_CMD
        BSR     LCD_WAIT
        STAA    LCD_DATA
        STAA    ,X
Z9BAC   INX
        STX     M00A7
        INCB
        CMPB    #$D0
        BEQ     Z9BBC
        CMPB    #$90
        BNE     Z9B93
        LDAB    #$C0
        BRA     Z9B93
Z9BBC   RTS
Z9BBD   PSHX
        LDX     #M7DAB
        STX     M00A7
        PULX
Z9BC4   JSR     Z9B5E
        JMP     Z9B87
Z9BCA   CLR     >M00AB
        LDAB    #$64
        BSR     Z9BDC
Z9BD1   STAB    M00AB
        LDAB    #$0A
        BSR     Z9BDC
Z9BD7   ADDA    #$30
        TAB
        BRA     Z9BF4
Z9BDC   STAB    M00AC
        LDAB    #$30
Z9BE0   CMPA    M00AC
        BCS     Z9BE9
        INCB
        SUBA    M00AC
        BRA     Z9BE0
Z9BE9   CMPB    #$30
        BNE     Z9BF4
        TST     >M00AB
        BNE     Z9BF4
        LDAB    #$20
Z9BF4   JSR     Z9B77
        SUBB    #$20
        RTS
Z9BFA   CLR     >M00AB
        CLR     >M00AC
Z9C00   SUBD    #M03E8
        BCS     Z9C0A
        INC     >M00AB
        BRA     Z9C00
Z9C0A   ADDD    #M03E8
Z9C0D   SUBD    #M0064
        BCS     Z9C17
        INC     >M00AC
        BRA     Z9C0D
Z9C17   ADDD    #M0064
        PSHB
        LDAA    M00AB
        LDAB    #$0A
        MUL
        ADDB    M00AC
        TBA
        LDAB    #$01
        JSR     Z9BD1
        PULA
        RTS
Z9C2A   PSHA
        PSHB
        CLR     >M00AB
Z9C2F   SUBD    #M2710
        BCS     Z9C39
        INC     >M00AB
        BRA     Z9C2F
Z9C39   ADDD    #M2710
        XGDX
        LDAA    M00AB
        BEQ     Z9C46
        JSR     Z9BD7
        BRA     Z9C4B
Z9C46   LDAB    #$20
        JSR     Z9B77
Z9C4B   XGDX
        JSR     Z9BFA
        JSR     Z9BD1
        PULB
        PULA
        XGDX
        CPX     #M03E8
        BCC     Z9C85
        LDD     M00A7
        SUBD    #M0004
        STD     M00A7
        LDAB    #$20
        JSR     Z9B77
        CPX     #M0064
        BCC     Z9C7E
        JSR     Z9B77
        CPX     #FRCL
        BCC     Z9C7A
        JSR     Z9B77
        LDAB    #$01
        BRA     Z9C80
Z9C7A   LDAB    #$02
        BRA     Z9C80
Z9C7E   LDAB    #$03
Z9C80   LDX     M00A7
        ABX
        STX     M00A7
Z9C85   RTS
Z9C86   PSHX
        XGDX
        JSR     Z9BFA
        PULX
        CPX     #M03E8
        BCC     Z9C96
        LDAB    #$20
        STAB    M7DC6
Z9C96   LDAB    #$2E
        JSR     Z9B77
        JSR     Z9BD1
        RTS
Z9C9F   CLR     >M00AC
Z9CA2   SUBD    #M0064
        BCS     Z9CAC
        INC     >M00AC
        BRA     Z9CA2
Z9CAC   ADDD    #M0064
        PSHB
        LDAA    M00AC
        JSR     Z9BD7
        PULA
        LDAB    #$2E
        JSR     Z9B77
        JSR     Z9BD1
        RTS
Z9CBF   TST     M7792
        BEQ     Z9CCF
        TST     M7793
        BNE     Z9CCD
        ADDB    #$20
        BRA     Z9CCF
Z9CCD   LDAB    #$63
Z9CCF   RTS
Z9CD0   TST     M7791
        BEQ     Z9CD7
        ADDB    #$20
Z9CD7   RTS
Z9CD8   LDAA    #$20
        LDX     M00A7
Z9CDC   STAA    ,X
        INX
        STX     M00A7
        DECB
        BNE     Z9CDC
        RTS
LO_CALL_0C TST     >M0056
        BNE     J9D21
        JSR     Z9B4E
        STX     M00A7
        LDAB    #$0C
        JSR     LCD_WAIT
        STAB    LCD_CMD
        TST     >M009A
        BEQ     Z9CFF
        JMP     Z9E9E
Z9CFF   LDAB    M7772
        CMPB    #$17
        BCS     Z9D07
        CLRB
Z9D07   JSR     JMPOFFB
        FCB     $1E,$17,$19,$14,$20,$3A,$57,$10,$0F,$18,$C9,$0C,$0B
        FCB     $0A,$7C,$08,$07,$10,$FA,$04,$03,$02,$B0
J9D21   RTS
Z9D22   JMP     Z9EEC
        JMP     Z9EC0
J9D28   JMP     Z9E61
        JMP     Z9E2F
        JSR     ZB1CE
        LDAB    #$02
        STAB    M7787
        TST     >M00A5
        BEQ     Z9D46
        LDX     #M7DBB
        STX     M00A7
        LDX     #MA86C
        JMP     Z9BC4
Z9D46   JMP     Z9F07
        JSR     ZB163
        LDX     #M7DBB
        STX     M00A7
        LDAB    M7774
        CMPB    #$35
        BNE     Z9D64
        LDX     #MAD27_via_dvec_a800
        JSR     Z9B5E
        JSR     ZAFC9
        JMP     Z9B87
Z9D64   JMP     Z9F0C
        TST     M7795
        BPL     Z9D94
        LDAB    #$50
        JSR     Z9CD0
        JSR     Z9B77
        LDAA    M7779
        JSR     ZAF7D
        LDX     #M7DB0
        STX     M00A7
        JSR     ZAFC9
        LDX     #M7DBB
        STX     M00A7
        LDAB    #$2A
        STAB    M7774
        LDAB    #$02
        STAB    M7787
        JMP     J9F54
Z9D94   LDAB    #$50
        JSR     Z9CD0
        JSR     Z9B77
        LDX     #MAD64
        JSR     Z9B5E
        LDX     #M7DBB
        STX     M00A7
        LDX     #MAD6B
        JSR     Z9B5E
        LDAA    M777A
        LDX     #M7DC5
        STX     M00A7
        INCA
        CLRB
        JSR     Z9BD1
        LDAB    #$7E
        JSR     Z9B77
        LDAA    M7795
        BMI     Z9DCE
        LDX     #M7DC8
        STX     M00A7
        INCA
        CLRB
        JSR     Z9BD1
Z9DCE   BRA     Z9E13
        LDAB    #$50
        JSR     Z9CD0
        JSR     Z9B77
        LDX     #MAD64
        BRA     Z9E21
Z9DDD   LDAB    #$50
        JSR     Z9CBF
        JSR     Z9B77
        LDX     #MAD59
        JSR     Z9B5E
        LDX     #M7DBB
        STX     M00A7
        LDX     #MA84A
        JSR     Z9B5E
        LDAA    M777F
        LDX     #M7DC3
        STX     M00A7
        JSR     ZAF7D
        LDAB    #$7E
        JSR     Z9B77
        LDAA    M7795
        BMI     Z9E13
        LDX     #M7DC7
        STX     M00A7
        JSR     ZAF7D
Z9E13   JMP     Z9B87
        LDAB    #$50
        JSR     Z9CBF
        JSR     Z9B77
        LDX     #MAD59
Z9E21   JSR     Z9B5E
        LDX     #M7DBB
        STX     M00A7
        LDX     #Z80DE
        JMP     Z9BC4
Z9E2F   JSR     ZAFB0
        LDX     #M7DBB
        STX     M00A7
        LDX     #MA85B
        JSR     Z9B5E
        LDX     #M7DC5
        STX     M00A7
        LDAA    M777C
        ANDA    #$03
        INCA
        JSR     Z9BD7
        LDAB    #$7E
        JSR     Z9B77
        LDAA    M7794
        BMI     Z9E5E
        LDX     #M7DC9
        STX     M00A7
        INCA
        JSR     Z9BD7
Z9E5E   JMP     Z9B87
Z9E61   LDAB    M7774
        CMPB    #$14
        BCC     Z9E70
        LDAB    #$01
        STAB    M7772
        JMP     Z9D22
Z9E70   JSR     ZB07A
        LDX     #M7DBB
        STX     M00A7
        LDAB    M7774
        CMPB    #$1F
        BNE     Z9E90
        LDX     #M7740
Z9E82   LDAB    ,X
        JSR     Z9B77
        INX
        CPX     #M7750
        BNE     Z9E82
        JMP     Z9B87
Z9E90   TST     >M00A5
        BEQ     Z9E9B
        LDX     #MA86C
        JMP     Z9BC4
Z9E9B   JMP     Z9F0C
Z9E9E   LDX     #M7DAC
        STX     M00A7
        LDX     #MAD91
        JSR     Z9B5E
        JSR     ZB3B5
        LDX     #M7DC9
        STX     M00A7
        LDAA    M776D
        COMA
        LSRA
        JSR     ZB4D6
        CLRB
        JSR     Z9BD1
        JMP     Z9B87
Z9EC0   TST     M7795
        BMI     Z9EC8
        JMP     Z9DDD
Z9EC8   LDAB    #$50
        JSR     Z9CBF
        JSR     Z9B77
        LDX     #MAD59
        JSR     Z9B5E
        LDX     #M7DBB
        STX     M00A7
        LDAA    M7773
        JSR     ZAF7D
        LDX     #M7DC0
        STX     M00A7
        JSR     ZAFD8
        JMP     Z9B87
Z9EEC   LDAB    M7774
        CMPB    #$0B
        BCS     Z9EF9
        CLR     M7772
        JMP     Z9E61
Z9EF9   TST     M7794
        BMI     Z9F01
        JMP     Z9E2F
Z9F01   JSR     ZAFB0
        JSR     ZAFED
Z9F07   LDX     #M7DBB
        STX     M00A7
Z9F0C   LDAB    M7788
        CMPB    #$01
        BEQ     Z9F75
        CMPB    #$02
        BCS     Z9F1A
        JMP     Z9FAC
Z9F1A   LDAB    M7774
        JSR     JMPOFF1
D9F20   FCB     $E5,$0B,$20,$14,$1F,$1F,$1C,$28,$1F,$29,$2A,$30,$34
        FCB     $31,$26,$33,$1B,$34,$32,$35,$0E,$3C,$1E,$3D,$34,$3E
        FCB     $2E,$3F,$06,$46,$32,$47,$02,$00
J9F42   RTS
J9F43   SUBB    #$09
        BRA     Z9F72
J9F47   LDAB    #$16
        BRA     Z9F72
J9F4B   LDAB    #$17
        LDAA    M778C
        CMPA    #$06
        BRA     Z9F5B
J9F54   LDAB    #$17
        LDAA    M778C
        CMPA    #$04
Z9F5B   BCS     Z9F5E
        INCB
Z9F5E   BRA     Z9F72
J9F60   LDAB    #$19
        BRA     Z9F72
J9F64   LDAB    #$1A
        BRA     Z9F72
        LDAB    #$0D
        BRA     Z9F72
J9F6C   LDAB    #$1B
        BRA     Z9F72
J9F70   LDAB    #$1C
Z9F72   JMP     JA005
Z9F75   LDAB    M7774
        LDAA    M7789
        CMPA    M778D
        BLS     Z9F84
        CLRA
        STAA    M7789
Z9F84   JSR     JMPOFF1
D9F87   FCB     $24,$02,$70,$03,$40,$04,$42,$05,$1C,$07,$46,$08,$18
        FCB     $09,$46,$0A,$48,$0B,$12,$15,$48,$16,$0E,$18,$48,$19
        FCB     $4A,$1A,$4C,$1B,$4E,$1C,$50,$1D,$02,$00
Z9FAB   RTS
Z9FAC   LDAA    M7774
        CMPA    #$15
        BNE     Z9FBD
        LDAA    M7789
        CMPA    #$0C
        BNE     Z9FAB
        JMP     ZA13A
Z9FBD   CMPA    #$1B
        BNE     Z9FC4
        JMP     ZA098
Z9FC4   CMPA    #$1C
        BNE     Z9FAB
        JMP     ZA017
        ADDA    #$06
        BRA     Z9FF9
Z9FCF   SUBA    #$03
        BPL     Z9FCF
        ADDA    #$0D
        BRA     Z9FF9
        ADDA    #$0D
        BRA     Z9FF9
        ADDA    #$13
        BRA     Z9FF9
        ADDA    #$15
        BRA     Z9FF9
        ADDA    #$25
        BRA     Z9FF9
        ADDA    #$32
        BRA     Z9FF9
        ADDA    #$3D
        BRA     Z9FF9
        ADDA    #$41
        BRA     Z9FF9
        LDAA    #$44
        BRA     Z9FF9
        ADDA    #$45
Z9FF9   TAB
        CMPB    #$49
        BCS     Z9FFF
        CLRB
Z9FFF   ASLB
MA000   LDX     #MA7B8
        BRA     ZA00E
JA005   CMPB    #$1D
        BCS     ZA00A
        CLRB
ZA00A   ASLB
        LDX     #MA77E
ZA00E   ABX
        LDX     ,X
        JSR     Z9B5E
        JMP     ZA174
ZA017   LDAB    M7789
        BEQ     ZA023
        CMPB    #$02
        BEQ     ZA03C
        JMP     ZA0D5
ZA023   LDAB    M778A
        ADDB    #$3C
        JSR     ZB43F
        LDX     M00A7
        INX
        INX
        INX
        STX     M00A7
        LDAB    #$3A
        JSR     Z9B77
        LDX     #M7628
        BRA     ZA051
ZA03C   LDAB    M778A
        JSR     ZB43F
        LDX     M00A7
        INX
        INX
        INX
        STX     M00A7
        LDAB    #$3A
        JSR     Z9B77
        LDX     #M7640
ZA051   LDAB    M778A
        ASLB
        ABX
        LDAB    $01,X
        CMPB    #$21
        BCS     ZA061
        LDAB    ,X
        INCB
        BRA     ZA063
ZA061   LDAB    ,X
ZA063   PSHX
        JSR     ZB43F
        LDX     M00A7
        INX
        INX
        INX
        INX
        STX     M00A7
        PULX
        LDAA    $01,X
        PSHX
        CMPA    #$21
        BCS     ZA081
        COMA
        SUBA    #$BF
        LDAB    #$2D
        JSR     Z9B77
        BRA     ZA086
ZA081   LDAB    #$2B
        JSR     Z9B77
ZA086   CLRB
        JSR     Z9BD1
        PULX
        LDD     ,X
        SUBA    #$0D
        ASLB
        ASLB
        LSRD
        LSRD
        JSR     Z9C2A
        BRA     ZA0D1
ZA098   CLRB
ZA099   PSHB
        LDAB    #$04
        LDAA    M7789
        MUL
        PULA
        PSHA
        ABA
        TAB
        LDX     #M75F8
        ABX
        LDAB    ,X
        CMPB    #$31
        BCC     ZA0BF
        ADDB    M7789
        ADDB    #$24
        JSR     ZB43F
        LDX     M00A7
        INX
        INX
        INX
        STX     M00A7
        BRA     ZA0C2
ZA0BF   JSR     ZA5F0
ZA0C2   PULB
        CMPB    #$03
        BEQ     ZA0D1
        PSHB
        LDAB    #$2F
        JSR     Z9B77
        PULB
        INCB
        BRA     ZA099
ZA0D1   CLRB
        JMP     ZA174
ZA0D5   LDAA    M778A
        INCA
        CMPA    #$0A
        BCS     ZA0E2
        JSR     Z9BD1
        BRA     ZA0E5
ZA0E2   JSR     Z9BD7
ZA0E5   LDAB    #$3A
        JSR     Z9B77
        LDAB    M778A
        ASLB
        LDX     #MA124
        ABX
        LDX     ,X
        JSR     Z9B5E
        TSTB
        BEQ     ZA121
        LDAB    M778F
        CMPB    #$0C
        BCS     ZA102
        CLRB
ZA102   LDAA    M778A
        CMPA    #$02
        BNE     ZA117
        ADDB    #$09
        CMPB    #$0C
        BCS     ZA111
        SUBB    #$0C
ZA111   ASLB
        LDX     #MAEB5
        BRA     ZA11B
ZA117   ASLB
        LDX     #MAECD
ZA11B   ABX
        LDD     ,X
        STD     M7DC9
ZA121   CLRB
        BRA     ZA174
MA124   LDS     $E5,X
        LDS     $EB,X
        LDS     $F7,X
        STS     $03,X
        STS     $0D,X
        STS     $19,X
        STS     $26,X
        STS     $31,X
        STS     $40,X
        STS     $4E,X
        STS     $57,X
ZA13A   LDX     #MAE37
        JSR     Z9B5E
        LDAA    M778A
        INCA
        CLRB
        JSR     Z9BCA
        LDX     #MAE3C
        JSR     Z9B5E
        LDX     M7781
        LDAA    ,X
        CMPA    #$A0
        BCC     ZA15C
        JSR     ZAF7D
        BRA     ZA173
ZA15C   CMPA    #$B8
        BCS     ZA162
        LDAA    #$A0
ZA162   LDAB    #$50
        JSR     Z9B77
        LDAB    #$46
        JSR     Z9B77
        SUBA    #$9F
        LDAB    #$01
        JSR     Z9BD1
ZA173   CLRB
ZA174   CMPB    #$20
        BCS     ZA179
        CLRB
ZA179   LDX     #MA182
        ASLB
        ABX
        LDX     ,X
        JMP     ,X
MA182   ADDA    M0087
        CMPA    $CD,X
        CMPA    $D6,X
        CMPA    $E0,X
        SBCA    $AC,X
        SUBD    $70,X
        SUBD    $7E,X
        SUBD    $B0,X
        SUBD    $BF,X
        SUBD    $D2,X
        SUBD    $E4,X
        ANDA    $24,X
        SUBD    $86,X
        SUBD    $90,X
        SUBD    $A5,X
        ANDA    $52,X
        ANDA    $2E,X
        ANDA    $85,X
        ANDA    $94,X
        ANDA    $DE,X
        ANDA    $DA,X
        LDAA    ,X
        LDAA    $6E,X
        LDAA    $7D,X
        LDAA    $99,X
        LDAA    $AE,X
        LDAA    $CA,X
        LDAA    $D4,X
        LDAA    $E4,X
        STAA    $05,X
        STAA    $4A,X
        STAA    $5A,X
ZA1C2   LDAB    #$3D
ZA1C4   JSR     Z9B77
ZA1C7   LDX     M7781
        LDAA    ,X
        RTS
        BSR     ZA1C2
        CLRB
        JSR     Z9BD1
        JMP     Z9B87
        LDAB    #$3A
        BSR     ZA1C4
        JSR     ZB432
        JMP     Z9B87
        LDAB    M777B
        LDAA    #$05
        JSR     ZB533
        TST     $57,X
        BEQ     ZA1EF
        JMP     ZA26F
ZA1EF   PSHX
        LDX     #MAD1B
        JSR     Z9B5E
        LDAB    #$3D
        JSR     Z9B77
        JSR     ZB52E
        LDAB    $0B,X
        LDX     #DB4EA
        ABX
        LDAB    ,X
        TBA
        ANDB    #$03
        LDX     #MA2A8
        ABX
        LDAB    ,X
        PULX
        ANDA    #$3C
        BNE     ZA218
        LDAA    #$08
        BRA     ZA21A
ZA218   ASLA
        ASLA
ZA21A   ADDA    $59,X
        CMPB    #$8D
        BNE     ZA258
        TST     $59,X
        BNE     ZA258
        CMPA    #$30
        BCS     ZA258
        CMPA    #$50
        BCS     ZA240
        CMPA    #$90
        BCS     ZA246
        BEQ     ZA24C
        CMPA    #$B0
        BCS     ZA258
        CMPA    #$F0
        BCS     ZA252
        MUL
        ADDD    #M0050
        BRA     ZA259
ZA240   MUL
        ADDD    #RMCR
        BRA     ZA259
ZA246   MUL
        ADDD    #M0020
        BRA     ZA259
ZA24C   MUL
        ADDD    #M0030
        BRA     ZA259
ZA252   MUL
        ADDD    #XROM
        BRA     ZA259
ZA258   MUL
ZA259   LSRD
        LSRD
        LSRD
        LSRD
        XGDX
        CPX     #M0046
        BEQ     ZA268
        CPX     #M0056
        BNE     ZA269
ZA268   INX
ZA269   JSR     Z9C86
ZA26C   JMP     Z9B87
ZA26F   PSHX
        LDX     #MAD22
        JSR     Z9B5E
        LDAB    #$3D
        JSR     Z9B77
        JSR     ZB52E
        LDAB    $0B,X
        ANDB    #$3C
        BNE     ZA288
        LDAB    #$08
        BRA     ZA28A
ZA288   ASLB
        ASLB
ZA28A   PULX
        ADDB    $59,X
        PSHB
        CLRA
        LDAB    $58,X
        XGDX
        PULB
        CLRA
        CPX     #M0000
        BEQ     ZA29D
ZA299   ASLD
        DEX
        BNE     ZA299
ZA29D   JSR     Z9C2A
        LDD     #M487A
        STD     M7DC9
        BRA     ZA26C
MA2A8   LSR     $8D,X
        JSR     Z00AD
        LDAB    M7774
        CMPB    #$05
        BNE     ZA2B8
        LDX     #M7DAF
        BRA     ZA2BB
ZA2B8   LDX     #M7DBF
ZA2BB   STX     M00A7
        JSR     SET_CGCHAR_SET
        CLRB
ZA2C1   PSHB
        LDX     #DB52A
        ABX
        LDAB    ,X
        LDAA    M7787
        CMPA    #$57
        BCC     ZA2D3
        LDAA    #$0D
        BRA     ZA2D5
ZA2D3   LDAA    #$05
ZA2D5   MUL
        ADDB    M7787
        LDX     M7784
        ABX
        LDAA    ,X
        LDAB    M7787
        CMPB    #$5B
        BNE     ZA2FD
        TSTA
        BNE     ZA2F1
        LDX     #MACF7
        JSR     Z9B5E
        BRA     ZA338
ZA2F1   COMA
        SUBA    #$FB
        LDAB    #$06
ZA2F6   ASLB
        DECA
        BNE     ZA2F6
        TBA
        BRA     ZA335
ZA2FD   CMPB    #$0C
        BNE     ZA305
        BSR     ZA351
        BRA     ZA338
ZA305   CMPB    #$5A
        BNE     ZA335
        PSHA
        TAB
        ASLB
        LDX     #MA341
        ABX
        LDD     ,X
        LDX     M00A7
        INX
        STX     M00A7
        JSR     Z9B77
        TAB
        JSR     Z9B77
        PULA
        LDX     M00A7
        PSHX
        LDAB    #$0E
        ABX
        STX     M00A7
        LDAB    #$57
        JSR     Z9B77
        INCA
        JSR     Z9BD7
        PULX
        STX     M00A7
        BRA     ZA338
ZA335   JSR     Z9BCA
ZA338   PULB
        INCB
        CMPB    #$04
        BNE     ZA2C1
        JMP     Z9B87
MA341   FCB     $01,$00,$03,$02,$2D,$00,$2D,$02,$2D,$04,$2D,$05,$2D
        FCB     $06,$2D,$07
ZA351   LDAB    #$20
        JSR     Z9B77
        SUBA    #$03
        BHI     ZA362
        BMI     ZA366
        CLRB
        JSR     Z9BD1
        BRA     ZA36F
ZA362   LDAB    #$2B
        BRA     ZA369
ZA366   NEGA
        LDAB    #$2D
ZA369   JSR     Z9B77
        JSR     Z9BD7
ZA36F   RTS
        JSR     ZA1C2
        LDAB    M6AA5
        ADDB    #$24
        JSR     ZB43F
ZA37B   JMP     Z9B87
        JSR     ZA1C2
        JSR     ZB463
        BRA     ZA37B
        JSR     ZA1C2
        SUBA    #$18
        JSR     ZB465
        BRA     ZA37B
        LDAB    #$3A
        JSR     ZA1C4
        TAB
        ASLB
        LDX     #MA39F
        ABX
        LDX     ,X
        BRA     ZA3BC
MA39F   CPX     $26,X
        CPX     $2B,X
        CPX     $30,X
        LDX     #M7DC1
        STX     M00A7
        JSR     ZAFD8
        JMP     Z9B87
        JSR     ZA1C7
        LDX     #MAB65
        TSTA
        BNE     ZA3BC
        LDX     #MAB5D
ZA3BC   JMP     Z9BC4
        TST     M6AA6
        BEQ     ZA3CD
        JSR     ZA1C7
        LDX     #MAB87
        TSTA
        BNE     ZA3BC
ZA3CD   LDX     #MAB7B
        BRA     ZA3BC
        JSR     ZA1C2
        CMPA    #$04
        BCS     ZA3DA
        CLRA
ZA3DA   LDX     #MA776
        TAB
        ASLB
        ABX
        LDX     ,X
        BRA     ZA3BC
        LDAB    #$3D
        JSR     Z9B77
        LDX     #M7DBF
        STX     M00A7
        CLRB
ZA3EF   PSHB
        LDX     #DB52A
        ABX
        LDAB    ,X
        LDAA    #$0D
        MUL
        ADDB    #$08
        LDX     M7784
        ABX
        TST     ,X
        BNE     ZA408
        LDX     #MACF7
        BRA     ZA40B
ZA408   LDX     #MACFB
ZA40B   JSR     Z9B5E
        PULB
        INCB
        CMPB    #$04
        BNE     ZA3EF
        LDX     M7784
        LDAA    $3D,X
        LDX     #M7DBF
        STX     M00A7
        JSR     Z9BD7
ZA421   JMP     Z9B87
        JSR     ZA1C2
ZA427   INCA
        CLRB
        JSR     Z9BD1
        BRA     ZA421
        LDAB    #$3D
        JSR     Z9B77
        JSR     ZB53E
        LDAB    M7774
        CMPB    #$03
        BNE     ZA445
        LDAA    $3C,X
        CLRB
        JSR     Z9BD1
        BRA     ZA421
ZA445   LDAA    $34,X
        PSHA
        INCA
        JSR     Z9BD7
        PULA
        JSR     ZB22C
        BRA     ZA421
        LDAB    M7774
        CMPB    #$15
        BNE     ZA470
        LDX     #M7DC8
        STX     M00A7
        LDAB    M777E
        BNE     ZA467
        LDAB    #$49
        BRA     ZA46A
ZA467   DECB
        ADDB    #$41
ZA46A   JSR     Z9B77
        JMP     Z9B87
ZA470   LDX     #M7DC7
        STX     M00A7
        TST     M777E
        BNE     ZA47F
        LDX     #M80D4_via_dvec_8f10
        BRA     ZA482
ZA47F   LDX     #M80D9_via_dvec_8f0e
ZA482   JMP     Z9BC4
        JSR     ZA1C2
        CMPA    #$10
        BEQ     ZA48F
        JMP     ZA427
ZA48F   LDX     #MAD13
        BRA     ZA482
        LDAB    #$3D
        JSR     Z9B77
        LDAB    M777B
        LDAA    #$05
        JSR     ZB533
        LDAA    $58,X
        CMPA    #$01
        BHI     ZA4C4
        BEQ     ZA4B0
        LDAA    #$FF
        JSR     Z9BCA
        BRA     ZA4BB
ZA4B0   LDD     #M3531
        STD     M7DC6
        LDAB    #$30
        STAB    M7DC8
ZA4BB   LDD     #M487A
        STD     M7DC9
        JMP     Z9B87
ZA4C4   SUBA    #$01
        LDAB    #$01
ZA4C8   DECA
        BEQ     ZA4CE
        ASLB
        BRA     ZA4C8
ZA4CE   TBA
        CLRB
        JSR     Z9BD1
        LDAB    #$4B
        JSR     Z9B77
        BRA     ZA4BB
        LDAB    #$30
        BRA     ZA4DF
        CLRB
ZA4DF   LDAA    M7787
        CMPA    #$60
        BEQ     ZA4EA
        CMPA    #$63
        BNE     ZA4EC
ZA4EA   LDAA    #$0B
ZA4EC   LDX     #M7DBB
        TSTB
        BEQ     ZA4F3
        INX
ZA4F3   STX     M00A7
        LDX     #M6DD7
        ABX
        TAB
        LDAA    #$04
ZA4FC   PSHA
        PSHB
        PSHX
        TSTB
        BEQ     ZA509
        TST     ,X
        BNE     ZA509
        JMP     ZA5E2
ZA509   ABX
        LDAA    ,X
        LDAB    M7774
        JSR     JMPOFF1
DA512   FCB     $1C,$29,$1E,$2A,$22,$2B,$26,$2C,$3B,$2E,$46,$2F,$30
        FCB     $30,$0E,$31,$47,$32,$75,$33,$9D,$34,$06,$3C,$0E,$3D
        FCB     $02,$00
        PULX
        PULB
        PULA
        RTS
ZA532   JSR     Z9BCA
        JMP     ZA5CE
        JSR     ZAF91
        JMP     ZA5CE
        CMPA    #$10
        BNE     ZA54B
        LDX     #MAD13
        JSR     Z9B5E
        JMP     ZA5CE
ZA54B   INCA
        BRA     ZA532
        SUBA    #$18
        JSR     ZB465
        BRA     ZA5CE
        TAB
        JSR     ZB43F
        LDD     M00A7
        ADDD    #PORT2
        STD     M00A7
        BRA     ZA5CE
        SUBA    #$07
        JSR     ZB465
        BRA     ZA5CE
        PSHA
        JSR     ZB37F
        PULB
        TSTB
        BEQ     ZA59C
        CMPB    #$01
        BNE     ZA57E
        LDAB    #$02
        JSR     Z9CD8
        LDAB    #$49
        BRA     ZA594
ZA57E   CMPB    #$02
        BNE     ZA589
        LDAB    #$02
        JSR     Z9CD8
        BRA     ZA593
ZA589   LDAB    #$01
        JSR     Z9CD8
        LDAB    #$49
        JSR     Z9B77
ZA593   CLRB
ZA594   JSR     Z9B77
        BRA     ZA5CE
        TSTA
        BNE     ZA5A1
ZA59C   LDX     #MACF3
        BRA     ZA5BE
ZA5A1   CMPA    #$03
        BCC     ZA5BB
        CMPA    #$01
        BNE     ZA5B0
        LDAA    M784E
        BMI     ZA5E6
        BRA     ZA5B5
ZA5B0   LDAA    M784F
        BMI     ZA5E6
ZA5B5   INCA
        JSR     Z9BCA
        BRA     ZA5CE
ZA5BB   LDX     #MAD17
ZA5BE   JSR     Z9B5E
        BRA     ZA5CE
        TSTA
        BEQ     ZA5CB
        LDX     M00A7
        INX
        STX     M00A7
ZA5CB   JSR     ZB432
ZA5CE   LDX     M00A7
        INX
        STX     M00A7
        PULX
        LDAB    #$0C
        ABX
        PULB
        PULA
        DECA
        BEQ     ZA5DF
        JMP     ZA4FC
ZA5DF   JMP     Z9B87
ZA5E2   BSR     ZA5F0
        BRA     ZA5CE
ZA5E6   LDX     #MA5EC
        JMP     ZA5BE
MA5EC   BLT     ZA61B
        BLT     ZA5F0
ZA5F0   LDAB    #$01
        JSR     Z9CD8
        LDAB    #$2A
        JSR     Z9B77
        LDAB    #$01
        JSR     Z9CD8
        RTS
        TST     >M00A3
        BNE     ZA608
        JSR     ZB408
ZA608   LDAB    M778C
        CMPB    #$04
        BCC     ZA619
        LDAB    #$7E
        STAB    M7DCA
        LDX     #M6DD7
        BRA     ZA621
ZA619   LDAB    #$7F
ZA61B   JSR     Z9B77
        LDX     #M6E07
ZA621   LDAB    #$04
ZA623   PSHB
        PSHX
        TST     ,X
        BNE     ZA62D
        BSR     ZA5F0
        BRA     ZA663
ZA62D   LDAA    $08,X
        CLRB
        JSR     Z9BD1
        PULX
        LDAA    $08,X
        PSHX
        JSR     ZB4DE
        CMPA    #$08
        BCC     ZA64C
        TSTA
        BNE     ZA648
        LDX     M00A7
        INX
        STX     M00A7
        BRA     ZA663
ZA648   DECA
        TAB
        BRA     ZA660
ZA64C   CMPA    #$0F
        BCS     ZA652
        LDAA    #$0E
ZA652   SUBA    #$08
        TAB
        LDX     M00A7
        XGDX
        SUBD    #RMCR
        XGDX
        STAB    ,X
        LDAB    #$06
ZA660   JSR     Z9B77
ZA663   PULX
        LDAB    #$0C
        ABX
        PULB
        DECB
        BNE     ZA623
        JMP     Z9B87
        JSR     ZA1C2
        LDX     #MAD09
        TSTA
        BEQ     ZA67A
        LDX     #MAD0E
ZA67A   JMP     Z9BC4
        JSR     ZA1C2
        TAB
        CMPB    #$04
        BCS     ZA687
        LDAB    #$03
ZA687   ASLB
        LDX     #MA691
        ABX
        LDX     ,X
        JMP     Z9BC4
MA691   CPX     $F3,X
        CPX     $35,X
        CPX     $3B,X
        CPX     $3F,X
        JSR     ZA1C2
        TSTA
        BNE     ZA6A7
        LDX     #MACF3
        JSR     Z9B5E
        BRA     ZA6AB
ZA6A7   CLRB
        JSR     Z9BD1
ZA6AB   JMP     Z9B87
        JSR     ZA1C2
        TAB
        ASLB
        LDX     #MA6BC
        ABX
        LDX     ,X
        JMP     Z9BC4
MA6BC   CPX     $F3,X
        LDAA    $C2,X
        LDAA    $C6,X
        COM     $6F,X
        TST     ,X
        ROL     $6E,X
        LSR     ,X
        JSR     ZA1C2
        SUBA    #$32
        JSR     ZB465
        BRA     ZA6AB
        JSR     ZA1C2
        TAB
        INCB
        CLRA
        JSR     Z9C9F
        LDAB    #$73
        JSR     Z9B77
        BRA     ZA6AB
        JSR     ZA1C2
        CMPA    #$02
        BCC     ZA6F9
        TSTA
        BNE     ZA6F3
        LDX     #MACF3
        BRA     ZA6F6
ZA6F3   LDX     #MAD09
ZA6F6   JMP     Z9BC4
ZA6F9   DECA
        LDAB    #$47
        JSR     Z9B77
        CLRB
        JSR     Z9BD1
        BRA     ZA6AB
        TST     M7789
        BNE     ZA718
        JSR     ZA1C2
        TAB
        ASLB
        LDX     #MA744
        ABX
        LDX     ,X
        JMP     Z9BC4
ZA718   JSR     ZB37F
        LDAB    #$3A
        JSR     ZA1C4
        TSTA
        BNE     ZA733
        LDAB    #$49
        JSR     Z9B77
        LDAB    #$7E
        JSR     Z9B77
        CLRB
        JSR     Z9B77
        BRA     ZA741
ZA733   CLRB
        JSR     Z9B77
        LDAB    #$7E
        JSR     Z9B77
        LDAB    #$49
        JSR     Z9B77
ZA741   JMP     Z9B87
MA744   CPX     $45,X
        CPX     $49,X
        CPX     $52,X
        LDX     #M7DC8
        STX     M00A7
        LDAB    M7789
        ADDB    #$3C
        JSR     ZB43F
        JMP     Z9B87
        LDX     #M7DC7
        STX     M00A7
        LDX     #MA76C
        LDAB    M777E
        ASLB
        ABX
        LDX     ,X
        JMP     Z9BC4
MA76C   FDB     MAC57_via_dvec_a76c,MAC5C_via_dvec_a76e
        FDB     MAC61_via_dvec_a770,MAC66_via_dvec_a772
        FDB     MAC6B_via_dvec_a774
MA776   FDB     MAC09_via_dvec_a776,MAC10_via_dvec_a778
        FDB     MAC17_via_dvec_a77a,MAC1F_via_dvec_a77c
MA77E   FDB     MA87B_via_dvec_a77e,MA87F_via_dvec_a780
        FDB     MA88D_via_dvec_a782,MA8C7_via_dvec_a784
        FDB     MA8EE_via_dvec_a786,MA90F_via_dvec_a788
        FDB     MA913_via_dvec_a78a,MA917_via_dvec_a78c
        FDB     MA935_via_dvec_a78e,MA939_via_dvec_a790
        FDB     MAB50_via_dvec_a792,MA958_via_dvec_a794
        FDB     MA965_via_dvec_a796,MAAA0_via_dvec_a798
        FDB     MAAAC_via_dvec_a79a,MA9FD_via_dvec_a79c
        FDB     MAAB7_via_dvec_a79e,MAAE7_via_dvec_a7a0
        FDB     MAB0D_via_dvec_a7a2,MAB21_via_dvec_a7a4
        FDB     MAA1A_via_dvec_a7a6,MAA0D_via_dvec_a7a8
        FDB     MABE5_via_dvec_a7aa,MAD2E_via_dvec_a7ac
        FDB     MAD3F_via_dvec_a7ae,MABED_via_dvec_a7b0
        FDB     MABF1_via_dvec_a7b2,MABF6_via_dvec_a7b4
        FDB     MABFD_via_dvec_a7b6
MA7B8   FDB     MA894_via_dvec_a7b8,MA89B_via_dvec_a7ba
        FDB     MA8A2_via_dvec_a7bc,MA8A9_via_dvec_a7be
        FDB     MA8B5_via_dvec_a7c0,MA8C1_via_dvec_a7c2
        FDB     MA8D5_via_dvec_a7c4,MA8E2_via_dvec_a7c6
        FDB     MA8E6_via_dvec_a7c8,MA8EA_via_dvec_a7ca
        FDB     MA8FA_via_dvec_a7cc,MA905_via_dvec_a7ce
        FDB     MA90A_via_dvec_a7d0,MA91C_via_dvec_a7d2
        FDB     MA920_via_dvec_a7d4,MA924_via_dvec_a7d6
        FDB     MA928_via_dvec_a7d8,MA92C_via_dvec_a7da
        FDB     MA930_via_dvec_a7dc,MA943_via_dvec_a7de
        FDB     MA947_via_dvec_a7e0,MAB5C_via_dvec_a7e2
        FDB     MAB6D_via_dvec_a7e4,MAB7A_via_dvec_a7e6
        FDB     MAB92_via_dvec_a7e8,MAB9B_via_dvec_a7ea
        FDB     MABA8_via_dvec_a7ec,MABAD_via_dvec_a7ee
        FDB     MABB2_via_dvec_a7f0,MABB7_via_dvec_a7f2
        FDB     MABBC_via_dvec_a7f4,MABBF_via_dvec_a7f6
        FDB     MABC2_via_dvec_a7f8,MABCD_via_dvec_a7fa
        FDB     MA94B_via_dvec_a7fc,MABD8_via_dvec_a7fe
        FDB     MAD27_via_dvec_a800,MA98C_via_dvec_a802
        FDB     MA999_via_dvec_a804,MA99E_via_dvec_a806
        FDB     MA973_via_dvec_a808,MA97F_via_dvec_a80a
        FDB     MA9A9_via_dvec_a80c,MA9B5_via_dvec_a80e
        FDB     MA9C1_via_dvec_a810,MA9CC_via_dvec_a812
        FDB     MA9DC_via_dvec_a814,MA9E6_via_dvec_a816
        FDB     MA9F3_via_dvec_a818,MA9FA_via_dvec_a81a
        FDB     MAA26_via_dvec_a81c,MAA33_via_dvec_a81e
        FDB     MAA3C_via_dvec_a820,MAA43_via_dvec_a822
        FDB     MAA51_via_dvec_a824,MAA5B_via_dvec_a826
        FDB     MAA66_via_dvec_a828,MAA70_via_dvec_a82a
        FDB     MAA79_via_dvec_a82c,MAA86_via_dvec_a82e
        FDB     MAA93_via_dvec_a830,MAABE_via_dvec_a832
        FDB     MAAC9_via_dvec_a834,MAADD_via_dvec_a836
        FDB     MAAD5_via_dvec_a838,MAAF9_via_dvec_a83a
        FDB     MAAEE_via_dvec_a83c,MAB01_via_dvec_a83e
        FDB     MAB14_via_dvec_a840,MAB2E_via_dvec_a842
        FDB     MAB38_via_dvec_a844,MAB46_via_dvec_a846
        FDB     MAB49_via_dvec_a848
MA84A   FCC     "Mem Str        ?"
        FCB     $00
MA85B   FCC     "EG Copy OP  OP ?"
        FCB     $00
MA86C   FCC     " Are you sure?"
        FCB     $00
MA87B_via_dvec_a77e FCC     "ALG"
        FCB     $10
MA87F_via_dvec_a780 FCC     "Feedback(OP4)"
        FCB     $01
MA88D_via_dvec_a782 FCC     " "
        FCB     $AE
        FCC     "LFO?"
        FCB     $00
MA894_via_dvec_a7b8 FCC     " Wave "
        FCB     $09
MA89B_via_dvec_a7ba FCC     " Speed"
        FCB     $01
MA8A2_via_dvec_a7bc FCC     " Delay"
        FCB     $01
MA8A9_via_dvec_a7be FCC     "P Mod Depth"
        FCB     $01
MA8B5_via_dvec_a7c0 FCC     "A Mod Depth"
        FCB     $01
MA8C1_via_dvec_a7c2 FCC     " Sync"
        FCB     $02
MA8C7_via_dvec_a784 FCC     " Sensitivity?"
        FCB     $00
MA8D5_via_dvec_a7c4 FCC     "P Mod Sens. "
        FCB     $10
MA8E2_via_dvec_a7c6 FCC     "AMS"
        FCB     $0A
MA8E6_via_dvec_a7c8 FCC     "EBS"
        FCB     $04
MA8EA_via_dvec_a7ca FCC     "KVS"
        FCB     $04
MA8EE_via_dvec_a786 FCB     $AE
        FCC     "Frequency?"
        FCB     $00
MA8FA_via_dvec_a7cc FCC     "Fix Range "
        FCB     $12
MA905_via_dvec_a7ce FCC     "CRS("
        FCB     $03
MA90A_via_dvec_a7d0 FCC     "FIN("
        FCB     $03
MA90F_via_dvec_a788 FCC     "OSW"
        FCB     $04
MA913_via_dvec_a78a FCC     "DET"
        FCB     $04
MA917_via_dvec_a78c FCB     $AE
        FCC     "EG?"
        FCB     $00
MA91C_via_dvec_a7d2 FCC     "AR "
        FCB     $04
MA920_via_dvec_a7d4 FCC     "D1R"
        FCB     $04
MA924_via_dvec_a7d6 FCC     "D1L"
        FCB     $04
MA928_via_dvec_a7d8 FCC     "D2R"
        FCB     $04
MA92C_via_dvec_a7da FCC     "RR "
        FCB     $04
MA930_via_dvec_a7dc FCC     "SHFT"
        FCB     $04
MA935_via_dvec_a78e FCC     "OUT"
        FCB     $04
MA939_via_dvec_a790 FCC     " Scaling?"
        FCB     $00
MA943_via_dvec_a7de FCC     "RS "
        FCB     $04
MA947_via_dvec_a7e0 FCC     "LS "
        FCB     $04
MA94B_via_dvec_a7fc FCC     "Middle C    "
        FCB     $05
MA958_via_dvec_a794 FCC     "Master Tune "
        FCB     $06
MA965_via_dvec_a796 FCC     "Midi Control?"
        FCB     $00
MA973_via_dvec_a808 FCC     "Cont.Change"
        FCB     $1C
MA97F_via_dvec_a80a FCC     "A.Touch ~ BC"
        FCB     $02
MA98C_via_dvec_a802 FCC     "Basic Rcv.Ch"
        FCB     $11
MA999_via_dvec_a804 FCB     $BC
        FCC     " Ch"
        FCB     $0B
MA99E_via_dvec_a806 FCC     " P.Change "
        FCB     $19
MA9A9_via_dvec_a80c FCC     " Pitch Bend"
        FCB     $1C
MA9B5_via_dvec_a80e FCC     "Note on/off"
        FCB     $0D
MA9C1_via_dvec_a810 FCC     " Exclusive"
        FCB     $02
MA9CC_via_dvec_a812 FCC     "Voice Trans?( )"
        FCB     $0F
MA9DC_via_dvec_a814 FCC     "Perfrm "
        FCB     $BC
        FCC     "?"
        FCB     $00
MA9E6_via_dvec_a816 FCC     "Setup Trans?"
        FCB     $1F
MA9F3_via_dvec_a818 FCC     "Init "
        FCB     $C5,$00
MA9FA_via_dvec_a81a FCB     $AE,$C5,$00
MA9FD_via_dvec_a79c FCC     "Cass. Control ?"
        FCB     $00
MAA0D_via_dvec_a7a8 FCC     "Recall Edit?"
        FCB     $00
MAA1A_via_dvec_a7a6 FCC     "Init Voice?"
        FCB     $00
MAA26_via_dvec_a81c FCC     "Save32Voice?"
        FCB     $0F
MAA33_via_dvec_a81e FCC     "Verify "
        FCB     $80,$00
MAA3C_via_dvec_a820 FCC     "Load "
        FCB     $80,$00
MAA43_via_dvec_a822 FCC     "Load 1 Voice?"
        FCB     $00
MAA51_via_dvec_a824 FCC     "Save 24 "
        FCB     $B4,$00
MAA5B_via_dvec_a826 FCC     "Verify 24"
        FCB     $B4,$00
MAA66_via_dvec_a828 FCC     "Load 24 "
        FCB     $B4,$00
MAA70_via_dvec_a82a FCC     "Load 1 "
        FCB     $B4,$00
MAA79_via_dvec_a82c FCC     "Save Setup? "
        FCB     $1F
MAA86_via_dvec_a82e FCC     "VerifySetup?"
        FCB     $1F
MAA93_via_dvec_a830 FCC     "Load Setup? "
        FCB     $1F
MAAA0_via_dvec_a798 FCC     "Mem Protect"
        FCB     $02
MAAAC_via_dvec_a79a FCC     " Combine  "
        FCB     $02
MAAB7_via_dvec_a79e FCB     $AE,$D0
        FCC     " 1 ?"
        FCB     $00
MAABE_via_dvec_a832 FCC     "Delay Time"
        FCB     $1B
MAAC9_via_dvec_a834 FCC     "Pitch Shift"
        FCB     $0C
MAAD5_via_dvec_a838 FCB     $D0
        FCC     "Level "
        FCB     $01
MAADD_via_dvec_a836 FCC     " Feedback"
        FCB     $01
MAAE7_via_dvec_a7a0 FCB     $AE,$D0
        FCC     " 2 ?"
        FCB     $00
MAAEE_via_dvec_a83c FCC     "Direction "
        FCB     $1D
MAAF9_via_dvec_a83a FCC     "Select "
        FCB     $1D
MAB01_via_dvec_a83e FCC     " Pan Range "
        FCB     $01
MAB0D_via_dvec_a7a2 FCB     $AE,$D0
        FCC     " 3 ?"
        FCB     $00
MAB14_via_dvec_a840 FCC     "Key on note?"
        FCB     $1E
MAB21_via_dvec_a7a4 FCB     $AE
        FCC     "Micro Tune?"
        FCB     $00
MAB2E_via_dvec_a842 FCB     $AE
        FCC     "Octave ?"
        FCB     $00
MAB38_via_dvec_a844 FCC     "Init Octave ?"
        FCB     $00
MAB46_via_dvec_a846 FCB     $AE,$D8,$00
MAB49_via_dvec_a848 FCC     "Init "
        FCB     $D8,$00
MAB50_via_dvec_a792 FCC     "  Function?"
        FCB     $00
MAB5C_via_dvec_a7e2 FCB     $07
MAB5D   FCC     "  Poly"
        FCB     $8A,$00
MAB65   FCC     "  Mono"
        FCB     $8A,$00
MAB6D_via_dvec_a7e4 FCC     "P Bend Range"
        FCB     $01
MAB7A_via_dvec_a7e6 FCB     $08
MAB7B   FCC     "Full Time "
        FCB     $90,$00
MAB87   FCC     "Fingered "
        FCB     $90,$00
MAB92_via_dvec_a7e8 FCB     $90
        FCC     " Time  "
        FCB     $01
MAB9B_via_dvec_a7ea FCC     "FC Volume   "
        FCB     $01
MABA8_via_dvec_a7ec FCC     "FC "
        FCB     $A4,$01
MABAD_via_dvec_a7ee FCC     "FC "
        FCB     $9A,$01
MABB2_via_dvec_a7f0 FCC     "MW "
        FCB     $A4,$01
MABB7_via_dvec_a7f2 FCC     "MW "
        FCB     $9A,$01
MABBC_via_dvec_a7f4 FCB     $96,$A4,$01
MABBF_via_dvec_a7f6 FCB     $96,$9A,$01
MABC2_via_dvec_a7f8 FCB     $96
        FCC     "P. Bias  "
        FCB     $1A
MABCD_via_dvec_a7fa FCB     $96
        FCC     "EG Bias  "
        FCB     $01
MABD8_via_dvec_a7fe FCC     "Reverb Rate "
        FCB     $18
MABE5_via_dvec_a7aa FCC     "Assign"
        FCB     $8A,$16
MABED_via_dvec_a7b0 FCC     "VOL"
MABF0   FCB     $15
MABF1_via_dvec_a7b2 FCB     $D0
        FCC     "Sel"
        FCB     $17
MABF6_via_dvec_a7b4 FCC     "Init "
        FCB     $B4,$00
MABFD_via_dvec_a7b6 FCC     "Test entry?"
        FCB     $00
MAC09_via_dvec_a776 FCC     "saw up"
        FCB     $00
MAC10_via_dvec_a778 FCC     "square"
        FCB     $00
MAC17_via_dvec_a77a FCC     "triangl"
        FCB     $00
MAC1F_via_dvec_a77c FCC     "S/Hold"
        FCB     $00
        FCC     "all "
        FCB     $00
        FCC     "odd "
        FCB     $00
        FCC     "even"
        FCB     $00
        FCC     "delay"
        FCB     $00
        FCC     "pan"
        FCB     $00
        FCC     "chord"
        FCB     $00
        FCC     "LFO"
        FCB     $00
        FCC     "velocity"
        FCB     $00
        FCC     "note"
        FCB     $00
MAC57_via_dvec_a76c FCC     "(AL)"
        FCB     $00
MAC5C_via_dvec_a76e FCC     "(SY)"
        FCB     $00
MAC61_via_dvec_a770 FCC     "(PC)"
        FCB     $00
MAC66_via_dvec_a772 FCC     "(EF)"
        FCB     $00
MAC6B_via_dvec_a774 FCC     "(MC)"
        FCB     $00
        FCC     "32 Voice?"
        FCB     $00
        FCC     " Mode"
        FCB     $00
        FCC     "Porta"
        FCB     $00
        FCC     "BC "
        FCB     $00
        FCC     "Amplitude"
        FCB     $00
        FCC     "Pitch    "
        FCB     $00
        FCC     "Edit "
        FCB     $00
        FCC     "Perfrm?"
        FCB     $00
        FCC     "Transmit"
        FCB     $00
        FCC     "P.Cng Tbl?"
        FCB     $00
        FCC     "Effect "
        FCB     $00
        FCC     "Full Kbd ?"
        FCB     $00
        FCC     "EDIT"
        FCB     $00
        FCC     "VOICE"
        FCB     $00
        FCC     "EFFECT"
        FCB     $00
        FCC     "ERFORMANCE"
        FCB     $00
MACF0   FCC     "on"
        FCB     $00
MACF3   FCC     "off"
        FCB     $00
MACF7   FCC     " of"
        FCB     $00
MACFB   FCC     " on"
        FCB     $00
DACFF   FCC     " Por"
        FCB     $00
DAD04   FCC     " Sus"
        FCB     $00
MAD09   FCC     "norm"
        FCB     $00
MAD0E   FCC     "altr"
        FCB     $00
MAD13   FCC     "omn"
        FCB     $00
MAD17   FCC     "vib"
        FCB     $00
MAD1B   FCC     "RATIO)"
        FCB     $00
MAD22   FCC     "FIX)"
        FCB     $00
MAD27_via_dvec_a800 FCC     "Name :"
        FCB     $0E
MAD2E_via_dvec_a7ac FCC     "   /   /   /   ~"
        FCB     $13
MAD3F_via_dvec_a7ae FCB     $7F
        FCC     "   /   /   /   "
        FCB     $14
MAD50   FCC     "P.UT"
        FCB     $00
MAD55   FCC     ".ED"
        FCB     $00
MAD59   FCC     "LAY SINGLE"
        FCB     $00
MAD64   FCB     $F5
        FCC     " MODE"
        FCB     $00
MAD6B   FCC     "PFM Store      ?"
        FCB     $00
MAD7C   FCC     "UTILITY MODE"
        FCB     $00
MAD89   FCC     "UTILITY"
        FCB     $00
MAD91   FCC     "Master Volume"
        FCB     $00
MAD9F   FCC     "1  2  3  4"
        FCB     $00
MADAA   FCC     "LFO "
        FCB     $E3,$00
MADB0   FCC     "SENS "
        FCB     $E3,$00
MADB7   FCC     "FREQ."
        FCB     $00
MADBD   FCC     "FUNCTION"
        FCB     $00
MADC6   FCC     "UT"
        FCB     $00
MADC9   FCC     "RECALL "
        FCB     $E3,$00
MADD2   FCC     "INIT "
        FCB     $E8,$00
        FCC     "MIDI CONTROL"
        FCB     $00
        FCC     "CASS CONTROL"
        FCB     $00,$E3
        FCC     " "
        FCB     $EE
        FCC     "1"
        FCB     $00,$E3
        FCC     " "
        FCB     $EE
        FCC     "2"
        FCB     $00,$E3
        FCC     " "
        FCB     $EE
        FCC     "3"
        FCB     $00
        FCC     "Chord"
        FCB     $02
        FCC     "MICRO TUNE"
        FCB     $00
        FCC     "MICRO   OCT."
        FCB     $00
        FCC     "MICRO   FULL"
        FCB     $00
        FCC     "Init?"
        FCB     $03
MAE33   FCC     "Key"
        FCB     $00
MAE37   FCC     " PGM"
        FCB     $00
MAE3C   FCC     " = "
        FCB     $00
        FCC     "INIT P.CNG"
        FCB     $00,$F5
        FCC     " "
        FCB     $E3,$00
MAE4F   FCB     $E8
        FCC     " "
        FCB     $E3
        FCC     "?"
        FCB     $00
MAE54   FCC     "INIT  "
        FCB     $00
        FCC     "MAX NOTES"
        FCB     $00
        FCC     "RECEIVE CH"
        FCB     $00
        FCC     "LIMIT/L"
        FCB     $00
        FCC     "LIMIT/H"
        FCB     $00
        FCC     "INST DETUNE"
        FCB     $00
        FCC     "NOTE SHIFT"
        FCB     $00
        FCC     "OUT ASSIGN"
        FCB     $00
        FCC     "LFO SELECT"
        FCB     $00
        FCC     "MICTUN="
        FCB     $01
MAEB5   FCC     " CC# DD# E FF# GG# AA# B"
MAECD   FCC     " CDb DEb E FGb GAb ABb BEqual"
        FCB     $00
        FCC     "Pure(major)"
        FCB     $01
        FCC     "Pure(minor)"
        FCB     $01
        FCC     "Mean tone"
        FCB     $01
        FCC     "Pythagorean"
        FCB     $01
        FCC     "Werckmeister"
        FCB     $00
        FCC     "Kirnberger"
        FCB     $00
        FCC     "Vallotti"
        FCB     $26
        FCC     "young"
        FCB     $00
        FCC     "1/4 Shift eql"
        FCB     $00
        FCC     "1/4 Tone"
        FCB     $00
        FCC     "1/8 Tone"
        FCB     $00
        FCC     "singl"
        FCB     $00
        FCC     "dual"
        FCB     $00
        FCC     "split"
        FCB     $00
        FCC     "mono8"
        FCB     $00
        FCC     "poly4"
        FCB     $00
ZAF7D   LDAB    M7772
        ANDB    #$04
        BEQ     ZAF91
        CMPA    #$18
        BCS     ZAF89
        CLRA
ZAF89   LDAB    #$46
        JSR     Z9B77
        INCA
        BRA     ZAFAA
ZAF91   CMPA    #$A0
        BCS     ZAF96
        CLRA
ZAF96   LDAB    #$49
        SUBA    #$20
        BMI     ZAFA5
        LDAB    #$41
ZAF9E   SUBA    #$20
        BMI     ZAFA5
        INCB
        BRA     ZAF9E
ZAFA5   JSR     Z9B77
        ADDA    #$21
ZAFAA   LDAB    #$01
        JSR     Z9BD1
        RTS
ZAFB0   LDAB    #$45
        JSR     Z9CBF
        JSR     Z9B77
        LDX     #M776E
ZAFBB   LDAA    ,X
        ANDA    #$01
        JSR     Z9BD7
        INX
        CPX     #M7772
        BNE     ZAFBB
        RTS
ZAFC9   LDX     #M6E3B
ZAFCC   LDAB    ,X
        JSR     Z9B77
        INX
        CPX     #M6E45
        BNE     ZAFCC
        RTS
ZAFD8   JSR     ZB53E
        LDAB    #$4D
ZAFDD   ABX
        CLRB
ZAFDF   PSHB
        LDAB    ,X
        JSR     Z9B77
        INX
        PULB
        INCB
        CMPB    #$0A
        BNE     ZAFDF
        RTS
ZAFED   TST     M7788
        BNE     ZB029
        LDAB    M7774
        BNE     ZAFFA
ZAFF7   JMP     ZB079
ZAFFA   CMPB    #$05
        BEQ     ZAFF7
        CMPB    #$06
        BEQ     ZB006
        CMPB    #$08
        BNE     ZB013
ZB006   LDX     #M7DB1
        STX     M00A7
        LDX     #MAD9F
        JSR     Z9B5E
        BRA     ZB079
ZB013   LDX     #M7DB2
        STX     M00A7
        LDX     #MA87B_via_dvec_a77e
        JSR     Z9B5E
        JSR     ZB53E
        LDAA    $34,X
        INCA
        JSR     Z9BD7
        BRA     ZB079
ZB029   LDX     #M7DB1
        STX     M00A7
        LDAB    M7774
        JSR     JMPOFF1
DB034   FCB     $45,$02,$12,$03,$15,$04,$18,$05,$3D,$07,$19,$08,$39
        FCB     $09,$15,$0A,$18,$0B,$33,$00
        LDX     #MADAA
        BRA     ZB076
        LDX     #MADB0
        BRA     ZB076
        LDX     #MADB7
        BRA     ZB061
        LDX     #MAD9F
        BRA     ZB076
        LDX     #MADBD
        BRA     ZB076
ZB061   JSR     Z9B5E
        LDX     #M4F50
        STX     M7DB8
        LDAA    M777B
        ANDA    #$03
        ADDA    #$31
        STAA    M7DBA
        BRA     ZB079
ZB076   JSR     Z9B5E
ZB079   RTS
ZB07A   TST     M7788
        BNE     ZB0AC
        TST     >M00A5
        BEQ     ZB0A4
        LDX     #MADC6
        JSR     Z9B5E
        LDX     #M7DAF
        STX     M00A7
        LDAB    M7774
        CMPB    #$1D
        BEQ     ZB09F
        CMPB    #$1E
        BNE     ZB0A4
        LDX     #MADC9
        BRA     ZB0A7
ZB09F   LDX     #MADD2
        BRA     ZB0A7
ZB0A4   LDX     #MAD7C
ZB0A7   JSR     Z9B5E
        BRA     ZB122
ZB0AC   LDX     #MADC6
        JSR     Z9B5E
        LDX     #M7DAF
        STX     M00A7
        LDAB    M7788
        CMPB    #$02
        BCC     ZB123
        LDAB    M7774
        JSR     JMPOFF1
DB0C4   FCB     $5E,$15,$0A,$16,$5A,$18,$12,$19,$14,$1D,$54,$00
JB0D0   TST     >M00A5
        BEQ     ZB0D9
        LDAB    #$0A
        BRA     ZB0E2
ZB0D9   CLRB
        BRA     ZB0E2
        LDAB    #$01
        BRA     ZB0E2
        SUBB    #$17
ZB0E2   LDX     #MB14D
ZB0E5   ASLB
        ABX
        LDX     ,X
        JSR     Z9B5E
        CMPB    #$01
        BEQ     ZB11F
        CMPB    #$02
        BEQ     ZB110
        CMPB    #$03
        BNE     ZB122
        LDAA    M778A
        CMPA    #$01
        BCS     ZB122
        CMPA    #$05
        BCC     ZB122
        LDX     #M7DB8
        STX     M00A7
        LDX     #MAE33
        JSR     Z9B5E
        BRA     ZB122
ZB110   LDX     #M7DB8
        STX     M00A7
        LDAB    M7789
        ADDB    #$3C
        JSR     ZB43F
        BRA     ZB122
ZB11F   JSR     ZB47B
ZB122   RTS
ZB123   LDAB    M7774
        CMPB    #$1B
        BNE     ZB12E
        LDAB    #$06
        BRA     ZB0E2
ZB12E   CMPB    #$1C
        BEQ     ZB138
        CMPB    #$15
        BNE     ZB122
        BRA     JB0D0
ZB138   LDAB    M7789
        ANDB    #$01
        BNE     ZB149
        LDAB    #$07
        TST     M7789
        BEQ     ZB147
        INCB
ZB147   BRA     ZB0E2
ZB149   LDAB    #$09
        BRA     ZB0E2
MB14D   JSR     $D9,X
        JSR     $E6,X
        JSR     $F3,X
        JSR     $F8,X
        JSR     $FD,X
        LDS     $08,X
        LDS     $02,X
        LDS     $13,X
        LDS     $20,X
        LDS     $2D,X
        LDS     $40,X
ZB163   LDAB    #$50
        JSR     Z9CD0
        JSR     Z9B77
        LDX     #MAD55
        JSR     Z9B5E
        LDAB    M7774
        JSR     JMPOFF1
DB177   FCB     $42,$28,$10,$29,$14,$2A,$27,$2B,$14,$30,$38,$31,$14
        FCB     $34,$04,$36,$32,$00
        CLRB
        LDX     #M7DAC
        BRA     ZB19C
        LDAB    #$01
        BRA     ZB199
        SUBB    #$29
        BRA     ZB199
        SUBB    #$2A
ZB199   LDX     #M7DB0
ZB19C   STX     M00A7
        LDX     #MB1BA
        JMP     ZB0E5
        LDX     #M7DB0
        STX     M00A7
        LDAA    M778C
        CMPA    #$08
        BCS     ZB1B1
        CLRA
ZB1B1   JSR     ZB4E2
        LDAB    #$4D
        JSR     ZAFDD
        RTS
MB1BA   LDS     $4B,X
        LDS     $5B,X
        LDS     $65,X
        LDS     $70,X
        LDS     $78,X
        LDS     $80,X
        LDS     $8C,X
        LDS     $97,X
        LDS     $A2,X
        LDS     $AD,X
ZB1CE   LDX     #MAD50
        JSR     Z9B5E
        LDX     #M7DB0
        STX     M00A7
        LDAB    M7774
        CMPB    #$3C
        BNE     ZB1E5
        LDX     #MAE4F
        BRA     ZB212
ZB1E5   CMPB    #$3D
        BNE     ZB217
        TST     >M00A5
        BEQ     ZB200
        LDX     #MAE54
        JSR     Z9B5E
ZB1F4   LDAB    M777E
        ASLB
        LDX     #MB222
        ABX
        LDX     ,X
        BRA     ZB212
ZB200   LDX     #M7DAD
        STX     M00A7
        LDX     #MAD89
        JSR     Z9B5E
        LDX     #M7DB6
        STX     M00A7
        BRA     ZB1F4
ZB212   JSR     Z9B5E
        BRA     ZB221
ZB217   LDX     #M7DAD
        STX     M00A7
        LDX     #MAD89
        BRA     ZB212
ZB221   RTS
MB222   STS     $60,X
        STS     $66,X
        STS     $6B,X
        STS     $71,X
        STS     $77,X
ZB22C   PSHA
        LDAB    #$40
        LDX     #MB2E0
ZB232   JSR     SET_CGCHAR
        CMPB    #$50
        BNE     ZB232
        PULB
        CMPB    #$08
        BCS     ZB23F
        CLRB
ZB23F   JSR     JMPOFFB
DB242   FCB     $08,$15,$27,$39,$53,$5F,$74,$7B
JB24A   LDX     #M7DC1
        STX     M00A7
        LDX     #MB2F0
        JSR     Z9B5E
        JMP     ZB2DF
        LDD     #Z3300
        STD     M7DB3
        LDX     #M7DC3
        STX     M00A7
        LDX     #MB2F9
        JSR     Z9B5E
        BRA     ZB2DF
        LDD     #M3400
        STD     M7DB5
        LDX     #M7DC3
        STX     M00A7
        LDX     #MB300
        JSR     Z9B5E
        BRA     ZB2DF
        LDX     #M7DB3
        STX     M00A7
        LDX     #MB307
        JSR     Z9B5E
        CLR     M7DB6
ZB28C   LDX     #M7DC5
        STX     M00A7
        LDX     #MB30B
        JSR     Z9B5E
        BRA     ZB2DF
        LDX     #M7DB5
        STX     M00A7
        LDX     #MB310
        JSR     Z9B5E
        BRA     ZB28C
        LDD     #M0134
        STD     M7DB4
        CLR     M7DB6
ZB2AF   LDX     #M7DC3
        STX     M00A7
        LDX     #MB315
        JSR     Z9B5E
        BRA     ZB2DF
        LDD     #M0134
        STD     M7DB8
        BRA     ZB2AF
        LDX     #M7DB3
        STX     M00A7
        LDX     #MB315
        JSR     Z9B5E
        LDAB    #$34
        STAB    M7DB9
        LDX     #M7DC3
        STX     M00A7
        LDX     #MB31B
        JSR     Z9B5E
ZB2DF   RTS
; CGCHAR
MB2E0   FCB     %00000000,%00000000,%00010000,%00001001,%00000101
        FCB     %00000001,%00001111,%00000000
; CGCHAR
        FCB     %00000000,%00000000,%00000001,%00010010,%00010100
        FCB     %00010000,%00011110,%00000000
MB2F0   FCC     "4~3~2~1~"
        FCB     $00
MB2F9   FCC     "4~2~1~"
        FCB     $00
MB300   FCC     "3~2~1~"
        FCB     $00
MB307   FCC     "4~3"
        FCB     $00
MB30B   FCC     "2~1~"
        FCB     $00
MB310   FCC     "4~3~"
        FCB     $00
MB315   FCC     "1 2 3"
        FCB     $00
MB31B   FCC     "+-+-+-+"
        FCB     $00
SET_CGCHAR_SET LDAB    #$40
        LDX     #MB33F
ZB328   BSR     SET_CGCHAR
        CMPB    #$80
        BNE     ZB328
        RTS
SET_CGCHAR CLRA
ZB330   PSHA
        LDAA    ,X
        JSR     LCD_DO_CMD_DATA
        INX
        INCB
        PULA
        INCA
        CMPA    #$08
        BNE     ZB330
        RTS
; CGCHAR 0
MB33F   FCB     %00000100,%00001010,%00010001,%00010000,%00000000
        FCB     %00000000,%00000000,%00000000
; CGCHAR 1
        FCB     %00000000,%00000000
ZB349   FCB     %00000000
ZB34A   FCB     %00000001
ZB34B   FCB     %00010001,%00001010
ZB34D   FCB     %00000100,%00000000
; CGCHAR 2
        FCB     %00000100,%00000100,%00001010,%00010001,%00000000
        FCB     %00000000,%00000000,%00000000
; CGCHAR 3
        FCB     %00000000,%00000000,%00000000,%00010001,%00001010
        FCB     %00000100,%00000100,%00000000
; CGCHAR 4
        FCB     %00001000,%00010100,%00010100,%00010101,%00000101
        FCB     %00000101,%00000010,%00000000
; CGCHAR 5
        FCB     %00001000,%00001000,%00010100,%00010101,%00000101
        FCB     %00000010,%00000010,%00000000
; CGCHAR 6
        FCB     %00001010,%00010101,%00010101,%00010101,%00000000
        FCB     %00000000,%00000000,%00000000
; CGCHAR 7
        FCB     %00001010,%00001010,%00010101,%00010101,%00000000
        FCB     %00000000,%00000000,%00000000
ZB37F   LDX     #MB386
        LDAB    #$40
        BRA     SET_CGCHAR
; CGCHAR 0
MB386   FCB     %00011111,%00001010,%00001010,%00001010,%00001010
        FCB     %00001010,%00011111,%00000000
ZB38E   LDX     #MB398
        LDAB    #$40
        BSR     SET_CGCHAR
        JMP     SET_CGCHAR
MB398   FCB     %00000010,%00000101,%00000001,%00011001,%00000010
        FCB     %00000100,%00000111,%00000000,%00000010,%00000110
        FCB     %00000010,%00011010,%00000010,%00000010,%00000111
        FCB     %00000000

; B -> Command, A -> Data

LCD_DO_CMD_DATA JSR     LCD_WAIT
        STAB    LCD_CMD
        JSR     LCD_WAIT
        STAA    LCD_DATA
        RTS
ZB3B5   TST     >M00A3
        BNE     ZB3BD
        JSR     ZB3E9
ZB3BD   LDAA    M776D
        COMA
        LSRA
        JSR     ZB4DA
        CLRB
ZB3C6   SUBA    #$05
        BMI     ZB3CD
        INCB
        BRA     ZB3C6
ZB3CD   ADDA    #$05
        PSHA
        LDX     #M7DBB
        STX     M00A7
        TBA
        BEQ     ZB3E0
        LDAB    #$04
ZB3DA   JSR     Z9B77
        DECA
        BNE     ZB3DA
ZB3E0   PULB
        TSTB
        BEQ     ZB3E8
        DECB
        JSR     Z9B77
ZB3E8   RTS
ZB3E9   LDAB    #$40
        LDAA    #$20
ZB3ED   PSHB
        ANDB    #$07
        BNE     ZB3F5
        LSRA
        ORAA    #$10
ZB3F5   CMPB    #$07
        PULB
        BNE     ZB3FE
        PSHA
        CLRA
        BRA     ZB3FF
ZB3FE   PSHA
ZB3FF   BSR     LCD_DO_CMD_DATA
        PULA
        INCB
        CMPB    #$68
        BNE     ZB3ED
        RTS
ZB408   LDAB    #$40
ZB40A   PSHB
        COMB
        ANDB    #$38
        LSRB
        LSRB
        LSRB
        DECB
        STAB    M00AB
        PULB
        CLRA
ZB416   PSHA
        CMPA    #$07
        BEQ     ZB41F
        CMPA    M00AB
        BCC     ZB422
ZB41F   CLRA
        BRA     ZB424
ZB422   LDAA    #$1F
ZB424   BSR     LCD_DO_CMD_DATA
        INCB
        PULA
        INCA
        CMPA    #$08
        BNE     ZB416
        CMPB    #$78
        BNE     ZB40A
        RTS
ZB432   LDX     #MACF0
        TSTA
        BNE     ZB43B
        LDX     #MACF3
ZB43B   JSR     Z9B5E
        RTS
ZB43F   PSHB
        JSR     ZB38E
        PULB
        LDX     M00A7
        LDAA    #$2D
ZB448   INCA
        SUBB    #$0C
        BCC     ZB448
        CMPA    #$30
        BCC     ZB453
        SUBA    #$2E
ZB453   STAA    $02,X
        ADDB    #$0C
        ASLB
        PSHX
        LDX     #MAEB5
        ABX
        LDD     ,X
        PULX
        STD     ,X
        RTS
ZB463   SUBA    #$40
ZB465   BHI     ZB46D
        BMI     ZB471
        LDAB    #$20
        BRA     ZB474
ZB46D   LDAB    #$2B
        BRA     ZB474
ZB471   NEGA
        LDAB    #$2D
ZB474   JSR     Z9B77
        CLRB
        JMP     Z9BD1
ZB47B   LDAA    M6E37
        BNE     ZB485
        LDX     #MB4CC
        BRA     ZB48C
ZB485   CMPA    #$02
        BCC     ZB491
        LDX     #MB4D1
ZB48C   JSR     Z9B5E
        BRA     ZB4CB
ZB491   DECA
        CMPA    #$0A
        BCC     ZB4C7
        PSHA
        JSR     Z9BD7
        PULA
        CMPA    #$02
        BCS     ZB4CB
        CMPA    #$06
        BCC     ZB4CB
        LDAB    M6E3A
        LDAA    M6E37
        CMPA    #$04
        BNE     ZB4BB
        ADDB    #$09
        CMPB    #$0C
        BCS     ZB4B5
        SUBB    #$0C
ZB4B5   ASLB
        LDX     #MAEB5
        BRA     ZB4BF
ZB4BB   ASLB
        LDX     #MAECD
ZB4BF   ABX
        LDD     ,X
        STD     M7DB9
        BRA     ZB4CB
ZB4C7   CLRB
        JSR     Z9BD1
ZB4CB   RTS
MB4CC   FCC     "Oct."
        FCB     $00
MB4D1   FCC     "Full"
        FCB     $00
ZB4D6   LDAB    #$C8
        MUL
        RTS
ZB4DA   LDAB    #$8E
        MUL
        RTS
ZB4DE   LDAB    #$26
        MUL
        RTS
ZB4E2   LDAB    #$6E
        MUL
        ADDD    #M6A67
        XGDX
        RTS
DB4EA   FCB     $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0C,$0A,$0B
        FCB     $10,$0D,$0E,$14,$0F,$11,$18,$12,$13,$1C,$15,$16,$20
        FCB     $19,$17,$24,$1A,$1D,$28,$1B,$1E,$2C,$21,$30,$1F,$22
        FCB     $25,$34,$23,$38,$29,$26,$3C,$2D,$27,$2A,$31,$2E,$2B
        FCB     $35,$32,$2F,$39,$36,$33,$3D,$3A,$37,$3E,$3B,$3F
DB52A   FCB     $03,$01,$02,$00
ZB52E   LDAB    M777B
        LDAA    #$0D
ZB533   LDX     #DB52A
        ABX
        LDAB    ,X
        MUL
        BSR     ZB53E
        ABX
        RTS
ZB53E   XGDX
        LDAB    M778B
        LDAA    #$6E
        MUL
        ADDD    #M6A67
        XGDX
        RTS

; Computed relative jump based on the data following
; the JSR instruction.

; Data is pairs of <offset, value> with the values in
; ascending order except that the last value is always 0x00

JMPOFF1 PULX
ZB54B   TST     $01,X
        BEQ     ZB557
        CMPB    $01,X
        BCS     ZB557
        INX
        INX
        BRA     ZB54B
ZB557   PSHB
        LDAB    ,X
        ABX
        PULB
        JMP     ,X
        PULX
        PSHB
        TAB
        BRA     ZB565

; Computed relative jump.
; Data following a JSR to this address contains a table of
; offsets.  B is added to the (new) PC, the content of the
; location is read and then also added to the PC

JMPOFFB PULX
        PSHB
ZB565   ABX
        LDAB    ,X
        ABX
        PULB
        JMP     ,X
FOREVER BRA     FOREVER

        ORG     $D1C0 


; Preset voice table - 128 x 78 bytes each

; Preset A01
PRESET_TABLE FCB     $1D,$04,$0C,$06,$00,$34,$01,$4D,$04,$0D,$1F,$07,$03
        FCB     $06,$0C,$5E,$04,$4D,$0D,$0B,$18,$05,$03,$06,$00,$3D
        FCB     $01,$4A,$16,$18,$1F,$08,$03,$06,$0D,$00,$01,$63,$04
        FCB     $13,$3A,$23,$00,$00,$00,$02,$0C,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "GrandPiano"
        FCB     $00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$00
; Preset A02
        FCB     $13,$02,$01,$04,$0C,$48,$04,$41,$10,$19,$13,$02,$01
        FCB     $04,$0C,$45,$03,$59,$04,$10,$13,$02,$01,$04,$0C,$48
        FCB     $03,$4A,$10,$1D,$13,$02,$01,$04,$0C,$00,$05,$63,$04
        FCB     $1B,$3A,$23,$00,$00,$00,$12,$18,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Uprt piano"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A03
        FCB     $18,$01,$01,$03,$00,$15,$03,$47,$04,$0D,$16,$01,$01
        FCB     $05,$0C,$46,$03,$5B,$00,$13,$18,$05,$01,$03,$00,$4A
        FCB     $04,$36,$10,$08,$14,$08,$01,$05,$0C,$01,$03,$63,$04
        FCB     $13,$32,$23,$00,$00,$00,$02,$18,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Deep Grd  "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A04
        FCB     $18,$01,$01,$03,$00,$00,$02,$30,$17,$0E,$16,$03,$01
        FCB     $04,$0C,$3A,$02,$4E,$05,$16,$18,$1B,$04,$03,$0D,$00
        FCB     $03,$3D,$1D,$0D,$14,$08,$01,$05,$0C,$00,$03,$63,$03
        FCB     $10,$20,$23,$00,$00,$00,$02,$11,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "HonkeyTonk"
        FCB     $00,$42,$00,$01,$00,$0B,$00,$06,$00,$00,$00
; Preset A05
        FCB     $1F,$08,$03,$05,$0D,$00,$02,$44,$04,$0E,$1F,$04,$02
        FCB     $05,$0E,$63,$02,$52,$0A,$00,$1F,$05,$04,$05,$0D,$63
        FCB     $02,$42,$10,$05,$1C,$1E,$06,$06,$0F,$00,$03,$63,$04
        FCB     $13,$3A,$23,$00,$00,$00,$62,$0C,$02,$04,$00,$63,$00
        FCB     $00,$00,$00,$32,$00
        FCC     "Elec Grand"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A06
        FCB     $1F,$11,$0B,$0F,$00,$00,$04,$63,$15,$16,$1F,$0B,$00
        FCB     $0B,$0F,$58,$07,$51,$04,$06,$1F,$09,$04,$09,$0A,$5F
        FCB     $07,$47,$2A,$05,$1F,$07,$04,$0A,$0D,$00,$03,$63,$04
        FCB     $00,$5A,$1B,$32,$02,$00,$62,$0C,$04,$04,$00,$63,$16
        FCB     $00,$00,$00,$32,$00
        FCC     "Fuzz Piano"
        FCB     $08,$70,$30,$50,$00,$40,$00,$60,$00,$00,$00
; Preset A07
        FCB     $1D,$01,$04,$03,$00,$1A,$01,$48,$04,$0D,$16,$01,$03
        FCB     $04,$0C,$63,$04,$4E,$0D,$13,$18,$04,$03,$03,$00,$56
        FCB     $01,$44,$16,$18,$1A,$07,$03,$06,$0D,$00,$01,$61,$04
        FCB     $13,$3A,$23,$00,$00,$00,$02,$0C,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "SkoolPiano"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A08
        FCB     $1F,$11,$0B,$0F,$00,$00,$03,$41,$05,$16,$1F,$0B,$04
        FCB     $04,$0F,$55,$02,$55,$04,$16,$1F,$09,$04,$09,$0E,$3F
        FCB     $02,$45,$10,$15,$1F,$09,$07,$07,$0C,$00,$03,$63,$04
        FCB     $08,$52,$1D,$13,$00,$00,$52,$0C,$02,$04,$00,$63,$16
        FCB     $00,$00,$00,$32,$00
        FCC     "Thump Pno "
        FCB     $00,$00,$00,$10,$00,$00,$00,$00,$00,$00,$00
; Preset A09
        FCB     $1F,$09,$09,$0F,$0C,$27,$02,$35,$37,$10,$1F,$04,$03
        FCB     $04,$0D,$19,$04,$56,$05,$16,$1F,$0F,$08,$0D,$0C,$00
        FCB     $43,$60,$04,$0E,$1F,$0C,$03,$07,$0E,$00,$43,$63,$05
        FCB     $10,$3C,$14,$08,$02,$1B,$56,$05,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "LoTine81Z "
        FCB     $00,$7F,$00,$01,$00,$18,$00,$01,$00,$00,$00
; Preset A10
        FCB     $1F,$0D,$09,$0F,$0C,$27,$02,$3D,$35,$10,$1F,$12,$02
        FCB     $04,$0E,$19,$04,$56,$05,$16,$1F,$0C,$08,$0D,$0C,$00
        FCB     $43,$60,$04,$0E,$1F,$08,$04,$07,$0E,$00,$43,$63,$05
        FCB     $10,$3C,$14,$08,$02,$1B,$56,$11,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "HiTine81Z "
        FCB     $00,$7F,$00,$01,$00,$18,$00,$01,$00,$00,$00
; Preset A11
        FCB     $1F,$06,$04,$07,$0C,$00,$04,$36,$2A,$10,$1F,$04,$03
        FCB     $04,$0D,$00,$03,$54,$04,$16,$1F,$0D,$08,$07,$0C,$00
        FCB     $44,$63,$04,$0E,$18,$04,$03,$06,$0D,$00,$43,$63,$04
        FCB     $13,$04,$14,$08,$02,$1B,$6A,$0C,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "ElectroPno"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A12
        FCB     $1F,$0E,$0F,$0E,$09,$00,$03,$29,$2D,$06,$1F,$0F,$05
        FCB     $0B,$0E,$4E,$02,$5A,$04,$0B,$1F,$12,$06,$08,$0E,$00
        FCB     $03,$60,$04,$03,$1F,$12,$06,$08,$0E,$00,$04,$63,$04
        FCB     $0B,$34,$14,$00,$00,$00,$62,$18,$01,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "NewElectro"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A13
        FCB     $1F,$0E,$0F,$0E,$09,$00,$03,$43,$2D,$0E,$1F,$0F,$05
        FCB     $07,$0F,$16,$43,$5A,$00,$00,$1F,$12,$06,$08,$0D,$00
        FCB     $03,$63,$04,$00,$1F,$12,$06,$08,$0F,$00,$02,$63,$04
        FCB     $06,$34,$14,$00,$01,$02,$4E,$18,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "DynomiteEP"
        FCB     $00,$70,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A14
        FCB     $1F,$1C,$04,$07,$0A,$00,$03,$4E,$25,$1E,$16,$07,$03
        FCB     $07,$0B,$00,$03,$52,$0D,$10,$1F,$13,$08,$06,$08,$00
        FCB     $02,$5C,$3C,$0E,$1F,$04,$03,$07,$0E,$00,$02,$63,$04
        FCB     $13,$7C,$18,$03,$10,$0C,$32,$0C,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "DynoWurlie"
        FCB     $1B,$70,$00,$00,$09,$0F,$00,$00,$04,$00,$00
; Preset A15
        FCB     $1F,$0C,$07,$08,$03,$00,$04,$4D,$04,$03,$1F,$05,$07
        FCB     $08,$0F,$00,$04,$50,$04,$0B,$1F,$09,$00,$08,$00,$00
        FCB     $04,$63,$00,$08,$1F,$09,$00,$08,$00,$00,$03,$63,$00
        FCB     $0B,$34,$19,$00,$07,$00,$52,$24,$01,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Wood Piano"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A16
        FCB     $1F,$0D,$10,$0D,$0C,$00,$04,$27,$08,$13,$1F,$1F,$00
        FCB     $09,$0F,$24,$43,$42,$04,$16,$1F,$06,$07,$0A,$0D,$17
        FCB     $03,$57,$08,$10,$1F,$09,$02,$07,$0E,$00,$03,$63,$04
        FCB     $13,$3B,$17,$00,$00,$11,$5E,$0C,$04,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Reed Piano"
        FCB     $00,$03,$00,$00,$00,$30,$00,$00,$00,$00,$00
; Preset A17
        FCB     $1F,$0B,$01,$0B,$08,$18,$40,$5F,$0A,$0E,$1F,$1F,$00
        FCB     $0A,$0F,$00,$40,$5F,$04,$00,$1F,$1F,$00,$0A,$0F,$00
        FCB     $40,$63,$05,$06,$1F,$1F,$00,$0A,$0F,$00,$40,$5F,$00
        FCB     $08,$1F,$20,$00,$03,$00,$5A,$18,$04,$04,$00,$63,$32
        FCB     $32,$00,$00,$32,$00
        FCC     "PercOrgan "
        FCB     $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00
; Preset A18
        FCB     $1F,$1F,$00,$0F,$0F,$00,$00,$5A,$19,$06,$1F,$1F,$00
        FCB     $0F,$0F,$00,$00,$5A,$08,$03,$1F,$1F,$00,$0F,$0F,$00
        FCB     $00,$5A,$0D,$04,$1F,$1F,$00,$0F,$0F,$00,$00,$5A,$04
        FCB     $00,$07,$23,$00,$00,$00,$62,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "16 8 4 2 F"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A19
        FCB     $1F,$1F,$00,$06,$0F,$1E,$00,$4D,$17,$03,$1F,$1F,$00
        FCB     $05,$0F,$00,$00,$50,$05,$04,$1F,$1F,$00,$05,$0F,$00
        FCB     $00,$23,$04,$06,$0D,$1F,$00,$09,$0F,$00,$40,$5A,$04
        FCB     $03,$38,$14,$00,$00,$0E,$3E,$11,$04,$04,$00,$63,$32
        FCB     $0A,$00,$00,$32,$00
        FCC     "PumpOrgan "
        FCB     $00,$25,$00,$31,$00,$18,$00,$18,$00,$00,$00
; Preset A20
        FCB     $1F,$00,$00,$0A,$0F,$1B,$00,$3F,$0D,$03,$1F,$00,$00
        FCB     $0A,$0F,$00,$00,$63,$08,$03,$1F,$00,$00,$0A,$0F,$00
        FCB     $00,$5E,$0D,$03,$1F,$00,$00,$0A,$0F,$00,$00,$63,$04
        FCB     $03,$3E,$23,$00,$27,$00,$42,$0C,$07,$04,$00,$63,$63
        FCB     $00,$63,$00,$32,$00
        FCC     "<6 Tease> "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A21
        FCB     $1F,$00,$00,$0B,$0F,$1B,$00,$5A,$13,$03,$1F,$00,$00
        FCB     $0B,$0F,$00,$00,$63,$08,$03,$1F,$00,$00,$0B,$0F,$00
        FCB     $00,$63,$0D,$03,$1F,$00,$00,$0B,$0F,$00,$00,$63,$04
        FCB     $03,$3F,$23,$00,$12,$00,$42,$0C,$07,$04,$00,$63,$32
        FCB     $00,$63,$00,$32,$00
        FCC     "Farcheeza "
        FCB     $00,$40,$00,$50,$00,$50,$00,$10,$00,$00,$00
; Preset A22
        FCB     $16,$00,$00,$0A,$0F,$3E,$00,$4B,$19,$06,$11,$00,$00
        FCB     $0A,$0F,$63,$00,$57,$0D,$06,$17,$00,$00,$0A,$0F,$00
        FCB     $00,$58,$04,$06,$17,$00,$00,$0A,$0F,$00,$00,$63,$00
        FCB     $01,$07,$1E,$00,$00,$00,$42,$18,$04,$04,$00,$63,$63
        FCB     $00,$00,$00,$32,$00
        FCC     "Small Pipe"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A23
        FCB     $16,$00,$00,$0A,$0F,$00,$01,$47,$1F,$03,$18,$00,$00
        FCB     $05,$0F,$5B,$02,$61,$00,$10,$0F,$00,$00,$08,$0F,$00
        FCB     $00,$63,$08,$10,$0C,$00,$00,$05,$0F,$00,$00,$63,$00
        FCB     $16,$3C,$1D,$00,$00,$00,$42,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Big Church"
        FCB     $00,$00,$00,$70,$00,$30,$00,$00,$00,$00,$00
; Preset A24
        FCB     $1F,$1B,$00,$0F,$0D,$09,$00,$57,$05,$06,$1F,$1C,$00
        FCB     $0F,$0D,$09,$00,$57,$04,$01,$1E,$01,$00,$0F,$0D,$0A
        FCB     $00,$5F,$05,$06,$1E,$01,$00,$0F,$0D,$0A,$00,$5F,$04
        FCB     $01,$04,$1C,$15,$07,$00,$52,$05,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "AnalogOrgn"
        FCB     $00,$01,$00,$08,$00,$01,$00,$08,$00,$00,$00
; Preset A25
        FCB     $1F,$0B,$07,$0F,$09,$00,$04,$49,$13,$13,$1F,$08,$07
        FCB     $05,$0E,$00,$02,$58,$00,$0C,$1F,$06,$04,$06,$0F,$23
        FCB     $03,$46,$10,$0A,$1F,$07,$08,$0C,$0D,$00,$02,$63,$08
        FCB     $0B,$02,$1C,$00,$00,$00,$52,$18,$04,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Thin Clav "
        FCB     $00,$70,$00,$20,$00,$10,$00,$00,$00,$00,$00
; Preset A26
        FCB     $1F,$0B,$08,$0F,$09,$10,$04,$42,$2D,$13,$1F,$09,$08
        FCB     $05,$0F,$00,$02,$49,$00,$03,$1F,$12,$05,$06,$0F,$10
        FCB     $03,$46,$10,$03,$1F,$14,$08,$0C,$0E,$00,$02,$63,$04
        FCB     $0B,$30,$1B,$00,$00,$00,$52,$18,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "EZ Clav   "
        FCB     $00,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00
; Preset A27
        FCB     $1E,$1C,$05,$09,$0C,$0F,$01,$56,$24,$15,$1E,$1B,$01
        FCB     $09,$0D,$0C,$04,$61,$00,$01,$1D,$01,$01,$0C,$00,$2E
        FCB     $02,$4D,$0D,$14,$1E,$1C,$05,$09,$0C,$00,$01,$63,$0A
        FCB     $13,$33,$23,$00,$00,$00,$02,$18,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Fuzz Clavi"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A28
        FCB     $1F,$1D,$00,$01,$0C,$00,$00,$54,$04,$1B,$1F,$13,$01
        FCB     $01,$0F,$00,$01,$4C,$04,$03,$1F,$1F,$01,$09,$0F,$21
        FCB     $01,$4D,$19,$13,$1F,$1E,$06,$07,$0D,$00,$00,$5D,$0D
        FCB     $13,$32,$1C,$00,$00,$00,$62,$18,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "LiteHarpsi"
        FCB     $00,$00,$30,$00,$30,$10,$00,$30,$00,$00,$00
; Preset A29
        FCB     $1A,$13,$00,$01,$0D,$00,$00,$5B,$0A,$11,$0F,$10,$00
        FCB     $01,$0D,$00,$00,$5D,$00,$1D,$17,$08,$06,$05,$0C,$00
        FCB     $00,$5E,$04,$16,$17,$08,$06,$05,$0C,$00,$00,$56,$0D
        FCB     $14,$1C,$23,$00,$00,$00,$02,$18,$04,$04,$00,$63,$32
        FCB     $32,$00,$00,$32,$00
        FCC     "RichHarpsi"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A30
        FCB     $19,$1C,$00,$06,$01,$00,$04,$52,$07,$08,$1F,$10,$00
        FCB     $06,$01,$00,$04,$46,$16,$0E,$1F,$0A,$00,$06,$01,$00
        FCB     $02,$63,$04,$0E,$1F,$0D,$00,$04,$01,$00,$03,$63,$04
        FCB     $00,$04,$19,$00,$00,$00,$52,$24,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Celeste   "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset A31
        FCB     $1F,$0C,$00,$06,$01,$0A,$04,$50,$20,$0E,$1F,$0C,$00
        FCB     $06,$01,$0A,$04,$50,$1F,$08,$1F,$0B,$09,$05,$0E,$00
        FCB     $02,$63,$05,$0E,$1F,$0B,$09,$05,$0E,$00,$03,$63,$04
        FCB     $08,$04,$1A,$00,$00,$00,$52,$1D,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "BriteCelst"
        FCB     $00,$20,$00,$26,$00,$01,$00,$08,$04,$00,$00
; Preset A32
        FCB     $10,$06,$00,$05,$0E,$0A,$01,$4A,$0A,$00,$1F,$04,$00
        FCB     $05,$0F,$00,$01,$49,$0D,$00,$1F,$0B,$00,$0A,$0F,$00
        FCB     $01,$46,$08,$06,$0E,$1F,$00,$0A,$0F,$00,$01,$5A,$04
        FCB     $06,$39,$19,$00,$03,$00,$52,$18,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Squeezebox"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset B01
        FCB     $0F,$1F,$04,$08,$0F,$00,$3A,$51,$04,$0B,$0E,$1F,$00
        FCB     $08,$0F,$00,$22,$4B,$04,$03,$0F,$1A,$0B,$08,$0D,$00
        FCB     $3B,$36,$09,$03,$12,$1F,$00,$08,$0F,$00,$22,$5D,$04
        FCB     $0B,$3A,$1E,$19,$05,$00,$52,$18,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Trumpet81Z"
        FCB     $00,$00,$00,$50,$00,$51,$00,$00,$00,$00,$00
; Preset B02
        FCB     $0F,$1F,$08,$09,$0F,$00,$03,$4F,$04,$05,$0F,$1F,$09
        FCB     $09,$0F,$00,$02,$63,$04,$03,$10,$1F,$00,$08,$0F,$00
        FCB     $02,$63,$04,$05,$11,$1F,$00,$08,$0F,$00,$02,$63,$04
        FCB     $06,$3D,$1D,$0F,$08,$00,$52,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Full Brass"
        FCB     $00,$00,$00,$30,$00,$00,$00,$00,$07,$00,$00
; Preset B03
        FCB     $0C,$05,$00,$08,$00,$00,$02,$4A,$04,$0B,$0F,$1F,$00
        FCB     $08,$0F,$00,$02,$3F,$04,$03,$1F,$0F,$00,$08,$00,$23
        FCB     $03,$44,$0B,$03,$10,$1F,$00,$09,$0F,$00,$02,$5E,$04
        FCB     $0C,$3A,$1F,$19,$07,$00,$52,$18,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Flugelhorn"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset B04
        FCB     $0E,$08,$00,$06,$0D,$00,$02,$4E,$05,$06,$0E,$08,$00
        FCB     $09,$0D,$00,$02,$57,$04,$00,$0E,$12,$00,$08,$0F,$00
        FCB     $02,$63,$05,$06,$0E,$12,$00,$08,$0F,$00,$02,$63,$04
        FCB     $00,$3C,$1C,$06,$06,$00,$52,$05,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "ChorusBras"
        FCB     $00,$01,$00,$38,$00,$01,$00,$38,$00,$00,$00
; Preset B05
        FCB     $08,$05,$00,$06,$00,$00,$42,$47,$04,$08,$0E,$1F,$00
        FCB     $06,$0F,$00,$42,$43,$04,$00,$1F,$0E,$00,$06,$00,$0E
        FCB     $43,$3B,$0B,$06,$0C,$1F,$00,$06,$0F,$00,$42,$61,$04
        FCB     $0C,$39,$1A,$19,$08,$0A,$4A,$0C,$04,$04,$00,$63,$32
        FCB     $1E,$00,$00,$32,$00
        FCC     "FrenchHorn"
        FCB     $00,$00,$20,$00,$00,$00,$00,$00,$00,$00,$00
; Preset B06
        FCB     $0F,$1F,$04,$07,$0F,$00,$02,$53,$05,$0D,$0F,$0E,$00
        FCB     $08,$0E,$00,$01,$5B,$04,$02,$10,$1F,$00,$09,$0F,$00
        FCB     $04,$61,$05,$05,$10,$05,$00,$07,$0E,$00,$04,$63,$04
        FCB     $09,$34,$1C,$15,$06,$00,$52,$11,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "AtackBrass"
        FCB     $00,$01,$00,$38,$00,$01,$00,$08,$00,$00,$00
; Preset B07
        FCB     $0C,$05,$00,$08,$0E,$00,$2A,$52,$04,$0B,$10,$1F,$00
        FCB     $08,$0F,$00,$1A,$46,$04,$03,$1F,$0F,$00,$08,$06,$23
        FCB     $23,$48,$0B,$03,$0F,$1F,$00,$09,$0F,$00,$2A,$63,$04
        FCB     $0C,$3A,$1F,$19,$07,$00,$52,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$63
        FCC     "SpitBoneBC"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset B08
        FCB     $0E,$09,$00,$07,$0E,$00,$22,$51,$04,$03,$0F,$1F,$00
        FCB     $08,$0F,$00,$22,$52,$05,$06,$11,$1F,$00,$09,$0F,$00
        FCB     $23,$63,$04,$00,$10,$1F,$00,$09,$0F,$00,$2A,$60,$04
        FCB     $00,$3D,$1D,$00,$00,$00,$52,$05,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$63
        FCC     "Horns BC  "
        FCB     $00,$08,$00,$01,$00,$08,$00,$08,$00,$00,$00
; Preset B09
        FCB     $11,$04,$00,$06,$0E,$33,$01,$4C,$04,$0B,$0F,$1F,$00
        FCB     $03,$0F,$34,$02,$50,$04,$0B,$10,$0E,$00,$08,$0C,$63
        FCB     $03,$44,$22,$13,$10,$1F,$00,$0A,$0F,$00,$02,$63,$08
        FCB     $0B,$3A,$1E,$11,$0B,$00,$52,$0C,$04,$05,$00,$63,$32
        FCB     $02,$32,$00,$32,$00
        FCC     "MelloTenor0"
        FCB     $30,$20,$30,$20,$10,$00,$20,$00,$00,$00
; Preset B10
        FCB     $10,$1F,$00,$08,$0F,$00,$42,$4A,$00,$03,$11,$1F,$00
        FCB     $08,$0F,$0A,$43,$51,$00,$03,$11,$09,$00,$08,$0D,$00
        FCB     $42,$2B,$16,$06,$10,$1F,$00,$09,$0F,$00,$42,$63,$04
        FCB     $0B,$3A,$1E,$09,$09,$00,$5A,$24,$04,$04,$00,$63,$32
        FCB     $31,$00,$00,$32,$00
        FCC     "RaspAlto  "
        FCB     $00,$10,$00,$20,$00,$54,$00,$20,$00,$00,$00
; Preset B11
        FCB     $10,$16,$00,$06,$07,$00,$42,$49,$07,$03,$19,$1F,$00
        FCB     $07,$0F,$0B,$43,$47,$04,$03,$12,$19,$00,$01,$0F,$0D
        FCB     $42,$3A,$04,$03,$0F,$1F,$00,$09,$0F,$00,$42,$5A,$04
        FCB     $0B,$3B,$1E,$07,$07,$0D,$5E,$24,$02,$04,$00,$63,$1E
        FCB     $40,$32,$00,$32,$00
        FCC     "Flute     "
        FCB     $00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset B12
        FCB     $1B,$12,$00,$09,$0D,$14,$02,$42,$0D,$08,$1F,$14,$00
        FCB     $05,$0E,$00,$42,$40,$08,$10,$19,$14,$00,$06,$06,$00
        FCB     $03,$50,$12,$06,$10,$1F,$00,$08,$0F,$00,$02,$5F,$04
        FCB     $0E,$02,$1E,$0D,$08,$1A,$5E,$18,$04,$04,$00,$63,$32
        FCB     $23,$00,$00,$32,$00
        FCC     "Pan Floot "
        FCB     $00,$00,$00,$00,$00,$20,$00,$00,$00,$00,$00
; Preset B13
        FCB     $10,$17,$00,$06,$0F,$00,$41,$44,$00,$03,$19,$1F,$00
        FCB     $07,$0F,$35,$42,$4E,$00,$03,$10,$1F,$00,$01,$0F,$00
        FCB     $42,$4B,$04,$03,$0F,$1F,$00,$09,$0F,$00,$02,$5B,$08
        FCB     $03,$38,$1F,$08,$07,$0A,$5E,$0C,$02,$04,$00,$63,$23
        FCB     $1E,$32,$00,$32,$00
        FCC     "Bassoon   "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset B14
        FCB     $10,$12,$00,$09,$0D,$05,$01,$51,$00,$03,$12,$14,$00
        FCB     $05,$0E,$23,$41,$5B,$00,$03,$10,$0A,$00,$06,$0D,$30
        FCB     $02,$4B,$08,$1B,$0F,$1A,$00,$0A,$0E,$06,$03,$59,$08
        FCB     $0B,$02,$1F,$11,$08,$0E,$5E,$24,$02,$04,$00,$63,$28
        FCB     $19,$00,$00,$32,$00
        FCC     "Oboe      "
        FCB     $00,$20,$00,$10,$00,$20,$00,$00,$00,$00,$00
; Preset B15
        FCB     $12,$02,$00,$09,$0E,$09,$02,$51,$08,$0B,$0E,$14,$00
        FCB     $05,$0E,$00,$02,$48,$08,$0B,$13,$11,$00,$06,$0B,$00
        FCB     $43,$56,$0A,$0B,$11,$1F,$00,$09,$0F,$00,$02,$59,$04
        FCB     $0B,$02,$1F,$14,$07,$10,$5E,$0C,$02,$04,$00,$63,$32
        FCB     $1E,$00,$00,$32,$00
        FCC     "Clarinet  "
        FCB     $00,$00,$00,$20,$00,$20,$00,$00,$00,$00,$00
; Preset B16
        FCB     $10,$09,$02,$06,$0D,$00,$41,$3E,$04,$15,$0C,$0B,$02
        FCB     $03,$0E,$00,$41,$4F,$04,$12,$0C,$0E,$02,$08,$0D,$00
        FCB     $42,$4B,$0A,$1C,$0D,$0B,$01,$09,$0E,$00,$03,$63,$0A
        FCB     $14,$00,$23,$0F,$02,$1B,$5E,$18,$04,$05,$00,$63,$28
        FCB     $50,$32,$00,$32,$00
        FCC     "Harmonica "
        FCB     $00,$50,$10,$50,$00,$50,$00,$10,$00,$00,$00
; Preset B17
        FCB     $1C,$02,$00,$04,$0E,$63,$00,$4E,$04,$03,$0D,$05,$00
        FCB     $06,$0E,$63,$01,$56,$0A,$08,$12,$07,$00,$06,$09,$63
        FCB     $02,$47,$1B,$0E,$0A,$0A,$00,$05,$0F,$00,$01,$63,$04
        FCB     $0B,$32,$1A,$08,$0D,$00,$52,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "DoubleBass"
        FCB     $00,$10,$00,$00,$00,$03,$00,$00,$05,$00,$00
; Preset B18
        FCB     $1C,$09,$00,$06,$0E,$35,$00,$50,$04,$00,$0D,$0A,$00
        FCB     $06,$0E,$09,$01,$52,$04,$09,$12,$0B,$00,$08,$09,$2C
        FCB     $02,$49,$10,$0E,$0C,$0A,$00,$06,$0F,$00,$01,$63,$04
        FCB     $0B,$2A,$1A,$07,$13,$00,$52,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "BowCello  "
        FCB     $00,$00,$00,$10,$00,$10,$00,$00,$06,$00,$00
; Preset B19
        FCB     $1C,$04,$00,$06,$0E,$0F,$00,$48,$04,$06,$15,$09,$03
        FCB     $04,$0D,$15,$01,$3A,$08,$00,$11,$10,$00,$0B,$09,$0C
        FCB     $02,$51,$16,$06,$0B,$0A,$00,$05,$0F,$05,$01,$63,$08
        FCB     $13,$32,$1D,$06,$0F,$00,$52,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "BoxCello  "
        FCB     $00,$10,$00,$40,$00,$00,$00,$00,$05,$00,$00
; Preset B20
        FCB     $1B,$05,$00,$07,$0E,$0C,$01,$4E,$08,$04,$19,$0B,$06
        FCB     $06,$0F,$49,$02,$3B,$0D,$03,$1C,$11,$10,$0D,$07,$00
        FCB     $03,$4B,$35,$03,$0B,$0A,$00,$06,$0F,$02,$02,$63,$08
        FCB     $13,$3A,$1E,$06,$06,$00,$52,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "SoloViolin"
        FCB     $00,$00,$00,$50,$00,$00,$00,$00,$00,$00,$00
; Preset B21
        FCB     $0B,$04,$00,$04,$0F,$14,$02,$49,$09,$06,$0A,$07,$00
        FCB     $04,$0F,$14,$02,$51,$0A,$00,$08,$1F,$00,$05,$0F,$00
        FCB     $01,$63,$09,$06,$0A,$1F,$00,$05,$0F,$00,$01,$63,$0A
        FCB     $00,$3C,$1F,$06,$09,$00,$52,$05,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "HiString 1"
        FCB     $00,$02,$00,$30,$00,$32,$00,$10,$05,$00,$00
; Preset B22
        FCB     $0B,$04,$00,$04,$0F,$14,$02,$49,$05,$06,$0A,$07,$00
        FCB     $04,$0F,$14,$02,$55,$04,$00,$09,$1F,$00,$05,$0F,$00
        FCB     $01,$63,$09,$06,$08,$1F,$00,$05,$0F,$00,$01,$63,$04
        FCB     $00,$3C,$1D,$06,$0A,$00,$52,$05,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "LowString "
        FCB     $00,$01,$00,$38,$00,$32,$00,$18,$05,$00,$00
; Preset B23
        FCB     $1B,$18,$15,$0F,$0A,$00,$01,$61,$04,$03,$1F,$1F,$00
        FCB     $07,$0C,$00,$01,$54,$04,$06,$1F,$0D,$00,$08,$00,$00
        FCB     $01,$5B,$04,$03,$1F,$10,$00,$06,$00,$00,$01,$63,$04
        FCB     $03,$39,$23,$00,$00,$00,$62,$18,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Pizzicato "
        FCB     $00,$00,$00,$00,$00,$30,$00,$00,$06,$00,$00
; Preset B24
        FCB     $10,$13,$0F,$04,$0A,$00,$03,$3B,$14,$14,$1F,$0E,$08
        FCB     $07,$09,$00,$02,$42,$05,$0E,$18,$13,$0D,$09,$0C,$00
        FCB     $02,$3C,$13,$08,$1F,$11,$07,$04,$0F,$00,$42,$63,$04
        FCB     $10,$3A,$1B,$00,$00,$00,$52,$1D,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Harp      "
        FCB     $08,$00,$00,$21,$00,$00,$00,$08,$00,$00,$00
; Preset B25
        FCB     $0B,$04,$00,$04,$0F,$00,$01,$49,$05,$06,$0A,$07,$00
        FCB     $04,$0F,$00,$01,$49,$04,$00,$09,$1F,$00,$05,$0F,$00
        FCB     $01,$63,$09,$06,$09,$1F,$00,$05,$0F,$00,$01,$63,$0A
        FCB     $00,$3C,$1D,$08,$0A,$00,$52,$05,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "ReverbStrg"
        FCB     $00,$31,$00,$28,$00,$32,$00,$30,$04,$00,$00
; Preset B26
        FCB     $1F,$04,$00,$02,$0F,$0F,$00,$44,$04,$03,$1F,$09,$03
        FCB     $02,$0F,$15,$01,$3A,$08,$00,$1F,$00,$00,$0B,$0F,$0C
        FCB     $02,$44,$08,$06,$1A,$0A,$00,$05,$0F,$05,$01,$5C,$08
        FCB     $13,$3A,$1D,$06,$0F,$00,$52,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "SynString  "
        FCB     $00,$30,$30,$10,$00,$00,$10,$00,$00,$00
; Preset B27
        FCB     $1F,$00,$00,$04,$0F,$00,$00,$39,$20,$03,$0B,$02,$03
        FCB     $01,$0F,$05,$00,$40,$05,$00,$0F,$02,$04,$01,$0F,$08
        FCB     $00,$35,$03,$06,$0E,$00,$01,$06,$0F,$00,$03,$63,$04
        FCB     $03,$7B,$1A,$00,$05,$01,$62,$11,$00,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Voices    "
        FCB     $00,$01,$00,$01,$00,$06,$00,$08,$00,$00,$00
; Preset B28
        FCB     $0A,$1F,$02,$05,$0F,$27,$43,$4D,$05,$06,$0A,$1F,$02
        FCB     $05,$0F,$27,$03,$4F,$04,$00,$0B,$1F,$00,$04,$0F,$00
        FCB     $01,$63,$05,$0E,$0B,$1F,$00,$04,$0F,$00,$01,$63,$04
        FCB     $08,$04,$1C,$0E,$1C,$00,$36,$05,$04,$04,$00,$28,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "HarmoPad  "
        FCB     $04,$41,$00,$48,$00,$31,$07,$38,$04,$00,$00
; Preset B29
        FCB     $1F,$06,$06,$04,$0F,$00,$40,$48,$05,$00,$0C,$08,$07
        FCB     $05,$0F,$05,$00,$52,$04,$00,$0F,$07,$03,$07,$0E,$08
        FCB     $03,$63,$04,$06,$0F,$08,$04,$05,$0F,$00,$03,$63,$04
        FCB     $06,$7C,$1F,$00,$06,$00,$4A,$11,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "FanfarTpts"
        FCB     $06,$01,$00,$38,$00,$08,$00,$48,$00,$00,$00
; Preset B30
        FCB     $17,$04,$00,$04,$0F,$14,$02,$49,$09,$06,$19,$07,$00
        FCB     $04,$0F,$14,$02,$51,$0A,$00,$15,$1F,$00,$05,$0F,$00
        FCB     $01,$63,$09,$06,$14,$1F,$00,$05,$0F,$00,$01,$63,$0A
        FCB     $00,$3C,$1F,$06,$09,$00,$52,$05,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "HiString 20"
        FCB     $02,$20,$30,$00,$32,$00,$10,$05,$00,$00
; Preset B31
        FCB     $1F,$17,$11,$0A,$0D,$00,$02,$55,$13,$09,$1F,$19,$00
        FCB     $01,$0D,$00,$42,$47,$0A,$00,$1F,$14,$09,$09,$0B,$00
        FCB     $02,$5D,$09,$06,$10,$08,$00,$06,$0E,$00,$42,$63,$04
        FCB     $0B,$43,$1C,$04,$0B,$00,$5A,$05,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "PercFlute "
        FCB     $00,$00,$00,$00,$00,$02,$00,$08,$00,$00,$00
; Preset B32
        FCB     $0D,$0B,$00,$01,$0C,$00,$02,$2C,$3D,$03,$0D,$07,$00
        FCB     $01,$0C,$00,$02,$1F,$3C,$03,$0D,$1F,$00,$05,$0F,$00
        FCB     $02,$63,$05,$06,$0D,$1F,$00,$05,$0F,$00,$02,$63,$04
        FCB     $00,$3C,$63,$00,$2F,$00,$53,$11,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "BreathOrgn"
        FCB     $04,$30,$05,$50,$00,$11,$00,$18,$00,$00,$00
; Preset C01
        FCB     $1F,$09,$00,$06,$00,$27,$02,$51,$19,$0B,$1C,$06,$00
        FCB     $08,$00,$37,$02,$47,$0A,$03,$1F,$0A,$00,$09,$00,$3D
        FCB     $02,$4D,$0A,$0E,$1F,$12,$08,$08,$0F,$00,$03,$61,$04
        FCB     $0B,$28,$1F,$00,$03,$00,$52,$0C,$03,$04,$00,$63,$32
        FCB     $01,$32,$00,$32,$00
        FCC     "NylonGuit "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C02
        FCB     $1F,$0E,$0E,$0F,$0F,$00,$03,$48,$2D,$06,$1F,$0F,$04
        FCB     $0F,$0F,$25,$03,$5B,$00,$00,$1F,$12,$06,$0C,$0E,$1C
        FCB     $03,$55,$00,$10,$1F,$13,$07,$08,$0E,$06,$04,$62,$04
        FCB     $0E,$3B,$14,$00,$00,$00,$42,$18,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Guitar #1 "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C03
        FCB     $1F,$0D,$08,$0A,$08,$00,$03,$42,$24,$06,$1F,$1F,$05
        FCB     $0B,$0B,$36,$03,$63,$07,$0E,$1F,$0F,$06,$0B,$0F,$13
        FCB     $03,$63,$00,$10,$1F,$13,$07,$09,$0E,$00,$04,$63,$04
        FCB     $0E,$3B,$14,$00,$00,$00,$42,$18,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "TwelveStrg"
        FCB     $00,$00,$00,$37,$00,$00,$00,$00,$00,$00,$00
; Preset C04
        FCB     $1F,$19,$08,$0A,$03,$00,$03,$63,$10,$18,$1F,$0C,$05
        FCB     $0B,$05,$00,$03,$52,$00,$0B,$1F,$19,$06,$0B,$05,$00
        FCB     $03,$63,$0A,$16,$1F,$0F,$11,$09,$07,$00,$04,$63,$04
        FCB     $03,$3A,$14,$00,$00,$00,$42,$18,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Funky Pick"
        FCB     $00,$30,$00,$00,$00,$00,$00,$00,$07,$00,$00
; Preset C05
        FCB     $1F,$09,$00,$06,$0C,$27,$04,$48,$1C,$0B,$1C,$06,$00
        FCB     $04,$07,$37,$01,$43,$0A,$00,$1F,$0A,$00,$02,$06,$3D
        FCB     $00,$45,$0A,$0E,$1F,$12,$08,$08,$0F,$00,$05,$63,$04
        FCB     $0B,$38,$1F,$00,$03,$00,$52,$0C,$03,$04,$00,$63,$32
        FCB     $01,$32,$00,$32,$00
        FCC     "AllThatJaz"
        FCB     $00,$30,$00,$10,$00,$30,$00,$00,$00,$00,$00
; Preset C06
        FCB     $1F,$08,$00,$03,$0F,$20,$01,$58,$00,$06,$1F,$03,$00
        FCB     $02,$0F,$1B,$01,$4C,$0D,$02,$15,$05,$04,$03,$0F,$1B
        FCB     $00,$5B,$0A,$05,$1F,$0F,$00,$08,$0F,$00,$00,$5C,$04
        FCB     $03,$3A,$1F,$16,$05,$00,$62,$18,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "HeavyMetal"
        FCB     $00,$00,$00,$10,$00,$10,$00,$00,$00,$00,$00
; Preset C07
        FCB     $1E,$17,$00,$04,$0C,$00,$01,$5F,$04,$15,$1F,$0B,$03
        FCB     $01,$0F,$00,$00,$5C,$04,$1E,$1F,$1B,$08,$01,$0C,$00
        FCB     $02,$45,$19,$1E,$1F,$0D,$0B,$06,$09,$00,$03,$63,$0A
        FCB     $10,$2A,$23,$00,$00,$00,$62,$18,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Old Banjo "
        FCB     $00,$00,$00,$10,$00,$00,$00,$00,$00,$00,$00
; Preset C08
        FCB     $1F,$0B,$06,$0A,$0D,$1E,$01,$57,$10,$0B,$1F,$1F,$00
        FCB     $03,$0F,$22,$01,$51,$04,$03,$1F,$0C,$03,$0A,$0A,$14
        FCB     $01,$36,$08,$03,$1F,$18,$06,$08,$0F,$00,$02,$63,$04
        FCB     $03,$30,$23,$00,$00,$00,$62,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Zither    "
        FCB     $00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C09
        FCB     $1F,$01,$00,$08,$04,$00,$03,$3D,$0A,$1E,$1F,$01,$00
        FCB     $08,$00,$00,$00,$43,$00,$10,$1F,$09,$06,$08,$0C,$1B
        FCB     $07,$46,$1C,$1E,$1F,$09,$00,$09,$09,$00,$01,$63,$04
        FCB     $03,$3A,$1C,$00,$00,$00,$52,$0C,$04,$05,$00,$63,$4B
        FCB     $00,$00,$00,$32,$00
        FCC     "ElecBass 1"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C10
        FCB     $1F,$0F,$0F,$0E,$08,$00,$03,$4B,$25,$06,$1F,$0F,$05
        FCB     $0B,$0E,$4E,$03,$5D,$00,$0B,$1F,$13,$06,$08,$0B,$1C
        FCB     $03,$60,$00,$10,$1F,$13,$06,$08,$0E,$00,$04,$63,$04
        FCB     $0E,$3B,$1F,$00,$00,$00,$42,$0C,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "SqncrBass "
        FCB     $03,$60,$00,$70,$00,$00,$00,$00,$00,$00,$00
; Preset C11
        FCB     $1F,$0F,$0F,$0E,$09,$00,$03,$46,$1D,$16,$1F,$0F,$05
        FCB     $0E,$0E,$0D,$03,$63,$00,$0B,$1F,$13,$06,$05,$0D,$1C
        FCB     $03,$63,$00,$00,$1F,$13,$06,$08,$0F,$00,$04,$63,$04
        FCB     $06,$3B,$1F,$00,$00,$00,$42,$0C,$04,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "SynFunkBas"
        FCB     $0D,$6C,$00,$00,$00,$70,$00,$00,$00,$00,$00
; Preset C12
        FCB     $1F,$0E,$00,$0F,$02,$31,$03,$4B,$28,$16,$1F,$06,$00
        FCB     $07,$02,$3B,$00,$4D,$00,$06,$1F,$0A,$00,$0F,$02,$3B
        FCB     $03,$52,$04,$16,$1F,$06,$00,$08,$02,$00,$02,$63,$00
        FCB     $00,$3A,$22,$00,$00,$00,$62,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "ElecBass 2"
        FCB     $00,$10,$00,$10,$00,$00,$00,$00,$00,$00,$00
; Preset C13
        FCB     $1F,$0D,$00,$08,$0C,$1E,$03,$51,$04,$08,$1F,$09,$00
        FCB     $09,$0A,$00,$01,$53,$00,$00,$1F,$0C,$00,$0A,$0B,$00
        FCB     $01,$4A,$00,$06,$1F,$1F,$00,$0C,$0F,$00,$02,$63,$00
        FCB     $03,$3A,$23,$00,$00,$00,$62,$0C,$04,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "AnalogBass"
        FCB     $00,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00
; Preset C14
        FCB     $07,$02,$00,$08,$0F,$00,$00,$43,$04,$03,$10,$0B,$00
        FCB     $08,$0C,$00,$00,$50,$00,$0E,$15,$0B,$0F,$08,$0B,$00
        FCB     $01,$51,$00,$08,$11,$08,$00,$08,$0B,$00,$01,$63,$00
        FCB     $03,$38,$19,$08,$06,$00,$62,$0C,$04,$05,$14,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Jaco Bass "
        FCB     $00,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C15
        FCB     $1F,$10,$07,$08,$03,$00,$03,$4F,$04,$03,$1F,$09,$00
        FCB     $08,$00,$00,$01,$4A,$00,$0B,$1F,$11,$00,$08,$00,$00
        FCB     $01,$47,$04,$08,$1F,$09,$00,$08,$00,$00,$00,$63,$00
        FCB     $0B,$39,$19,$00,$07,$00,$52,$0C,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "LatelyBass"
        FCB     $02,$00,$00,$00,$00,$40,$00,$00,$00,$00,$00
; Preset C16
        FCB     $1F,$01,$00,$08,$0A,$00,$03,$43,$0A,$1E,$1F,$01,$00
        FCB     $08,$07,$00,$00,$46,$00,$10,$1F,$09,$06,$08,$0F,$1B
        FCB     $07,$4A,$04,$1E,$1F,$09,$00,$09,$0F,$00,$01,$63,$04
        FCB     $03,$3A,$1C,$00,$00,$00,$52,$0C,$04,$0D,$00,$63,$4B
        FCB     $00,$00,$00,$32,$00
        FCC     "MonophBass"
        FCB     $00,$00,$00,$00,$00,$50,$00,$00,$00,$00,$00
; Preset C17
        FCB     $1F,$08,$00,$03,$0F,$20,$01,$4E,$00,$06,$1F,$03,$00
        FCB     $02,$0F,$1B,$01,$48,$0D,$02,$1F,$05,$04,$03,$0F,$1B
        FCB     $00,$3C,$2A,$05,$1E,$0F,$00,$09,$0F,$00,$00,$5C,$04
        FCB     $03,$3A,$1F,$16,$05,$00,$62,$18,$07,$0C,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "StadiumSol"
        FCB     $00,$00,$00,$10,$00,$10,$00,$00,$00,$00,$00
; Preset C18
        FCB     $13,$00,$00,$04,$0F,$00,$00,$3A,$0B,$06,$0F,$1F,$03
        FCB     $0A,$0F,$05,$01,$5D,$05,$00,$11,$0E,$06,$0A,$09,$08
        FCB     $00,$36,$03,$06,$13,$1F,$01,$08,$0F,$00,$02,$63,$04
        FCB     $03,$3B,$1D,$03,$0F,$01,$42,$11,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "TrumptSolo"
        FCB     $00,$61,$00,$11,$00,$06,$00,$08,$07,$00,$00
; Preset C19
        FCB     $1D,$04,$00,$06,$0E,$00,$01,$51,$04,$09,$1D,$1F,$00
        FCB     $03,$0F,$11,$01,$4B,$04,$08,$1D,$0F,$00,$08,$0A,$00
        FCB     $01,$46,$27,$0B,$10,$1F,$00,$0A,$0F,$00,$3B,$63,$08
        FCB     $0B,$3A,$1E,$17,$0C,$00,$52,$18,$02,$0D,$0F,$63,$32
        FCB     $01,$00,$00,$32,$63
        FCC     "BCSexyPhon"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C20
        FCB     $10,$06,$00,$05,$0E,$00,$01,$50,$0A,$04,$1F,$04,$00
        FCB     $05,$0F,$00,$01,$51,$04,$02,$1F,$0B,$00,$0A,$0F,$00
        FCB     $01,$35,$08,$03,$10,$1F,$00,$0A,$0F,$00,$02,$63,$04
        FCB     $03,$30,$1E,$00,$00,$00,$52,$18,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Lyrisyn   "
        FCB     $00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C21
        FCB     $1F,$06,$00,$03,$0F,$00,$01,$4F,$03,$06,$1F,$0E,$00
        FCB     $03,$0F,$00,$01,$50,$05,$00,$12,$0E,$00,$07,$0F,$00
        FCB     $02,$63,$03,$00,$16,$0E,$00,$07,$0F,$00,$02,$63,$05
        FCB     $06,$34,$20,$00,$00,$00,$52,$05,$07,$0C,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "WarmSquare"
        FCB     $00,$26,$00,$51,$00,$06,$00,$01,$00,$00,$00
; Preset C22
        FCB     $13,$12,$00,$09,$0D,$22,$00,$51,$00,$0B,$1F,$14,$00
        FCB     $05,$08,$24,$40,$5C,$00,$03,$1F,$11,$00,$06,$0C,$2C
        FCB     $00,$53,$09,$00,$10,$1F,$00,$0B,$0F,$00,$00,$5C,$0A
        FCB     $0E,$3A,$22,$11,$0E,$1E,$5E,$18,$07,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Sync Lead "
        FCB     $00,$70,$00,$40,$00,$02,$00,$00,$00,$00,$00
; Preset C23
        FCB     $1F,$06,$00,$03,$0F,$00,$02,$4F,$09,$00,$1F,$0E,$00
        FCB     $03,$0F,$00,$02,$55,$0A,$06,$15,$12,$00,$07,$0F,$00
        FCB     $01,$63,$05,$06,$14,$0E,$00,$07,$0F,$00,$01,$63,$04
        FCB     $00,$34,$20,$00,$00,$00,$52,$05,$07,$0C,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "MellowSqar"
        FCB     $00,$02,$00,$00,$00,$01,$00,$08,$00,$00,$00
; Preset C24
        FCB     $13,$1E,$00,$09,$0E,$00,$00,$63,$3F,$0B,$1F,$14,$00
        FCB     $05,$0E,$24,$01,$51,$04,$03,$1F,$14,$00,$0F,$01,$00
        FCB     $41,$4D,$08,$03,$0F,$1F,$00,$0B,$0F,$00,$02,$63,$04
        FCB     $0B,$3B,$20,$11,$12,$33,$56,$18,$04,$04,$00,$63,$37
        FCB     $0E,$00,$00,$32,$00
        FCC     "Jazz Flute"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C25
        FCB     $11,$06,$08,$0F,$0A,$2F,$00,$4D,$04,$03,$1F,$1F,$00
        FCB     $0F,$0F,$00,$00,$50,$00,$03,$1F,$0C,$00,$0F,$0D,$00
        FCB     $00,$4E,$00,$03,$1F,$1F,$00,$0F,$0F,$00,$00,$5A,$00
        FCB     $03,$30,$20,$27,$06,$00,$62,$18,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "HeavyLead "
        FCB     $00,$00,$00,$10,$00,$40,$00,$00,$00,$00,$00
; Preset C26
        FCB     $15,$13,$0D,$03,$0D,$1E,$02,$50,$18,$0E,$15,$14,$09
        FCB     $04,$0C,$1E,$02,$56,$11,$08,$1B,$1F,$0F,$07,$0F,$00
        FCB     $01,$63,$04,$06,$1A,$1F,$0E,$06,$0F,$00,$02,$63,$04
        FCB     $00,$7C,$0B,$00,$08,$00,$62,$18,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Java Jive "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C27
        FCB     $1F,$16,$00,$09,$05,$00,$01,$5A,$08,$03,$1F,$17,$10
        FCB     $05,$05,$00,$01,$56,$10,$13,$1F,$1F,$12,$07,$0F,$00
        FCB     $01,$63,$04,$03,$1F,$1F,$0F,$07,$0F,$00,$02,$63,$04
        FCB     $03,$2A,$23,$00,$00,$00,$62,$18,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Xylophone "
        FCB     $00,$00,$00,$60,$00,$00,$00,$00,$00,$00,$00
; Preset C28
        FCB     $1F,$14,$07,$07,$0D,$00,$43,$63,$04,$06,$1F,$10,$15
        FCB     $06,$00,$00,$43,$63,$2A,$0E,$1F,$14,$0B,$07,$0D,$00
        FCB     $43,$63,$0D,$06,$1F,$14,$07,$07,$0D,$00,$43,$63,$04
        FCB     $00,$07,$16,$00,$00,$2A,$66,$0C,$02,$04,$00,$63,$08
        FCB     $32,$00,$00,$32,$00
        FCC     "GreatVibes"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset C29
        FCB     $17,$0E,$09,$01,$0E,$02,$00,$47,$04,$1B,$1F,$06,$03
        FCB     $01,$05,$00,$00,$4B,$08,$16,$1F,$06,$04,$01,$07,$00
        FCB     $00,$5E,$04,$16,$1F,$05,$08,$01,$07,$00,$01,$5F,$08
        FCB     $18,$3B,$21,$00,$05,$00,$42,$18,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Sitar     "
        FCB     $00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00
; Preset C30
        FCB     $12,$0B,$0F,$04,$07,$00,$40,$43,$1C,$00,$1F,$08,$07
        FCB     $07,$0F,$05,$00,$63,$05,$00,$0E,$07,$02,$07,$0F,$08
        FCB     $03,$5C,$00,$06,$15,$08,$04,$05,$0F,$00,$03,$63,$03
        FCB     $06,$7E,$1F,$00,$06,$00,$4A,$1D,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Bell Pad  "
        FCB     $06,$30,$00,$51,$00,$04,$00,$56,$06,$00,$00
; Preset C31
        FCB     $1F,$14,$0E,$07,$04,$00,$04,$5B,$30,$16,$1F,$12,$04
        FCB     $0A,$06,$00,$04,$61,$04,$10,$1F,$0F,$03,$05,$0B,$00
        FCB     $02,$5E,$04,$10,$1F,$0B,$03,$06,$0B,$00,$02,$63,$04
        FCB     $16,$03,$1B,$0B,$05,$00,$52,$0C,$04,$04,$00,$32,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "PlasticHit"
        FCB     $00,$30,$00,$50,$00,$50,$07,$40,$00,$00,$00
; Preset C32
        FCB     $1F,$0C,$05,$05,$0C,$17,$02,$53,$0A,$08,$1F,$11,$02
        FCB     $05,$0D,$1E,$02,$45,$04,$00,$1F,$13,$0E,$05,$0D,$32
        FCB     $01,$3F,$1F,$06,$1F,$1F,$08,$06,$0F,$00,$02,$61,$04
        FCB     $16,$39,$1D,$00,$00,$00,$52,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "DigiAnnie "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset D01
        FCB     $1F,$00,$00,$04,$0F,$00,$40,$63,$3C,$00,$0B,$08,$07
        FCB     $07,$0F,$05,$00,$63,$04,$06,$0F,$05,$03,$07,$0F,$08
        FCB     $00,$3B,$05,$06,$0E,$08,$04,$05,$0F,$00,$03,$63,$03
        FCB     $00,$7E,$1D,$06,$0F,$00,$4A,$11,$00,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "BaadBreath"
        FCB     $06,$30,$00,$38,$00,$01,$00,$46,$00,$00,$00
; Preset D02
        FCB     $1F,$00,$00,$04,$0F,$00,$40,$47,$2F,$00,$0E,$08,$07
        FCB     $07,$0F,$05,$00,$4C,$00,$06,$13,$1C,$0D,$0C,$06,$08
        FCB     $00,$63,$05,$06,$14,$11,$0D,$0B,$00,$00,$03,$63,$04
        FCB     $00,$7A,$10,$00,$51,$00,$68,$17,$00,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "VocalNuts "
        FCB     $06,$30,$00,$30,$00,$01,$00,$10,$00,$00,$00
; Preset D03
        FCB     $1F,$00,$06,$04,$0F,$00,$40,$43,$18,$00,$0B,$08,$07
        FCB     $07,$0F,$05,$00,$63,$04,$06,$0F,$07,$08,$07,$0F,$08
        FCB     $00,$59,$05,$06,$0E,$08,$04,$05,$0F,$00,$03,$63,$03
        FCB     $00,$7E,$22,$00,$0F,$00,$4A,$1D,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "KrstlChoir"
        FCB     $00,$38,$00,$38,$00,$01,$00,$46,$00,$00,$00
; Preset D04
        FCB     $1F,$17,$00,$05,$05,$1C,$02,$55,$28,$0B,$1F,$10,$00
        FCB     $04,$08,$0A,$02,$4D,$15,$0E,$1F,$0B,$00,$05,$08,$0C
        FCB     $02,$4D,$16,$08,$1F,$0E,$00,$06,$00,$00,$01,$63,$04
        FCB     $0B,$02,$23,$00,$00,$00,$62,$0C,$07,$04,$00,$63,$63
        FCB     $00,$00,$00,$32,$00
        FCC     "Metalimba "
        FCB     $00,$60,$00,$01,$00,$00,$00,$10,$00,$00,$00
; Preset D05
        FCB     $1F,$1F,$00,$05,$0F,$00,$00,$41,$32,$03,$1F,$14,$10
        FCB     $05,$05,$01,$02,$63,$07,$03,$1F,$0B,$12,$08,$0F,$00
        FCB     $01,$63,$0C,$03,$1F,$1F,$0F,$08,$0F,$00,$01,$63,$04
        FCB     $03,$39,$23,$00,$00,$00,$62,$18,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "WaterGlass"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$07,$00,$00
; Preset D06
        FCB     $0B,$04,$05,$04,$0F,$00,$42,$55,$22,$06,$0A,$07,$04
        FCB     $04,$0F,$00,$02,$47,$0A,$00,$0B,$1F,$02,$04,$0F,$00
        FCB     $02,$63,$0D,$06,$0B,$1F,$02,$05,$0F,$00,$02,$62,$04
        FCB     $00,$1C,$1E,$06,$11,$09,$5A,$0C,$04,$04,$00,$63,$28
        FCB     $00,$00,$00,$32,$00
        FCC     "BowedBell "
        FCB     $00,$10,$00,$00,$00,$00,$00,$00,$04,$00,$00
; Preset D07
        FCB     $1F,$0C,$0D,$08,$0A,$00,$01,$45,$04,$03,$1F,$10,$00
        FCB     $04,$0F,$00,$00,$4C,$00,$03,$0F,$04,$02,$0A,$0A,$00
        FCB     $01,$55,$00,$03,$1F,$1F,$00,$0C,$0F,$00,$02,$63,$04
        FCB     $03,$39,$23,$00,$00,$00,$62,$0C,$02,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     ">>WOW<<   "
        FCB     $00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$00
; Preset D08
        FCB     $16,$02,$00,$04,$06,$09,$01,$4F,$08,$00,$19,$0E,$01
        FCB     $04,$00,$20,$01,$43,$19,$00,$1F,$12,$10,$06,$07,$00
        FCB     $00,$54,$3D,$03,$16,$0D,$06,$06,$02,$1E,$03,$61,$08
        FCB     $0E,$3A,$20,$01,$14,$00,$42,$0C,$02,$04,$02,$63,$63
        FCB     $63,$00,$00,$32,$00
        FCC     "Fuzzy Koto"
        FCB     $00,$00,$00,$00,$0B,$50,$00,$00,$05,$00,$00
; Preset D09
        FCB     $04,$07,$00,$09,$0D,$22,$00,$4B,$3D,$08,$14,$14,$00
        FCB     $05,$0B,$24,$41,$52,$08,$00,$15,$03,$00,$06,$06,$00
        FCB     $01,$60,$14,$06,$05,$15,$00,$08,$0F,$00,$04,$63,$00
        FCB     $06,$7B,$1F,$0D,$0E,$1E,$0E,$18,$0C,$04,$00,$63,$32
        FCB     $00,$32,$00,$32,$00
        FCC     "Spc Midiot"
        FCB     $08,$70,$00,$00,$00,$10,$00,$00,$05,$00,$00
; Preset D10
        FCB     $1F,$11,$00,$01,$0F,$47,$00,$44,$06,$06,$19,$0B,$01
        FCB     $01,$0F,$00,$40,$55,$00,$05,$01,$10,$00,$06,$0F,$18
        FCB     $00,$63,$08,$00,$02,$03,$00,$06,$0F,$00,$00,$63,$0C
        FCB     $01,$3C,$27,$36,$1B,$44,$7F,$0C,$07,$04,$00,$63,$63
        FCB     $00,$32,$00,$32,$00
        FCC     "Gurgle    "
        FCB     $1B,$00,$00,$00,$08,$70,$08,$10,$00,$00,$00
; Preset D11
        FCB     $1F,$14,$00,$01,$0B,$00,$40,$54,$11,$03,$15,$07,$00
        FCB     $0F,$0E,$2E,$00,$33,$27,$0B,$14,$0C,$11,$05,$0A,$00
        FCB     $40,$58,$0D,$0A,$1F,$12,$10,$0B,$00,$01,$00,$62,$10
        FCB     $0B,$3C,$3A,$00,$63,$50,$5F,$18,$05,$04,$00,$63,$00
        FCB     $00,$00,$00,$32,$00
        FCC     "Hole in 1 "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset D12
        FCB     $1F,$1F,$00,$07,$0F,$28,$00,$51,$01,$03,$1F,$1F,$00
        FCB     $0F,$0F,$28,$00,$4B,$01,$03,$13,$1F,$00,$0E,$0F,$0A
        FCB     $40,$63,$3F,$03,$1F,$1F,$00,$0F,$0F,$0A,$40,$63,$3F
        FCB     $03,$04,$22,$00,$50,$5E,$6E,$0C,$0C,$04,$00,$63,$63
        FCB     $63,$00,$00,$33,$00
        FCC     "Birds     "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset D13
        FCB     $1F,$1F,$00,$01,$0F,$00,$00,$63,$3F,$03,$1F,$1F,$00
        FCB     $01,$0F,$00,$00,$63,$29,$03,$1F,$1F,$00,$03,$0F,$00
        FCB     $00,$63,$35,$03,$0B,$16,$00,$07,$0F,$00,$40,$5B,$00
        FCB     $03,$38,$05,$00,$42,$5A,$6E,$00,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "MalibuNite"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset D14
        FCB     $0D,$1F,$00,$01,$0F,$28,$40,$5C,$00,$03,$1F,$1F,$00
        FCB     $01,$0F,$28,$40,$62,$00,$03,$0E,$1F,$00,$04,$0F,$0A
        FCB     $40,$63,$29,$03,$0E,$1F,$00,$04,$0F,$0A,$00,$63,$16
        FCB     $03,$3C,$33,$00,$00,$5B,$6E,$18,$0C,$04,$00,$63,$63
        FCB     $63,$00,$00,$32,$00
        FCC     "Helicopter"
        FCB     $00,$00,$00,$20,$08,$00,$08,$00,$00,$00,$00
; Preset D15
        FCB     $1F,$1F,$00,$04,$0F,$00,$00,$49,$04,$03,$1F,$1F,$00
        FCB     $01,$0F,$32,$00,$59,$04,$03,$1F,$1F,$00,$05,$0F,$3B
        FCB     $40,$43,$10,$03,$0E,$1F,$00,$06,$0F,$00,$00,$5C,$0D
        FCB     $03,$3A,$39,$00,$00,$63,$6A,$00,$0C,$0C,$63,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Flight Sim"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$2D,$00
; Preset D16
        FCB     $1C,$08,$00,$03,$0E,$00,$01,$55,$12,$03,$1C,$07,$00
        FCB     $01,$0E,$2E,$01,$58,$27,$0B,$0E,$04,$00,$02,$0A,$00
        FCB     $02,$63,$04,$0A,$0D,$09,$00,$02,$0C,$01,$02,$63,$10
        FCB     $0B,$04,$54,$00,$47,$00,$53,$18,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Brthbells "
        FCB     $00,$04,$00,$40,$00,$40,$00,$00,$00,$00,$00
; Preset D17
        FCB     $12,$08,$01,$03,$05,$00,$01,$43,$0A,$00,$14,$0B,$04
        FCB     $01,$09,$00,$01,$60,$11,$00,$14,$07,$01,$03,$05,$00
        FCB     $01,$63,$00,$00,$0F,$06,$00,$01,$0C,$00,$02,$63,$00
        FCB     $00,$33,$63,$00,$63,$00,$73,$00,$05,$04,$00,$63,$63
        FCB     $63,$00,$00,$32,$00
        FCC     "Storm Wind"
        FCB     $00,$50,$00,$10,$00,$00,$00,$40,$00,$00,$00
; Preset D18
        FCB     $1F,$1F,$00,$03,$0F,$00,$00,$2E,$3F,$00,$1F,$1F,$00
        FCB     $04,$0F,$00,$00,$47,$11,$06,$1F,$1F,$00,$06,$0F,$00
        FCB     $40,$3A,$0B,$00,$1F,$1F,$00,$06,$0F,$00,$40,$5C,$3F
        FCB     $06,$22,$37,$00,$00,$28,$6D,$18,$04,$04,$00,$63,$01
        FCB     $63,$00,$00,$32,$00
        FCC     "Alarm Call"
        FCB     $00,$40,$0E,$50,$00,$00,$0A,$0F,$00,$00,$00
; Preset D19
        FCB     $1F,$1F,$00,$02,$0F,$00,$00,$47,$00,$03,$1F,$1F,$00
        FCB     $01,$0F,$00,$00,$35,$04,$03,$1F,$1F,$00,$03,$0F,$00
        FCB     $00,$5B,$01,$03,$15,$1F,$00,$03,$0F,$00,$00,$63,$04
        FCB     $03,$3A,$05,$00,$3C,$00,$62,$18,$0C,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Racing Car"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset D20
        FCB     $1F,$0F,$00,$08,$00,$00,$04,$4E,$07,$03,$19,$10,$00
        FCB     $09,$08,$00,$00,$38,$01,$03,$0F,$09,$00,$08,$0F,$00
        FCB     $02,$4E,$08,$03,$0D,$08,$00,$09,$0E,$1A,$02,$5E,$08
        FCB     $03,$3C,$23,$03,$0F,$00,$62,$18,$02,$04,$00,$63,$32
        FCB     $00,$00,$00,$33,$00
        FCC     "Whistling "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset D21
        FCB     $05,$1F,$01,$01,$0F,$60,$44,$63,$0B,$03,$06,$1F,$03
        FCB     $01,$0F,$02,$42,$63,$06,$03,$0B,$1F,$04,$01,$0F,$03
        FCB     $42,$63,$09,$03,$08,$1F,$02,$09,$0F,$01,$42,$63,$04
        FCB     $04,$05,$32,$00,$63,$00,$6D,$18,$05,$04,$3C,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Space Talk"
        FCB     $00,$70,$00,$40,$00,$60,$00,$00,$00,$00,$00
; Preset D22
        FCB     $19,$0F,$0F,$07,$0F,$05,$00,$62,$0D,$00,$19,$00,$0F
        FCB     $07,$0F,$05,$01,$63,$04,$00,$19,$00,$0F,$07,$0F,$05
        FCB     $02,$63,$0D,$06,$1F,$00,$06,$02,$0F,$05,$01,$63,$04
        FCB     $06,$47,$23,$00,$4B,$00,$71,$1E,$0C,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Space Vibe"
        FCB     $00,$10,$00,$00,$00,$50,$00,$50,$00,$00,$00
; Preset D23
        FCB     $1D,$12,$00,$03,$00,$00,$00,$41,$3C,$03,$1F,$0F,$07
        FCB     $04,$0F,$00,$00,$3C,$00,$03,$1F,$0F,$11,$03,$0C,$3B
        FCB     $01,$52,$02,$03,$1F,$11,$0C,$04,$0F,$00,$02,$63,$00
        FCB     $03,$3A,$15,$00,$03,$00,$6A,$0C,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Timpani   "
        FCB     $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset D24
        FCB     $1F,$0C,$00,$05,$0F,$00,$00,$63,$3B,$03,$1F,$09,$00
        FCB     $04,$0F,$00,$38,$4B,$16,$03,$1F,$0C,$00,$06,$0F,$00
        FCB     $00,$56,$16,$03,$1F,$0D,$1F,$0F,$04,$00,$02,$63,$08
        FCB     $03,$3B,$00,$00,$00,$00,$62,$18,$0C,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "FM Hi-Hats"
        FCB     $00,$70,$00,$30,$00,$00,$00,$00,$00,$00,$00
; Preset D25
        FCB     $1F,$1F,$13,$03,$00,$00,$00,$5F,$2D,$06,$1F,$12,$13
        FCB     $02,$00,$00,$01,$52,$00,$02,$1F,$14,$13,$03,$00,$00
        FCB     $02,$56,$1C,$05,$1E,$14,$13,$0F,$00,$00,$00,$63,$00
        FCB     $03,$3B,$63,$00,$00,$00,$03,$0D,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Bass Drum "
        FCB     $08,$00,$00,$00,$08,$00,$00,$00,$06,$00,$00
; Preset D26
        FCB     $1A,$04,$01,$01,$0B,$16,$00,$47,$05,$03,$15,$0E,$00
        FCB     $01,$0D,$00,$00,$4C,$05,$16,$1C,$06,$04,$02,$07,$00
        FCB     $00,$63,$04,$16,$18,$18,$03,$01,$0E,$00,$00,$5E,$04
        FCB     $10,$24,$07,$00,$04,$00,$62,$24,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Tube Bells"
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset D27
        FCB     $1F,$1F,$13,$03,$00,$00,$00,$5F,$3D,$06,$1F,$12,$13
        FCB     $02,$00,$00,$01,$52,$05,$02,$1F,$14,$13,$03,$00,$00
        FCB     $01,$56,$28,$05,$1E,$0B,$13,$0F,$09,$00,$00,$63,$06
        FCB     $03,$3B,$63,$00,$63,$00,$73,$23,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Noise Shot"
        FCB     $08,$00,$00,$00,$08,$00,$00,$00,$06,$00,$00
; Preset D28
        FCB     $1F,$1F,$00,$05,$0F,$00,$00,$62,$32,$03,$1F,$14,$08
        FCB     $05,$08,$00,$00,$5F,$00,$0B,$1F,$1F,$10,$08,$0F,$0C
        FCB     $00,$63,$0B,$1B,$1F,$1F,$0F,$08,$0F,$00,$00,$63,$05
        FCB     $0B,$3B,$23,$00,$00,$00,$62,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Snare 1   "
        FCB     $08,$00,$00,$02,$00,$00,$08,$00,$00,$00,$00
; Preset D29
        FCB     $1F,$00,$00,$05,$0F,$00,$00,$63,$32,$03,$1F,$14,$08
        FCB     $05,$08,$00,$01,$63,$02,$0B,$1F,$04,$10,$08,$0F,$00
        FCB     $00,$63,$0B,$0B,$1F,$1F,$0F,$08,$0F,$00,$00,$63,$05
        FCB     $0B,$3C,$23,$00,$00,$00,$62,$0C,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Snare 2   "
        FCB     $07,$60,$00,$00,$00,$70,$08,$00,$07,$00,$00
; Preset D30
        FCB     $1F,$16,$00,$03,$07,$00,$01,$50,$00,$03,$1F,$18,$03
        FCB     $03,$03,$22,$00,$63,$00,$14,$1D,$07,$06,$03,$06,$00
        FCB     $01,$3C,$08,$03,$1F,$05,$07,$03,$00,$00,$01,$63,$04
        FCB     $1B,$39,$23,$00,$08,$00,$42,$18,$04,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Hand Drum "
        FCB     $00,$01,$00,$03,$00,$01,$00,$01,$03,$00,$00
; Preset D31
        FCB     $1F,$1F,$00,$01,$0E,$00,$41,$62,$36,$03,$19,$16,$00
        FCB     $01,$0B,$00,$41,$5F,$05,$0B,$15,$1C,$06,$01,$0B,$00
        FCB     $41,$58,$39,$13,$1F,$1F,$05,$02,$08,$00,$41,$63,$18
        FCB     $13,$29,$00,$02,$00,$03,$52,$12,$05,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Synballs  "
        FCB     $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; Preset D32
        FCB     $1F,$12,$13,$03,$05,$00,$00,$5F,$3D,$06,$1F,$10,$0B
        FCB     $02,$05,$00,$01,$52,$05,$02,$1F,$0F,$0E,$03,$06,$00
        FCB     $01,$56,$28,$05,$1E,$09,$0D,$06,$09,$00,$00,$63,$06
        FCB     $03,$3C,$63,$00,$63,$00,$63,$20,$07,$04,$00,$63,$32
        FCB     $00,$00,$00,$32,$00
        FCC     "Efem Toms "
        FCB     $08,$00,$00,$00,$08,$00,$00,$00,$07,$00,$00

; Performance table - 24 x 76 bytes each

; Performance 01
PERFORM_TABLE FCB     $61,$60,$20,$00,$7F,$07,$18,$63,$61,$60,$20,$00,$7F
        FCB     $05,$18,$63,$61,$60,$20,$00,$7F,$09,$18,$63,$61,$60
        FCB     $20,$00,$7F,$06,$18,$63,$61,$60,$20,$00,$7F,$08,$18
        FCB     $63,$61,$60,$20,$00,$7F,$04,$18,$63,$61,$60,$20,$00
        FCB     $7F,$08,$18,$63,$61,$60,$20,$00,$7F,$05,$18,$63,$00
        FCB     $03
        FCC     "AcustcGuit"
; Performance 02
        FCB     $24,$5E,$20,$00,$7F,$03,$18,$43,$44,$4B,$40,$00,$7F
        FCB     $0B,$0C,$63,$60,$14,$20,$00,$7F,$05,$18,$63,$60,$14
        FCB     $40,$00,$7F,$07,$18,$63,$60,$14,$60,$00,$7F,$09,$18
        FCB     $63,$60,$14,$20,$00,$7F,$05,$18,$63,$60,$14,$40,$00
        FCB     $7F,$07,$18,$63,$60,$14,$20,$00,$7F,$08,$18,$63,$00
        FCB     $02
        FCC     "HolloFlute"
; Performance 03
        FCB     $66,$49,$20,$3D,$7F,$07,$00,$5A,$62,$6D,$40,$00,$3C
        FCB     $07,$24,$5A,$60,$0D,$20,$00,$7F,$0E,$18,$5A,$60,$0E
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $02
        FCC     "Bass/Sax  "
; Performance 04
        FCB     $64,$40,$40,$00,$7F,$06,$18,$45,$64,$45,$20,$00,$7F
        FCB     $09,$18,$63,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $06
        FCC     "FanfareBrs"
; Performance 05
        FCB     $24,$2C,$20,$00,$7F,$0A,$18,$63,$44,$2C,$40,$00,$7F
        FCB     $04,$18,$63,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $04
        FCC     "Chorus EP "
; Performance 06
        FCB     $21,$4A,$20,$00,$7F,$07,$0C,$5E,$41,$4E,$40,$00,$7F
        FCB     $05,$18,$5C,$21,$4D,$60,$00,$7F,$06,$0C,$5F,$41,$44
        FCB     $60,$00,$7F,$08,$18,$63,$21,$43,$60,$00,$7F,$0A,$18
        FCB     $5C,$41,$42,$60,$00,$7F,$04,$18,$63,$21,$40,$60,$00
        FCB     $7F,$06,$18,$54,$41,$41,$60,$00,$7F,$08,$18,$63,$00
        FCB     $01
        FCC     "Wind Band "
; Performance 07
        FCB     $24,$5D,$20,$00,$7F,$04,$18,$63,$44,$5D,$40,$00,$7F
        FCB     $0A,$18,$63,$20,$55,$60,$00,$7F,$04,$24,$63,$40,$55
        FCB     $40,$00,$7F,$0A,$24,$63,$60,$14,$60,$00,$7F,$09,$18
        FCB     $63,$60,$14,$20,$00,$7F,$05,$18,$63,$60,$14,$40,$00
        FCB     $7F,$07,$18,$63,$60,$14,$20,$00,$7F,$08,$18,$63,$00
        FCB     $00
        FCC     "HiStrings "
; Performance 08
        FCB     $21,$75,$20,$00,$7F,$0B,$0C,$4D,$41,$75,$20,$00,$7F
        FCB     $03,$18,$52,$21,$75,$20,$00,$7F,$09,$18,$52,$41,$75
        FCB     $20,$00,$7F,$05,$18,$52,$41,$78,$20,$00,$7F,$02,$0C
        FCB     $4D,$21,$78,$20,$00,$7F,$0C,$18,$52,$41,$78,$20,$00
        FCB     $7F,$01,$18,$52,$21,$78,$20,$00,$7F,$0D,$18,$52,$00
        FCB     $02
        FCC     "BigTimLead"
; Performance 09
        FCB     $24,$56,$20,$00,$7F,$05,$30,$55,$44,$57,$40,$00,$7F
        FCB     $09,$18,$5B,$60,$14,$20,$00,$7F,$05,$18,$63,$60,$14
        FCB     $40,$00,$7F,$07,$18,$63,$60,$14,$60,$00,$7F,$09,$18
        FCB     $63,$60,$14,$20,$00,$7F,$05,$18,$63,$60,$14,$40,$00
        FCB     $7F,$07,$18,$63,$60,$14,$20,$00,$7F,$08,$18,$63,$00
        FCB     $02
        FCC     "PluckDelay"
; Performance 10
        FCB     $72,$00,$20,$00,$7F,$07,$58,$63,$73,$02,$40,$00,$7F
        FCB     $02,$58,$32,$63,$5A,$60,$00,$7F,$0E,$18,$5B,$70,$15
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$06
        FCB     $04
        FCC     "Elec Choir"
; Performance 11
        FCB     $61,$6D,$20,$00,$3C,$07,$24,$3D,$25,$64,$40,$3D,$4E
        FCB     $07,$18,$63,$42,$77,$60,$4F,$7F,$07,$18,$62,$60,$00
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $00
        FCC     "Bs~Gtr~Flt"
; Performance 12
        FCB     $61,$21,$20,$00,$7F,$07,$18,$5A,$61,$21,$20,$00,$7F
        FCB     $0A,$18,$5A,$61,$21,$20,$00,$7F,$04,$18,$5A,$61,$21
        FCB     $20,$00,$7F,$0C,$18,$5A,$61,$21,$20,$00,$7F,$02,$18
        FCB     $5A,$61,$21,$20,$00,$7F,$08,$18,$5A,$61,$21,$20,$00
        FCB     $7F,$06,$18,$5A,$61,$21,$20,$00,$7F,$0C,$18,$5A,$00
        FCB     $01
        FCC     "HonkyGrand"
; Performance 13
        FCB     $24,$59,$20,$00,$7F,$03,$18,$5C,$44,$59,$40,$00,$7F
        FCB     $0B,$18,$5C,$20,$07,$20,$00,$7F,$03,$18,$5A,$40,$07
        FCB     $20,$00,$7F,$0E,$18,$5A,$20,$07,$20,$00,$7F,$00,$18
        FCB     $5A,$40,$07,$20,$00,$7F,$0E,$18,$5A,$20,$07,$20,$00
        FCB     $7F,$02,$18,$5A,$60,$07,$20,$00,$7F,$0C,$18,$5A,$00
        FCB     $00
        FCC     "SynStrings"
; Performance 14
        FCB     $24,$3D,$20,$00,$7F,$04,$18,$5A,$44,$3E,$40,$00,$7F
        FCB     $0A,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $04
        FCC     "Ice Cream "
; Performance 15
        FCB     $24,$38,$20,$00,$7F,$04,$18,$58,$44,$38,$20,$00,$7F
        FCB     $09,$18,$58,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $00
        FCC     "Thin Clav "
; Performance 16
        FCB     $64,$4A,$20,$00,$7F,$05,$4C,$63,$64,$5F,$40,$00,$7F
        FCB     $0A,$58,$63,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$06
        FCB     $02
        FCC     "AmazonFlt "
; Performance 17
        FCB     $64,$7E,$20,$00,$7F,$05,$18,$5B,$64,$2C,$40,$00,$7F
        FCB     $09,$18,$63,$60,$1B,$20,$00,$7F,$09,$2B,$5A,$60,$1B
        FCB     $20,$00,$7F,$08,$30,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $02
        FCC     "RubberBand"
; Performance 18
        FCB     $61,$51,$20,$00,$7F,$07,$18,$61,$61,$52,$40,$00,$7F
        FCB     $05,$18,$60,$61,$50,$60,$00,$7F,$09,$18,$5A,$61,$51
        FCB     $20,$00,$7F,$06,$18,$5E,$61,$52,$40,$00,$7F,$08,$18
        FCB     $5D,$61,$50,$60,$00,$7F,$04,$18,$5A,$61,$51,$20,$00
        FCB     $7F,$0A,$18,$5B,$61,$52,$40,$00,$7F,$05,$18,$59,$00
        FCB     $01
        FCC     "Great Strg"
; Performance 19
        FCB     $72,$01,$20,$00,$7F,$0A,$18,$63,$32,$01,$20,$00,$7F
        FCB     $04,$18,$63,$52,$01,$20,$00,$7F,$0C,$24,$63,$72,$01
        FCB     $20,$00,$7F,$02,$18,$63,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $02
        FCC     "Vocal Hit "
; Performance 20
        FCB     $21,$68,$20,$00,$3C,$0A,$24,$63,$41,$68,$20,$00,$3C
        FCB     $04,$24,$63,$66,$2C,$60,$3D,$7F,$07,$18,$63,$60,$00
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $00
        FCC     "SlapnDyno "
; Performance 21
        FCB     $24,$61,$20,$00,$7F,$0C,$18,$52,$54,$00,$40,$00,$7F
        FCB     $07,$0C,$5F,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $00
        FCC     "Voice"
        FCB     $26
        FCC     "Guit"
; Performance 22
        FCB     $24,$43,$20,$00,$7F,$03,$18,$5F,$44,$43,$40,$00,$7F
        FCB     $0B,$18,$5F,$60,$3C,$60,$00,$7F,$06,$58,$5A,$60,$3C
        FCB     $20,$00,$7F,$09,$58,$5A,$60,$3C,$20,$00,$7F,$07,$58
        FCB     $5A,$60,$3C,$20,$00,$7F,$05,$58,$5A,$60,$3C,$20,$00
        FCB     $7F,$08,$58,$5A,$60,$3C,$20,$00,$7F,$06,$58,$5A,$00
        FCB     $38
        FCC     "ChorusBras"
; Performance 23
        FCB     $34,$07,$20,$00,$7F,$07,$18,$63,$44,$5A,$40,$00,$7F
        FCB     $07,$18,$63,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00
        FCB     $20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18
        FCB     $5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$60,$00,$20,$00
        FCB     $7F,$0E,$18,$5A,$60,$00,$20,$00,$7F,$0E,$18,$5A,$00
        FCB     $02
        FCC     "Koto Choir"
; Performance 24
        FCB     $32,$19,$20,$00,$2F,$07,$24,$4F,$52,$1A,$40,$30,$47
        FCB     $07,$18,$61,$52,$1D,$60,$48,$5E,$07,$00,$63,$32,$17
        FCB     $60,$5F,$60,$07,$0C,$61,$60,$08,$60,$00,$30,$04,$1F
        FCB     $63,$60,$08,$60,$00,$30,$0A,$24,$63,$50,$1E,$60,$55
        FCB     $7F,$00,$00,$5A,$50,$17,$60,$55,$7F,$0E,$00,$5A,$00
        FCB     $00
        FCC     "Percolator"

        ORG     $FFEA 

; Interrupt Vectors
svec_SIO FDB     hdlr_RST
svec_CMI FDB     hdlr_CMI
svec_TRAP FDB     hdlr_RST
svec_DIV0 FDB     hdlr_DIV0
svec_SWI3 FDB     hdlr_RST
svec_SWI2 FDB     hdlr_SWI2
svec_FIRQ FDB     hdlr_RST
svec_IRQ FDB     hdlr_IRQ
svec_SWI FDB     hdlr_RST
svec_NMI FDB     hdlr_RST
svec_RST FDB     hdlr_RST

        END
