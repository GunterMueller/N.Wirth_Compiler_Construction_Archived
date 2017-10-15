 IMPLEMENTATION MODULE PL0Generator; 

           FROM  TextWindows IMPORT Window. OpenTextWindow. 

               WriteString. Write. WriteLn.  WriteCard. CloseTextWindow; 

           FROM PL0Interpreter IMPORT Instruction. maxfct. maxadr. code; 

           VAR  L:  CARDINAL; (.current label.) 

              win:  Window; 

              mnemonic: ARRAY [O .. maxfct]. [0 .. 3]  OF  CHAR; 

           PROCEDURE InitGenerator; 

           BEGIN L :=  0;  Write(win. 14C) 

           END  InitGenerator; 

           PROCEDURE Label(): CARDINAL; 

           BEGIN RETURN L 

           END  Label; 

                                                    77 

           PROCEDURE Gen(x. y. z:  CARDINAL); 

           BEGIN 

            IF  L )= maxadr THEN HALT END; 

            WITH code[L]  DO 

             f := x;  1  := y; a  := z 

            END  ; 

            WriteCard(win. L.  4); 

            WriteString(win. mnemonic[x]); 

            WriteCard(win. y. 3); WriteCard(win. z. 6); WriteLn(win); 

            L :=  L+l 

           END  Gen; 

           PROCEDURE fixup(x: CARDINAL); 

           BEGIN code[x].a :=  L;  WriteString(win. "fixup at"); 

            WriteCard(win. x.  4); WriteLn(win) 

           END  fixup; 

           PROCEDURE EndGenerator; 

           BEGIN CloseTextWindow(win) 

           END  EndGenerator; 

         BEGIN OpenTextWindow(win. 235.  66.  234.  508. "CODE"); 

           mnemonic[O] .=  "  LIT"; mnemonic[l] .=  "  OPR"; 

           mnemonic[2] .=  "  LOD"; mnemonic[3] .=  " STO"; 

           mnemonic[4] .=  "  CAL"; mnemonic[5] .=  "  INT"; 

           mnemonic[6] .=  "  JMP"; mnemonic[7] .=  "  JPC"; 

         END  PL0Generator. 
