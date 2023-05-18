MODULE PL0; (*NW WS 83/84*)
(* GM 
FROM Terminal IMPORT Read;
FROM  FileSystem IMPORT Lookup, Response, Close; 
FROM TextWindows IMPORT Window,
OpenTextWindow, Write, WriteLn, WriteString,
CloseTextWindow; 
*)

FROM FileIO  IMPORT Read, Write, WriteLn, WriteString, Open, Close, Okay,StdIn, StdOut;


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
BEGIN Read(StdIn,ch); 
      i := 1;
WHILE (CAP(ch) >= "A") & (CAP(ch) <= "Z")
      OR (ch >= "0") & (ch <= "9")
      OR (ch = ".") OR (ch = DEL) DO
      IF ch = DEL THEN
         IF i > 1 THEN Write( StdOut,DEL); i := i-1 END
         ELSIF i < NL THEN
                      Write(StdOut,ch);  
		      FileName[i] := ch; i := i+1
         END ;
         Read(StdIn,ch)
     END;
     IF (0 <i) & (i <NL) & (FileName[i-1] = "." ) THEN
        FileName[i] := "P"; i := i+1;
        FileName[i] := "L"; i := i+1;
        FileName[i] := "0"; i := i+1;
	WriteString(StdOut,"PLO") 
     END ;
  FileName[i] := 0C
END ReadName;

BEGIN 
 (* GM OpenTextWindow(win, 0, 0, 704, 66, "DIALOG"); *)
  LOOP WriteString(StdOut,"in> ");
       ReadName;
   (*IF ch = 33C THEN EXIT END ; *)
   IF ch = 13C THEN EXIT END ;
      WriteString(StdOut,FileName);
      Open(source,FileName, FALSE); 
   IF Okay THEN
      InitScanner;
      InitGenerator;
      Parse;
      Close(source);
      IF noerr THEN
         WriteString(StdOut," interpreting"); Interpret
       ELSE WriteString(StdOut," incorrect")
      END
   ELSE WriteString(StdOut," not found")
   END;
  WriteLn(StdOut)
 END;

CloseScanner; EndParser; EndGenerator; EndInterpreter;
(* CloseTextWindow(win) *)
END PL0.

