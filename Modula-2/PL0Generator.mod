IMPLEMENTATION MODULE PL0Generator;

(*   FROM  TextWindows IMPORT Window. OpenTextWindow. 
               WriteString. Write. WriteLn.  WriteCard. CloseTextWindow; *)
FROM  InOut IMPORT ReadInt, Write, WriteLn, WriteInt;

FROM PL0Interpreter IMPORT Instruction, maxfct, maxadr, code; 

 VAR  L:  CARDINAL; (*current label*) 
      (* win:  Window;  *)
      mnemonic: ARRAY [0..maxfct],[0..3]  OF  CHAR; 

 PROCEDURE InitGenerator; 
    BEGIN L :=  0; (* GM  Write(win. 14C)  *)
    END  InitGenerator; 

 PROCEDURE Label(): CARDINAL; 
    BEGIN RETURN L 
    END  Label; 

 PROCEDURE Gen(x, y, z: CARDINAL); 
    BEGIN 
      IF  L >= maxadr THEN HALT END; 
      WITH code[L]  DO 
             f := x;  l  := y; a  := z 
     END  ; 

     (* GM WriteCard(win. L.  4); *)
     (* GM WriteString(win. mnemonic[x]);  *)
     (* GM WriteCard(win. y. 3); WriteCard(win. z. 6); WriteLn(win);  *)
     L :=  L+1 

   END  Gen; 

 PROCEDURE fixup(x: CARDINAL); 
    BEGIN code[x].a :=  L;  (* GM WriteString(win. "fixup at"); *) 
          (* GM  WriteCard(win. x.  4); WriteLn(win)  *)
    END  fixup; 

 PROCEDURE EndGenerator; 

    BEGIN (* GM CloseTextWindow(win)  *)
    END  EndGenerator; 

 BEGIN (* GM OpenTextWindow(win. 235.  66.  234.  508. "CODE");  *)

           mnemonic[0] :=  "LIT"; mnemonic[1] :=  "OPR"; 
           mnemonic[2] :=  "LOD"; mnemonic[3] :=  "STO"; 
           mnemonic[4] :=  "CAL"; mnemonic[5] :=  "INT"; 
           mnemonic[6] :=  "JMP"; mnemonic[7] :=  "JPC"; 

 END  PL0Generator. 
