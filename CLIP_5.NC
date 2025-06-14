;
;旼컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
;�                                                                          �
;� LANGUAJE:		 Clipper 5.x					    �
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
;�      and don't delete this rem lines.                                    �
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
;�       line 1 = include directive and left/right file delimiter           �
;�       line 2 = left and right character strings delimiters               �
;�       line 3 = left and right comment delimiter 			    �
;�       line 4 = line continuation and statement delimiter                 �
;�       line 5 = main program identification extension                     �
;�       line 6 = librarys identification extension                         �
;읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴켸

"#INCLUDE�", 34, 34
34, 34
"//", ""
";", ";"
".PRG"
".PRG.INC.CH .CSH"


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

"FUNCTION�"
"RETURN"

"PROCEDURE�"
"RETURN"

"FUNC�"
"RETURN"

"PROC�"
"RETURN"

"STATIC FUNCTION�"
"RETURN"

"STATIC PROCEDURE�"
"RETURN"


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

"IF�"         1 , 0, 3, 0
"FOR�"        1 , 0, 3, 0
"DO CASE"     1 , 0, 3, 0
"WHILE�"      1 , 0, 3, 0
"WHIL�"       1 , 0, 3, 0
"DO WHILE"    1 , 0, 3, 0
"DO WHIL"     1 , 0, 3, 0

"ELSE�"       0 ,-3, 3, 0
"ELSEIF�"     0 ,-3, 3, 0
"CASE�"       0 ,-2, 2, 0
"OTHERWISE�"  0 ,-2, 2, 0
"OTHE�"       0 ,-2, 2, 0
"EXIT�"       0 ,-2, 2, 0
"LOOP�"       0 ,-2, 2, 0

"ENDIF�"      0 ,-3, 0, 0
"ENDI�"       0 ,-3, 0, 0
"ENDDO�"      0 ,-3, 0, 1
"ENDD�"       0 ,-3, 0, 1
"ENDCASE�"    0 ,-3, 0, 1
"ENDC�"       0 ,-3, 0, 1
"END�"        0 ,-3, 0, 1
"NEXT�"       0 ,-3, 0, 1
"NEXT�"       0 ,-3, 0, 1



"FUNCTION�"   0 , 0, 5, 0
"FUNC�"       0 , 0, 5, 0
"STATIC FUNC" 0 , 0, 5, 0
"STAT FUNC"   0 , 0, 5, 0
"PROCEDURE�"  0 , 0, 4, 0
"PROC�"       0 , 0, 4, 0
"STATIC PROC" 0 , 0, 4, 0
"STAT PROC"   0 , 0, 4, 0

"LOCAL�"      0 ,-1, 1, 0
"FIELD�"      0 ,-1, 1, 0
"STATIC�"     0 ,-1, 1, 0
"MEMVAR�"     0 ,-1, 1, 0
"PUBLIC�"     0 ,-1, 1, 0
"LOCA�"       0 ,-1, 1, 0
"FIEL�"       0 ,-1, 1, 0
"STAT�"       0 ,-1, 1, 0
"MEMV�"       0 ,-1, 1, 0
"PUBL�"       0 ,-1, 1, 0

"RETURN"      0 ,-4, 0, 4
"RETU"        0 ,-4, 0, 4


"DECLARE�"    1 , 1,-1, 0
"EXTERNAL�"   1 , 1,-1, 0
"#INCLUDE�"   1 , 1,-1, 0
"#COMMAND�"   1 , 1,-1, 0
"#TRANSLATE�" 1 , 1,-1, 0
"#DEFINE�"    0 , 1,-1, 0
"#UNDEF�"     1 , 1,-1, 0

"#IFDEF�"     0 , 0, 3, 0
"#IFNDEF�"    0 , 0, 3, 0
"#ELSE"       0 ,-3, 3, 0
"#ENDIF"      0 ,-3, 0, 1
