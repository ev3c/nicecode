;
;ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
;³                                                                          ³
;³ LANGUAJE:             dBASE III                                          ³
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
;³      and don' delete this rem lines.                                     ³
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
;³       line 1 = Include instruction. Left and right include file ident.   ³
;³                  Left and right character strings identifications.       ³
;³       line 2 = Left REM ident. Right REM ident.                          ³
;³       line 3 = Character identification of truncate line. Wen the program³
;³                find this character get the next line.                    ³
;³       line 4 = Main program identification extension                     ³
;³       line 5 = Libraryes identification extension                        ³
;ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ

"DOø",0,0
34,34
"*", ""
"",  ""
".PRG"
".PRG.DBI.INC"










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


""
""












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
"ELSEø"       0 ,-3, 3, 0
"ELSEú"       0 ,-3, 3, 0
"ENDIFø"      0 ,-3, 0, 0
"ENDIFú"      0 ,-3, 0, 0

"DO WHILE"    1 , 0, 3, 0
"ENDDOú"      0 ,-3, 0, 1
"ENDDOø"      0 ,-3, 0, 1

"DO CASE"     1 , 0, 3, 0
"CASEø"       0 ,-3, 3, 0
"OTHERWISEú"  0 ,-3, 3, 0
"ENDCASEø"    0 ,-3, 0, 1
"ENDCASEú"    0 ,-3, 0, 1


