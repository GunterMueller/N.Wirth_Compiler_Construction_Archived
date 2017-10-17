MODULE PL0; (*NW  WS  83/84*) 
 FROM  Terminal IMPORT Read; 
 FROM FileSystem IMPORT Lookup, Response, Close; 
 (*FROM  TextWindows IMPORT Window. 
                 OpenTextWindow. Write. WriteLn,  WriteString.  *)
FROM  InOut IMPORT ReadInt, Write, WriteLn, WriteInt;


           CloseTextWindow; 

             FROM PL0Scanner IMPORT InitScanner. source. CloseScanner; 

             FROM PL0Parser IMPORT Parse. noerr. EndParser; 

             FROM PL0Generator IMPORT InitGenerator. EndGenerator; 

             FROM PL0Interpreter IMPORT Interpret, EndInterpreter; 

             CONST NL  = 27; (*max file name  length*) 

             VAR  ch:  CHAR; 

                win:  Window; 

                FileName: ARRAY [O .. NLJ  OF  CHAR; 

             PROCEDURE ReadName; 

               CONST DEL  =  177C; 

               VAR  i: CARDINAL; 

             BEGIN Read(ch); FileName .= "OK."; 

               i :=  3; 

                                                                                      89 

                    WHILE  (CAP(ch)  )= "A")  & (CAP(ch)   (= HZ") 

                       OR  (ch  )= "0") & (ch  (= "9") 

                       OR  (ch  = ".") OR  (ch  = DEL)  DO 

                      IF  ch  = DEL  THEN 

                         IF  i  )  3 THEN  Write(Vlin, DEL); i  := i-1 END 

                      ELSIF  i  (  NL  THEN 

                         Write(Vlin, ch); FileName[i] :=  ch;  i  :=  i+1 

                      END  ; 

                      Read(ch) 

                    END  ; 

                    IF  (3  (i) &  (i (NL) &  (FileName[i-1] ".") THEN 

                      FileName[i] := "PH;       .= i+1; 

                      FileName[iJ .=  "L";      .= 1+1; 

                      FileName[i] .=  "0";      .= i+1;  WriteString(Vlin, "PL0") 

                    END  ; 

                    FileName[iJ .=  OC 

                  END  ReadName; 

               BEGIN  OpenTextWindoVl(Vlin,  0,  0,  704, 66,  "DIALOG"); 

                   LOOP  WriteString(Vlin, "in) H);  ReadName; 

                    IF  ch  =  33C  THEN EXIT END  ; 

                    Lookup(source, FileName,     FALSE); 

                    IF  source. res = done  THEN 

                      InitScanner; InitGenerator; Parse; Close(source); 

                      IF  noerr THEN 

                         WriteString(Vlin, "  interpreting"); Interpret 

                      ELSE  WriteString(Vlin, "  incorrect") 

                      END 

                    ELSE  WriteString(Vlin, "  not found") 

                    END  ; 

                    WriteLn(Vlin) 

                  END  ; 

                  CloseScanner; EndParser; EndGenerator; EndInterpreter; 

                  CloseTextWindoVl(Vlin) 

                END  PL0. 
