'
' ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออปบ
'บ Library......: GFSPLITL.INC                                           บบ
'บ Definition...:                                                        บบ
'บ Author.......:                                                        บบ
'บ Date.........: 12-26-1991                                             บบ
'บ Notice.......:                                                        บบ
'บ Notes........:                                                        บบ
'บ Reserved.....:                                                        บบ
'บ Function.....:                                                        บบ
'บ Version......:                                                        บบ
'บ History......:                                                        บบ
'บ Library......:                                                        บบ
'บ Compile......:                                                        บบ
'บ Link.........:                                                        บบ
'ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนบ
'บ OBSERVATIONS:                                                         บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บน
'ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนบ
'บ FUNCTIONs..:                                                          บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บบ
'บ                                                                       บผ
'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ 
'
'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
'บ SUB :nc.splitlinefn                                      12-26-1991   บ
'ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
'บ ACTION:                                                               บ
'บ                                                                       บ
'บ                                                                       บ
'บ TO PASS:                                                              บ
'บ    linea$         ===>                                                บ
'บ    linea.ins$     ===>                                                บ
'บ    linea.rem$     ===>                                                บ
'บ                                                                       บ
'บ RETURN:                                                               บ
'บ                                                                       บ
'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
sub nc.splitlinefn(linea$, linea.ins$, linea.rem$ )
   shared lrem$, rrem$
   shared lstr$, rstr$
   shared muca%
   shared mlca%
   shared mtab%
   local c%
   local r%
   local i%
   local llinea%
   local comma%
    i% = 1
    linea.ins$ = ""
    linea.rem$ = ""
    

    if trim$(linea$) <> "" then
       llinea% = len(linea$)
       

       do
          c% = instr( i%, linea$+lstr$, lstr$ )
          

          if comma% then
             comma% = 0
          else
             comma% = -1
             
             '*** search REM ***********
             code$ = mid$(linea$,i%,c%-i% )
             r% = instr( code$, lrem$)
             

             if r% <= 0 then
                r% = instr(ucase$(code$), "REM ")
             end if
             
             if r% > 0 then r% = r% + i% - 1
             '**************************
             

             if c%-i% > 0 then
                

                if r% > 0 then
                   code$ = mid$(linea$,i%,r%-i%)
                else
                   code$ = mid$(linea$,i%,c%-i%)
                end if
                

                if muca% then
                   mid$(linea$,i%,c%-i%) = ucase$(code$)
                elseif mlca% then
                   mid$(linea$,i%,c%-i%) = lcase$(code$)
                end if
                
             end if
             
          end if
          
          i% = c%+1
       loop until c% >= llinea% or r% > 0

       

       if r% <= 0 then
          linea.ins$ = linea$
       else
          linea.ins$ = left$ (linea$, r%-1)
          linea.rem$ = right$(linea$, llinea%-(r%-1))
       end if
       
    end if
    
    'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
    'บ END SUB:nc.splitlinefn                                   12-26-1991   บ
    'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
end sub





'
'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
'บ FUNCTION :nc.splitline.func%                             12-26-1991   บ
'ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
'บ ACTION:                                                               บ
'บ                                                                       บ
'บ                                                                       บ
'บ TO PASS:                                                              บ
'บ    linea$         ===>                                                บ
'บ    inst$          ===>                                                บ
'บ    var$()         ===>                                                บ
'บ                                                                       บ
'บ RETURN:                                                               บ
'บ    nc.splitline.fu===>                                                บ
'บ                                                                       บ
'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
function nc.splitline.func%( linea$, inst$, var$() )
    local p%
    local minst%
    local llinea%
    local linst%
    local lensearch%
    shared func$()
     

     if trim$(linea$) <> "" then
        llinea% = len(linea$)
        

        do while func$(p%+1) <> ""
           incr p%
           func$ = func$(p%)
           minst% = instr(ucase$(linea$), func$ )	' sub, function, def fn
           

           if minst% then
              

              if trim$(left$(linea$, minst%-1))="" then
                 lensearch% = len(func$)
                 inst$ = nc.splitline.func.name$( right$(linea$,llinea%_
                 -lensearch% ) )
                 linst% = len(inst$)
                  call nc.splitline.func.varsfn( right$(linea$, llinea% _
                 -lensearch%-linst% ), var$() )
                 nc.splitline.func% = p%
              end if
              
           end if
           
        loop

        
     end if
     
     'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
     'บ END FUNCTION:nc.splitline.func%                          12-26-1991   บ
     'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
end function





'
'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
'บ FUNCTION :nc.splitline.func.name$                        12-26-1991   บ
'ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
'บ ACTION:                                                               บ
'บ                                                                       บ
'บ                                                                       บ
'บ TO PASS:                                                              บ
'บ    inst$          ===>                                                บ
'บ                                                                       บ
'บ RETURN:                                                               บ
'บ    nc.splitline.fu===>                                                บ
'บ                                                                       บ
'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
function nc.splitline.func.name$( inst$ )
    local mend%
     mend% = instr(inst$, any "("+ chr$(9)+ " " )
     
     if mend% = 0 then  mend% = len(inst$) + 1
     
     nc.splitline.func.name$ = mid$( inst$, 1, mend% -1 )
     'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
     'บ END FUNCTION:nc.splitline.func.name$                     12-26-1991   บ
     'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
end function





'
'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
'บ SUB :nc.splitline.func.varsfn                            12-26-1991   บ
'ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
'บ ACTION:                                                               บ
'บ                                                                       บ
'บ                                                                       บ
'บ TO PASS:                                                              บ
'บ    var$           ===>                                                บ
'บ    var$()         ===>                                                บ
'บ                                                                       บ
'บ RETURN:                                                               บ
'บ                                                                       บ
'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
sub nc.splitline.func.varsfn( var$, var$() )
   local lvar%, c%
   shared mfun$()
    lvar% = len(var$)
    

    for c% = lvar% to 1 step -1
       if mid$(var$,c%,1) = ")" then exit for	' find )
    next

    

    if c% > 1 then
       var$ = mid$( var$,2, c%-2 )		' delete ( and )....
        call splitvarfn( var$, ",", var$() )
    end if
    
    'ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
    'บ END SUB:nc.splitline.func.varsfn                         12-26-1991   บ
    'ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
end sub





