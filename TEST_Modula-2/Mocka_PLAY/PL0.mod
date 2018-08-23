MODULE PL0; (*NW WS 83/84*)
(* GM FROM
 Terminal IMPORT Read; *)
(* GM FROM
 FileSystem IMPORT Lookup, Response, Close; *)
(* GM FROM
 TextWindows IMPORT Window,
OpenTextWindow, Write, WriteLn, WriteString,
CloseTextWindow; *)

FROM  InOut IMPORT Read, Write, WriteLn, WriteString;
FROM FileIO IMPORT Open, Close, Okay;


FROM PL0Scanner IMPORT InitScanner, source, CloseScanner;
FROM PL0Parser IMPORT Parse, noerr, EndParser;
FROM PL0Generator IMPORT InitGenerator, EndGenerator;
FROM PL0Interpreter IMPORT Interpret, EndInterpreter;
CONST NL = 27;
 (*max file name length*)
VAR ch: CHAR;
    (* GM win: Window; *)
    FileName: ARRAY [0 .. NL] OF CHAR;

PROCEDURE ReadName;
CONST DEL = 177C;
VAR i: CARDINAL;
BEGIN Read(ch); 
      i := 1;
WHILE (CAP(ch) >= "A") & (CAP(ch) <= "Z")
      OR (ch >= "0") & (ch <= "9")
      OR (ch = ".") OR (ch = DEL) DO
      IF ch = DEL THEN
         IF i > 1 THEN Write( DEL); i := i-1 END
         ELSIF i < NL THEN
                       Write(ch); FileName[i] := ch; i := i+1
         END ;
         Read(ch)
     END;
     IF (0 <i) & (i <NL) & (FileName[i-1] = "." ) THEN
        FileName[i] := "P"; i := i+1;
        FileName[i] := "L"; i := i+1;
        FileName[i] := "0"; i := i+1; WriteString("PLO")
     END ;
  FileName[i] := 0C
END ReadName;

BEGIN 
 (* GM OpenTextWindow(win, 0, 0, 704, 66, "DIALOG"); *)
  LOOP WriteString("in> ");
       ReadName;
   IF ch = 33C THEN EXIT END ;
      Open(source,FileName, FALSE); 
   IF Okay THEN
      InitScanner;
      InitGenerator;
      Parse;
      Close(source);
      IF noerr THEN
         WriteString(" interpreting"); Interpret
       ELSE WriteString(" incorrect")
      END
   ELSE WriteString(" not found")
   END;
  WriteLn()
 END;

CloseScanner; EndParser; EndGenerator; EndInterpreter;
(* CloseTextWindow(win) *)
END PL0.

