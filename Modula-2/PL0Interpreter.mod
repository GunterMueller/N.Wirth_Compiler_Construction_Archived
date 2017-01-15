DEFINITION MODULE PL0Interpreter; 

             CONST maxfct  15; 

                  maxlev  15; 

                  max ad r 1023  ; 

             TYPE Instruction = RECORD f: [0 .. maxfct]; (*function*) 

                                   1 : .. maxlev]; 

                                     [0          (*level*) 

                                   a:  [0 .. maxadr] (*address*) 

                             END ; 

             VAR  code: ARRAY [0 .. maxadr]  OF  Instruction; 

             PROCEDURE Interpret; 

             PROCEDURE Endlnterpreter; 

            END  PL0lnterpreter. 

          74 

            IMPLEMENTATION MODULE PL0Interpreter; 

              FROM  TextWindows IMPORT Window, Done, OpenTextWindow, 

                ReadInt, Write, WriteLn, WriteInt, Invert, C1oseTextWindow; 

              VAR win: Window; 

              PROCEDURE Interpret; 

                CONST stacksize = 1000; 

                VAR  p,b,t: INTEGER; (*Program-,  Base-, Stack-Registers*) 

                   i: Instruction; (*instruction regists *) 

                   s: ARRAY [0 .. stacksize-1J OF  INTEGER; (*data store*) 

                PROCEDURE base(l: INTEGER): INTEGER; 

                 VAR  bl: INTEGER; 

                BEGIN bl  := b; (*find base address, 1 levels down*) 

                 WHILE 1 > 0 DO 

                   bl  := s[blJ; 1  := 1-1 

                 END  ; 

                 RETURN bl 

                END  base; 

              BEGIN (*interpret*) Write(win, 14C); 

                t :=  0;  b  :=  1; p  :=  0; 

                s[lJ :=  0;  s[2J :=  0;  s[3J :=  0; 

                REPEAT i  :=  cOde[pJ; p  :=  p+l; 

                 WITH i DO 

                   CASE f  OF 

                    0: t  :=  t+l;  :=  a 

                               s[tJ     I 

                    1 :  CASE a  OF (*operators*) 

                                           p 

                                    :=  b-l;            := 

                         0: (*RET*) t        :=  s[t+3J; b s[t+2J 

                                                                 I 

                         1 :    :=  -s[tJ 

                           s[tJ        I 

                         2:  t  .=  t-l; .=  s[tJ + s[t+1J 

                                    s[tJ 

                         3:  t  .=  t-l ; :=  s[tJ - s[t+1J 

                                    s[tJ 

                         4: t  .=  t-l; :=     * s[t+1J 

                                    s[tJ  s[tJ 

                         5:  t  .=  t-l; :=  s[tJ DIV  s[t+1J 

                                    s[tJ 

                         6:     :=  ORD(ODD(s[tJ» 

                           s[tJ                I 

                         7 :  I 

                         8:  t  :=  t-l; :=  ORD(s[tJ = s[t+1J) 

                                    s[tJ 

                         9:  t  . = t-l; :=  ORD(s[tJ #  s[t+1J) 

                                    s[tJ 

                                                        75 

                   10:  t  .=  t-1; set] :=  ORD(s[t]  (  s[t+1]) 

                   11:  t  .=  t-1; set] :=  ORD(s[t]  )=  s[t+1]) 

                   12:  t  .=  t-1; set] :=  ORD(s[t]  )  s[t+1]) 

                    13:  t  .=  t-1; set] := ORD(s[t]  (= s[t+1]) 

                    14:  t  .=  t+1; Write(win, ")"); 

                      Invert(win, TRUE); ReadInt(win, set]); 

                      IF  NOT  Done  THEN  p  :=  0  END; 

                      Invert(win, FALSE) I 

                    15:  WriteInt(win, s[t], 7); WriteLn(win); t  .=  t-1 

                    END I 

                 2:  t  :=  t+1; set] :=  s[base(l)+INTEGER(a)] 

                 3:  s[base(l)+INTEGER(a)] :=  set]; t  :=  t-1 

                 4:  (*generate new  block mark*) 

                   s[t+1] :=  base(l); s[t+2] :=  b;  s[t+3] .=  p; 

                    b  :=  t+1;  p  :=  a  I 

                 5:  t  :=  t  +  INTEGER(a) 

                 6:  p  := a  I 

                 7: IF  set] = 0 THEN  p:=  a  END 

                   t :=  t-1 

                END 

              END 

             UNTIL P = 0 

            END  Interpret; 

            PROCEDURE EndInterpreter; 

           BEGIN CloseTextWindow(win) 

            END  EndInterpreter; 

          BEGIN OpenTextWindow(win, 470,  66,  234,  508,  "RESULT") 

          END  PL0Interpreter. 
