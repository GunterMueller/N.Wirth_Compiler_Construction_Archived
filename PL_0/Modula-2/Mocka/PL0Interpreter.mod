IMPLEMENTATION MODULE PL0Interpreter; 
(*   FROM  TextWindows IMPORT Window, Done, OpenTextWindow, 
                         ReadInt, Write, WriteLn, WriteInt, Invert, C1oseTextWindow; 
*)

(* Mocka *)
(* FROM  InOut IMPORT ReadInt, Write, WriteLn, WriteInt;  *)
(* Mocka *)
FROM  FileIO IMPORT ReadInt, Write, WriteLn, WriteInt;  

(* GM VAR win: Window;  *)

PROCEDURE Interpret; 
CONST stacksize = 1000; 
                VAR  p,b,t: INTEGER; (*Program-,  Base-, Stack-Registers*) 
                   i: Instruction; (*instruction regists *) 
                   s: ARRAY [0 .. stacksize-1] OF  INTEGER; (*data store*) 

                PROCEDURE base(l: INTEGER): INTEGER; 
                 VAR  b1: INTEGER; 
                BEGIN b1  := b; (*find base address, 1 levels down*) 
                 WHILE 1 > 0 DO 
                   b1  := s[b1]; l  := l-1 
                 END  ; 
                 RETURN b1 
                END  base; 

              BEGIN (*interpret*) (* GM Write(win, 14C); *)
                t :=  0;  b  :=  1; p  :=  0; 
                s[1] :=  0;  s[2] :=  0;  s[3] :=  0; 
                REPEAT i  :=  code[p]; p  :=  p+1; 
                 WITH i DO 
                   CASE f  OF 
                    0: t  :=  t+1; s[t] :=  a |
                    1 :  CASE a  OF (*operators*) 

                         0: (*RET*) t := b-1; p := s[t+3]; b := s[t+2] |
                         1: s[t] :=  -s[t] |
                         2: t := t-1; s[t] :=  s[t] + s[t+1] |
                         3: t := t-1; s[t] :=  s[t] - s[t+1] | 
                         4: t := t-1; s[t] :=  s[t] * s[t+1] |
                         5: t := t-1; s[t] :=  s[t] DIV s[t+1]  |
                         6: s[t] :=  ORD(ODD(s[t]))  |
                         7:  | 
                         8: t := t-1; s[t] :=  ORD(s[t] = s[t+1])   |
                         9: t := t-1; s[t] :=  ORD(s[t] # s[t+1])   |
                        10: t := t-1; s[t] :=  ORD(s[t] < s[t+1])   |
                        11: t := t-1; s[t] :=  ORD(s[t] >= s[t+1])  |
                        12: t := t-1; s[t] :=  ORD(s[t] >  s[t+1])  |
                        13: t := t-1; s[t] :=  ORD(s[t] <= s[t+1])  |
                        14: t := t+1; (* GM Write(win, ">");  
                             Invert(win, TRUE); ReadInt(win, set]);  *)
                             (* IF  NOT  Done  THEN  p  :=  0  END; *)
                             (* GM Invert(win, FALSE) ; *)  |
                        15: (* GM  WriteInt(win, s[t], 7); WriteLn(win); *)  t  :=  t-1 
                       END | 

                 2:  t := t+1; s[t] :=  s[base(l)+INTEGER(a)] | 
                 3:  s[base(l)+INTEGER(a)] :=  s[t]; t :=  t-1 | 
                 4:  (*generate new  block mark*) 
                     s[t+1] :=  base(l); s[t+2] :=  b;  s[t+3] :=  p; 
                     b := t+1; p := a |
                 5:  t  :=  t  +  INTEGER(a) | 
                 6:  p  := a  | 
                 7:  IF  s[t] = 0 THEN  p:= a  END ; 
                     t :=  t-1 
                 END 
              END 
          UNTIL p = 0 
        END  Interpret; 

PROCEDURE EndInterpreter; 
  BEGIN (* GM CloseTextWindow(win)  *)
  END  EndInterpreter; 

BEGIN (* GM OpenTextWindow(win, 470,  66,  234,  508,  "RESULT")  *)
END  PL0Interpreter. 
