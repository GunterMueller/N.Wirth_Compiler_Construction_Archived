IMPLEMENTATION MODULE PL0Scanner; 
(*   FROM  Terminal  IMPORT Read, BusyRead; *) 
(*  FROM  FileSystem IMPORT ReadChar;  *)
(*  FROM  TextWindows IMPORT Window, OpenTextWindow. 
             Write. WriteCard, Invert, CloseTextWindow;  *)
FROM  InOut IMPORT ReadInt, Write, WriteLn, WriteInt;


 CONST maxCard = 177777B; bufLen = 1000; 
 VAR  ch:  CHAR; (*last character read*) 
      idO, id1: CARDINAL; (*indices to identifier bufferr*) 
      (* GM win: Window;  *)
      keyTab: ARRAY [1  .. 20]  OF 
              RECORD sym: Symbol; ind: CARDINAL END ;
      K: CARDINAL;  (*no of  key  words*) 
      buf: ARRAY  [0 .. bufLen-1] OF  CHAR; 
      (*character buffer; 
             identifiers are stored with  leading length count*) 

 PROCEDURE Mark(n: CARDINAL); 
    BEGIN Invert(win, TRUE); 
           WriteCard(win, n,  1); Invert(win, FALSE) 
    END  Mark; 

 PROCEDURE GetCh; 
    BEGIN ReadChar(source, ch); Write(win, ch) 
    END  GetCh; 

 PROCEDURE Diff(u,v: CARDINAL): INTEGER; 
   VAR  w:  CARDINAL; 
   BEGIN w :=  ORD(buf[u]); 
         LOOP 
           IF  w = 0 THEN  RETURN 0 
           ELSIF buf[u] #  buf[v] THEN 
              RETURN INTEGER(buf[u]) - INTEGER(buf[v]) 
           ELSE u  :=  u+1; v  :=  v+1; w :=  w-l 
           END 
         END 
  END  Diff; 

 PROCEDURE KeepId; 
  BEGIN id  :=  id1 
  END  KeepId; 

 PROCEDURE Identifier; 
  VAR  k, l, m : CARDINAL; d: INTEGER; 
  BEGIN id1 :=  id; 
        IF  id1  < bufLen THEN INC(id1) END; 
        REPEAT 
             IF  id1  < bufLen THEN 
                 buf[id1] :=  ch;  id1  :=  id1  + 1 
               END; 
             GetCh 
        UNTIL (ch  < "0") OR  ("9" < ch) & (CAP(ch) < "A") OR 
              ("Z"  < CAP(ch)); 
              buf[id] :=  CHR(id1-id); (*Length*) 
              k  := 1; l := K; 
              REPEAT m :=  (k  + 1)  DIV  2; 
               d  :=  Diff(id. keyTab[m].ind); 
               IF  d  <=  0 THEN  l  :=  m - 1  END; 
               IF  d  >= 0 THEN  k  := m + 1  END 
              UNTIL k >  l; 
              IF  k >  l + 1 THEN 
               sym :=  keyTab[m].sym 
              ELSE sym  :=  ident 
              END 

  END  Identifier; 

 PROCEDURE Number; 
   VAR  i, j, k,  d:  CARDINAL; 
        dig: ARRAY  [0 .. 31]  OF  CHAR; 
   BEGIN sym  :=  number; i  :=  0; 
              REPEAT dig[i] :=  ch;  i  :=  i+1;  GetCh 
             UNTIL (ch  < "0") OR  ("9" < ch)  & (CAP(ch) < "A") OR 
                  ("Z"  < CAP(ch)); 
              j := 0;  k  := 0; 
              REPEAT d  :=  CARDINAL(dig[j]) - 60B; 
               IF  (d  < 10)  & ((maxCard-d) DIV  10  >= k)  THEN  k  := 10*k  + d 
                 ELSE Mark(30); k  :=  0 
               END ; 
               j  := j+1 
             UNTIL j  = i; 
              num :=  k 
  END  Number; 

 PROCEDURE GetSym; 
  VAR  xch:  CHAR; 
  PROCEDURE Comment; 
     BEGIN GetCh; 
            REPEAT 
              WHILE ch  #  "*" DO  GetCh END ;
                    GetCh 
              UNTIL ch  =  ")"; 
              GetCh 
     END  Comment; 

   BEGIN BusyRead(xch); 
         IF  xch  >  0C  THEN Read(xch) END; 
         LOOP (*ignore control characters*) 
              IF  ch  <=  " " THEN 
                  IF  ch  = DC  THEN  ch  :=  "  "; EXIT  END ;
                    GetCh 
                  ELSIF ch  >=  177C  THEN  GetCh 
                  ELSE EXIT 
               END 
          END  ; 

          CASE ch  OF (* "  " <=  ch  < 177C  *) 
              " " : sym := eof; ch := 0C | I
              "!" : sym := write; GetCh  |
              '"' : sym := null; GetCh | 
              "#" : sym := neq; GetCh |
              "$" : sym := null; GetCh |
              "%" : sym := null; GetCh |
              "&" : sym := null; GetCh |
              "'" : sym := null; GetCh |
              "(" : GetCh;
                    IF ch = "*" THEN Comment; GetSym
                    ELSE sym := lparen
                    END |
              ")" : sym := rparen; GetCh |
              "*" : sym := times; GetCh |
              "+" : sym := plus;  GetCh |
              "," : sym := comma; GetCh |
              "-" : sym := minus; GetCh |
              "." : sym := period; GetCh |
              "/" : sym := div; GetCh |
          "0" .. "9": Number |
              ":" : GetCh;
                    IF ch = "=" THEN GetCh; sym := becomes
                    ELSE sym := null
                    END |

t .
 . . .
 sym .= semicolon; GetCh
"(If
 GetCh;
IF ch = "=" THEN GetCh; sym .= 1eq
ELSE sym .= lss
END I
11="
 sym .= eq1 ; GetCh
")"
 GetCh;
IF ch = It=" THEN GetCh; sym .= geq
ELSE sym := gtr
END I
"1"
 sym .= read; GetCh
"@"
 sym:= null; GetCh
"A" .. "Z": Identifier I
"[" .. "''': sym := null; GetCh
.. a" .... z .. : Identifier I
.. { .... "-": sym := null; GetCh
END




                                   END 

                               END  GetSym; 

                               PROCEDURE          InitScanner; 

                               BEGIN       ch    :=  ..   "; 

                                   IF  ida = a THEN  ida  :=  id 

                                       ELSE      id  :=  ida; Write(win. 14C) 

                                   END 

                               END  InitScanner; 

                               PROCEDURE          C1oseScanner; 

                               BEGIN      C1oseTextWindow(win) 

                               END  C1oseScanner; 

                               PROCEDURE          EnterKW(sym:              Symbol;        name:       ARRAY      OF  CHAR); 

                               VAR  1.  L:  CARDINAL; 

                               BEGIN       K :=  K+1; 

                                   keyTab[KJ.sym              :=  sym; 

                                   keyTab[KJ.ind :=  id; 

                                   1  : = a;  L  : = HIGH  ( name)  ; 

                                   buf[idJ :=  CHR(L+2); 

                                   INC(id); 

                                   WHILE       1 (=  L DO 

                                       bUf[idJ :=  name[lJ; 

                                       id  :=  id+1;  1  :=  1+1 

          END 

        END  EnterKW; 

BEGIN K := 0; id := 0; idO .= 0;
EnterKW( do. ''~O'');
EnterKW(if. "IF");
EnterKW( end. "END");
EnterKW(odd. "ODD");
EnterKW(var. "VAR");
EnterKW(call. "CALL");
EnterKW( then. "THEN");
EnterKW(begin. "BEGIN");
EnterKW(const. "CONST");
EnterKW(wh il e. "WHILE");
EnterKW(procedure. "PROCEDURE");
OpenTextWindow(win. O. 574. 704. 354. "PROGRA

END Pl0Scanner.
