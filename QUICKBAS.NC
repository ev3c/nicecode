;
;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
;�                                                                          �
;� LANGUAJE:             Quick Basic / MS Basic PDS                         �
;�                                                                          �
;쳐컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴캑
;�                                                                          �
;� TYPE OF LINES OF THIS FILE:                                              �
;�                                                                          �
;�      REM line          = with semicolon ; at firts left character        �
;�                          Don't accept commas into the rem lines because  �
;�                          succed internall error.                         �
;�                                                                          �
;�      INSTRUCTION line  = without semicolon ; at first left character     �
;�                          betwen double commas "" = character string      �
;�                          number betwen commas    = number                �
;�                                                                          �
;� OBSERVATIONS:                                                            �
;�      Don't write more rem lines in this file betwen instruction lines.   �
;�      and don' delete this rem lines.                                     �
;�                                                                          �
;� SIMBOLS:                                                                 �
;�      �  = ASCII(248) can be replaced with a blank space (only util at    �
;�           left or right of instrucction name).                           �
;�      �  = ACSII(250) can be replaced with CR+LF (END OF LINE).           �
;�      �  = ASCII(236) is a imaginary simbol to identify all code          �
;�           between the finded instrucctions.                              �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸
;
;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
;쿏ESCRIPTION:                                                              �
;�  General NC intructions to identify include files and others parameters. �
;�                                                                          �
;쿚BSERVATIONS:                                                             �
;�  All instructions are imprescindible. You be able to change values but   �
;�  don't exclude the instruction.                                          �
;�  Numbers are the ASCII decimal code.   i.e.:  " = 34     < = 60          �
;�                                                                          �
;쿚RDER:                                                                    �
;�       line 1 = Include instruction. Left and right include file ident.   �
;�                  Left and right character strings identifications.       �
;�       line 2 = Left REM ident. Right REM ident.                          �
;�       line 3 = Character identification of truncate line. Wen the program�
;�                find this character get the next line.                    �
;�       line 4 = Main program identification extension                     �
;�       line 5 = Libraryes identification extension                        �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸

"'$INCLUDE:",39,39,34,34
"'" , ""
""
".BAS"
".BI .QBI"




;
;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
;쿏ESCRIPTION:                                                              �
;�   To identify FUNCTIONs SUBs and DEF FNs etc...                          �
;�                                                                          �
;쿚BSERVATIONS:                                                             �
;�   You must be include or exclude other instructions.                     �
;�   All begin instruction need end instruction.                            �
;�                                                                          �
;�                                                                          �
;쿚RDER:       Begin instruction to open remember box.                      �
;�   ______ =  End instruction to close remember box.                       �
;�  |          Begin instruction .....                                      �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸

"DEF FN"
"END DEF"

"FUNCTION�"
"END FUNCTION"

"SUB�"
"END SUB"





;
;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
;쿏ESCRIPTION:                                                              �
;�   These instrucctions writed at down are searched in the source code     �
;�   to re-write to make spaces at left/right/up/down of the nice output    �
;�   source code.                                                           �
;�                                                                          �
;쿚BSERVATIONS:                                                             �
;�   You be able to include or exclude instructions.                        �
;�   All instructions need four numbers to the vertical and horizontal      �
;�   output code displacement.                                              �
;�                                                                          �
;쿚RDER:  ___________________ = Instruction to look for.                    �
;�       |     ______________ = Blank lines down after print source line    �
;�  _____|    |    __________ = Displac. to left or right after print s.line�
;� |          |   |   _______ = Displac. to l. r. before print source line  �
;� |          |   |  |   ____ = Blank lines down before print source line   �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸

"DEF FN"      0 , 0, 4, 0
"END DEF"     0 ,-4, 0, 4

"FUNCTION�"   0 , 0, 5, 0
"END FUNCTION"0 ,-5, 0, 4

"SUB�"        0 , 0, 4, 0
"END SUB"     0 ,-4, 0, 4

"TYPE�"       1 , 0, 4, 0
"END TYPE"    0 ,-4, 0, 1

"IF � THEN�"  1 , 0, 3, 0
"ELSE�"       0 ,-3, 3, 0
"ELSEIF�"     0 ,-3, 3, 0
"END IF"      0 ,-3, 0, 1

"DO�LOOP"     0 , 0, 0, 0
"DO�"         1 , 0, 3, 0
"DO�"         1 , 0, 3, 0
"LOOP�"       0 ,-3, 0, 1
"LOOP�"       0 ,-3, 0, 1

"WHILE�WEND"  0 , 0, 0, 0
"WHILE�"      1 , 0, 3, 0
"WEND�"       0 ,-3, 0, 1

"SELECT CASE" 1 , 0, 3, 0
"CASE�"       0 ,-2, 2, 0
"CASE ELSE"   0 ,-2, 2, 0
"END SELECT"  0 ,-3, 0, 1

"FOR�NEXT"    0 , 0, 0, 0
"FOR�"        1 , 0, 3, 0
"NEXT�"       0 ,-3, 0, 1
"NEXT�"       0 ,-3, 0, 1

"CALL�"       0 , 1,-1, 0
"DIM�"        1 , 1,-1, 1
"REDIM�"      1 , 1,-1, 1

"LOCAL�"      0 ,-1, 1, 0
"SHARED�"     0 ,-1, 1, 0
"STATIC�"     0 ,-1, 1, 0


