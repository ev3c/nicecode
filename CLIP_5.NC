;
;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³                                                                          ³
;³ LANGUAJE:		 Clipper 5.x					    ³
;³                                                                          ³
;ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´
;³                                                                          ³
;³ TYPE OF LINES OF THIS FILE:                                              ³
;³                                                                          ³
;³      REM line          = with semicolon ; at firts left character        ³
;³                          Don't accept commas into the rem lines because  ³
;³                          succed internall error.                         ³
;³                                                                          ³
;³      INSTRUCTION line  = without semicolon ; at first left character     ³
;³                          betwen double commas "" = character string      ³
;³                          number betwen commas    = number                ³
;³                                                                          ³
;³ OBSERVATIONS:                                                            ³
;³      Don't write more rem lines in this file betwen instruction lines.   ³
;³      and don't delete this rem lines.                                    ³
;³                                                                          ³
;³ SIMBOLS:                                                                 ³
;³      ø  = ASCII(248) can be replaced with a blank space (only util at    ³
;³           left or right of instrucction name).                           ³
;³      ú  = ACSII(250) can be replaced with CR+LF (END OF LINE).           ³
;³      ì  = ASCII(236) is a imaginary simbol to identify all code          ³
;³           between the finded instrucctions.                              ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
;
;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³DESCRIPTION:                                                              ³
;³  General NC intructions to identify include files and others parameters. ³
;³                                                                          ³
;³OBSERVATIONS:                                                             ³
;³  All instructions are imprescindible. You be able to change values but   ³
;³  don't exclude the instruction.                                          ³
;³  Numbers are the ASCII decimal code.   i.e.:  " = 34     < = 60          ³
;³                                                                          ³
;³ORDER:                                                                    ³
;³       line 1 = include directive and left/right file delimiter           ³
;³       line 2 = left and right character strings delimiters               ³
;³       line 3 = left and right comment delimiter 			    ³
;³       line 4 = line continuation and statement delimiter                 ³
;³       line 5 = main program identification extension                     ³
;³       line 6 = librarys identification extension                         ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

"#INCLUDEø", 34, 34
34, 34
"//", ""
";", ";"
".PRG"
".PRG.INC.CH .CSH"


;
;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³DESCRIPTION:                                                              ³
;³   To identify FUNCTIONs SUBs and DEF FNs etc...                          ³
;³                                                                          ³
;³OBSERVATIONS:                                                             ³
;³   You must be include or exclude other instructions.                     ³
;³   All begin instruction need end instruction.                            ³
;³                                                                          ³
;³                                                                          ³
;³ORDER:       Begin instruction to open remember box.                      ³
;³   ______ =  End instruction to close remember box.                       ³
;³  |          Begin instruction .....                                      ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

"FUNCTIONø"
"RETURN"

"PROCEDUREø"
"RETURN"

"FUNCø"
"RETURN"

"PROCø"
"RETURN"

"STATIC FUNCTIONø"
"RETURN"

"STATIC PROCEDUREø"
"RETURN"


;
;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³DESCRIPTION:                                                              ³
;³   These instrucctions writed at down are searched in the source code     ³
;³   to re-write to make spaces at left/right/up/down of the nice output    ³
;³   source code.                                                           ³
;³                                                                          ³
;³OBSERVATIONS:                                                             ³
;³   You be able to include or exclude instructions.                        ³
;³   All instructions need four numbers to the vertical and horizontal      ³
;³   output code displacement.                                              ³
;³                                                                          ³
;³ORDER:  ___________________ = Instruction to look for.                    ³
;³       |     ______________ = Blank lines down after print source line    ³
;³  _____|    |    __________ = Displac. to left or right after print s.line³
;³ |          |   |   _______ = Displac. to l. r. before print source line  ³
;³ |          |   |  |   ____ = Blank lines down before print source line   ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

"IFø"         1 , 0, 3, 0
"FORø"        1 , 0, 3, 0
"DO CASE"     1 , 0, 3, 0
"WHILEø"      1 , 0, 3, 0
"WHILø"       1 , 0, 3, 0
"DO WHILE"    1 , 0, 3, 0
"DO WHIL"     1 , 0, 3, 0

"ELSEú"       0 ,-3, 3, 0
"ELSEIFø"     0 ,-3, 3, 0
"CASEø"       0 ,-2, 2, 0
"OTHERWISEú"  0 ,-2, 2, 0
"OTHEú"       0 ,-2, 2, 0
"EXITú"       0 ,-2, 2, 0
"LOOPú"       0 ,-2, 2, 0

"ENDIFú"      0 ,-3, 0, 0
"ENDIú"       0 ,-3, 0, 0
"ENDDOú"      0 ,-3, 0, 1
"ENDDú"       0 ,-3, 0, 1
"ENDCASEú"    0 ,-3, 0, 1
"ENDCú"       0 ,-3, 0, 1
"ENDú"        0 ,-3, 0, 1
"NEXTú"       0 ,-3, 0, 1
"NEXTø"       0 ,-3, 0, 1



"FUNCTIONø"   0 , 0, 5, 0
"FUNCø"       0 , 0, 5, 0
"STATIC FUNC" 0 , 0, 5, 0
"STAT FUNC"   0 , 0, 5, 0
"PROCEDUREø"  0 , 0, 4, 0
"PROCø"       0 , 0, 4, 0
"STATIC PROC" 0 , 0, 4, 0
"STAT PROC"   0 , 0, 4, 0

"LOCALø"      0 ,-1, 1, 0
"FIELDø"      0 ,-1, 1, 0
"STATICø"     0 ,-1, 1, 0
"MEMVARø"     0 ,-1, 1, 0
"PUBLICø"     0 ,-1, 1, 0
"LOCAø"       0 ,-1, 1, 0
"FIELø"       0 ,-1, 1, 0
"STATø"       0 ,-1, 1, 0
"MEMVø"       0 ,-1, 1, 0
"PUBLø"       0 ,-1, 1, 0

"RETURN"      0 ,-4, 0, 4
"RETU"        0 ,-4, 0, 4


"DECLAREø"    1 , 1,-1, 0
"EXTERNALø"   1 , 1,-1, 0
"#INCLUDEø"   1 , 1,-1, 0
"#COMMANDø"   1 , 1,-1, 0
"#TRANSLATEø" 1 , 1,-1, 0
"#DEFINEø"    0 , 1,-1, 0
"#UNDEFø"     1 , 1,-1, 0

"#IFDEFø"     0 , 0, 3, 0
"#IFNDEFø"    0 , 0, 3, 0
"#ELSE"       0 ,-3, 3, 0
"#ENDIF"      0 ,-3, 0, 1
