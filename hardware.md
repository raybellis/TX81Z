# TX81Z hardware info

## Memory Map

0x0000 - 0x003f IO registers:

* 0x0001 DDR2
* 0x0003 PORT2
* 0x0008 TCSR1
* 0x0009 FRCH
* 0x000a FRCL
* 0x000b OCR1H
* 0x000c OCR1L
* 0x000d ICRH
* 0x000e ICRL
* 0x000f TCSR2
* 0x0010 RMCR
* 0x0011 TRSCR
* 0x0012 RDR
* 0x0013 TDR
* 0x0014 RP5CR
* 0x0015 PORT5
* 0x0016 DDR6
* 0x0017 PORT6
* 0x0019 OCR2H
* 0x001a OCR2L
* 0x001b TCSR3
* 0x001c TCONR
* 0x001d T2CNT
* 0x001f TESTR

0x0040 - 0x00ff CPU RAM

0x2000 - 0x3fff YM2414 FM chip (2 registers)

0x4000 - 0x5fff HD44780 16x02 LCD display (2 registers)

* 0x4000 LCD command
* 0x4001 LCD data

0x6000 - 0x7fff 8kB battery backed RAM (TC5564PL-20)

* 0x6001 - 0x69c0 User voices
* 0x6e45 - 0x7564 User performances

## IO PORT assignments

* P20 : Cassette interface output
* P21 : Cassette interface input
* P22 :  500 kHz clock input
* P23 : MIDI In
* P24 : MIDI Out
* P25 : SW1 (Cursor)
* P26 : SW2 (Master volume up)
* P27 : SW3 (Master volume down)

* P50 : IRQ1 (from YM2414 OPZ chip)
* P51 : SW11 (Store / EQ Copy)
* P52 : MRDY input (clock stretch for LCD?)
* P53 : unused (tied to VCC)
* P54 : SW4 (INC)
* P55 : SW5 (DEC)
* P56 : SW6 (PARAM+)
* P57 : SW7 (PARAM-)

* P60 : SW8 (Play / Perform)
* P61 : SW9 (Edit / Compare)
* P62 : SW10 (Utility)
* P63 : ROM bank switch
* P64 : LED 1 (Cursor)
* P65 : LED 2 (Play / Perform)
* P66 : LED 3 (Edit / Compare)
* P67 : LED 4 (Utility)
