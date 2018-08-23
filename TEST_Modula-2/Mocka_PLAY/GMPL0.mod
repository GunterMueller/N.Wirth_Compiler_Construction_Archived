MODULE GMPL0; (*NW WS 83/84*)

FROM  InOut IMPORT Read, Write, WriteLn, WriteString;
FROM FileIO IMPORT File, Open, Close, Okay;


CONST NL = 27;
 (*max file name length*)
VAR ch: CHAR;
    (* GM win: Window; *)
    FileName: ARRAY [0 .. NL] OF CHAR;
    source : File;

PROCEDURE ReadName;
  CONST DEL = 177C;
  VAR i: CARDINAL;
 BEGIN Read(ch); i:= 1;
    WHILE (CAP(ch) >= "A") & (CAP(ch) <= "Z")
          OR (ch >= "0") & (ch <= "9")
          OR (ch = ".") OR (ch = DEL) DO
      IF ch = DEL THEN
         IF i > 1 THEN Write( DEL); i := i-1 END
         ELSIF i < NL THEN
           Write(ch); FileName[i] := ch; i := i+1
        END ;
      Read(ch)
     END ;
     IF (0 <i) & (i <NL) & (FileName[i-1] = "." ) THEN
        FileName[i] := "P"; i := i+1;
        FileName[i] := "L"; i := i+1;
        FileName[i] := "0"; i := i+1; WriteString("PLO") 
    END ;
    FileName[i] := 0C;
    WriteString("ReadName - FileName = ");WriteString(FileName);WriteString(" not found"); WriteLn;
 END ReadName;

BEGIN 
 (* GM OpenTextWindow(win, 0, 0, 704, 66, "DIALOG"); *)
 LOOP WriteString("in> ");
   ReadName;
   IF ch = 33C THEN EXIT END ;
      Open(source,FileName, FALSE); 
   IF Okay THEN
      Close(source);
       WriteString(" interpreting"); 
   ELSE WriteLn;WriteString("FileName = ");WriteString(FileName);WriteString(" not found"); WriteLn;
   END;
  WriteLn()
 END;


(* CloseTextWindow(win) *)
END GMPL0.

