IMPLEMENTATION MODULE PL0Parser; 
  FROM  SYSTEM IMPORT TSIZE; 
  FROM  Heap IMPORT ALLOCATE, ResetHeap; 
(*  FROM  TextWindows IMPORT Window, OpenTextWindow, Write, 
          WriteLn,  WriteCard, WriteString, Invert, CloseTextWindow;  *)
FROM  InOut IMPORT ReadInt, Write, WriteLn, WriteInt;


         FROM PL0Scanner IMPORT 
            Symbol, sym, id, num, Diff, KeepId, GetSym, Mark; 

         FROM PL0Generator IMPORT Label, Gen, fixup; 

         TYPE  ObjectClass = (Const, Var,  Proc, Header); 

            ObjPtr  POINTER TO  Object; 
                = RECORD name: CARDINAL; 

            Object 

                  next:  ObjPtr; 

                  CASE kind:  ObjectClass OF 

                   Const:  val: INTEGER I 

                   Var: vlev, vadr: CARDINAL 

                   Proc: plev, padr, size: CARDINAL 

                   Header: last, down: ObjPtr 

                  END 

                 END  ; 

         VAR  topScope, bottom,  undef:  ObjPtr; 

           curley: CARDINAL; 

           win: Window; 

         PROCEDURE err(n: CARDINAL); 

         BEGIN noerr :=  FALSE; Mark(n); Invert(win, TRUE); 

          WriteCard(win, n,  1); Invert(win, FALSE) 

         END  err; 

         PROCEDURE test(s: Symbol; n: CARDINAL); 

         BEGIN 

          IF  sym  < s  THEN  err(n); 

           REPEAT GetSym UNTIL sym  >=  s 

          END 

         END  test; 

         PROCEDURE NewObj(k: ObjectClass): ObjPtr; 

          VAR  obj: ObjPtr; 

         82 

             BEGIN (.check for multiple definition.) 

              obj  := topScopet.next; 

              WHILE obj #  NIL  DO 

                IF  Diff(id. objt.name) 0 THEN  err(25) END 

                obj  :=  objt.next 

              END  ; 

              (.now enter new  object into list.) 

              ALLOCATE(obj. TSIZE(Object»; 

              WITH  objt DO 

                name := id; kind  :=  k;  next :=  NIL 

              END ; 

              KeepId; topScopet.lastt.next :=  obj; topScopet.last .=  obj; 

              RETURN obj 

             END  NewObj; 

             PROCEDURE find(id: CARDINAL): ObjPtr; 

              VAR  hd.  obj: ObjPtr; 

             BEGIN hd :=  topScope; 

              WHILE hd  #  NIL  DO 

                obj  :=  hdt.next; 

                WHILE obj #  NIL  DO 

                 IF  Diff(id. objt.name) 0 THEN  RETURN obj 

                   ELSE obj  :=  objt.next 

                 END 

                END ; 

                hd :=  hdt.down 

              END ; 

              err(ll); RETURN undef 

             END  find; 

             PROCEDURE expression; 

              VAR  addop:  Symbol; 

              PROCEDURE factor; 

                VAR  obj: ObjPtr; 

              BEGIN WriteString(win. "factor"); WriteLn(win); 

                test(lparen. 6); 

                IF  sym  = ident THEN 

                 obj := find(id); 

                 WITH objt DO 

                   CASE kind OF 

                                                                     83 

                         Const:  Gen(D. D. val) I 

                         Var:  Gen(2. curlev-vlev. vadr) I 

                         Proc:  err(21) 

                     END 

                    END ; 

                   GetSym 

                  ELSIF sym  =  number THEN 

                   Gen(D. D. num); GetSym 

                  ELSIF sym  =  lparen THEN 

                   GetSym; expression; 

                    IF  sym  = rparen THEN  GetSym ELSE err(7) END 

                  ELSE err(8) 

                  END 

                END  factor; 

                PROCEDURE term; 

                  VAR  mulop: Symbol; 

                BEGIN WriteString(win. "term"); WriteLn(win); 

                  factor; 

                  WHILE (times (= sym)  & (sym  (= div) DO 

                   mulop :=  sym; GetSym; factor; 

                    IF  mulop = times THEN  Gen(l.D.4) 

                    ELSE Gen(l.D.5) 

                    END 

                  END 

                END  term; 

              BEGIN WriteString(win. "expression"); WriteLn(win); 

                IF  (plus (= sym)  & (sym  (= minus)  THEN 

                  addop := sym; GetSym; term; 

                  IF  addop = minus THEN  Gen(l.D.l) END 

                ELSE term 

                END ; 

                WHILE (plus (= sym)  & (sym  (= minus)  DO 

                  addop :=  sym; GetSym; term; 

                  IF  addop = plus THEN  Gen(l.D.2) ELSE  Gen(l.D.3) END 

                END 

              END  expression; 

              PROCEDURE condition; 

                VAR  relop: Symbol; 

             84 

                  BEGIN WriteString(win. "condition"); WriteLn(win); 

                    IF  sym  = odd  THEN 

                      GetSym;  expression; Gen(1.D.5) 

                    ELSE 

                      expression; 

                      IF  (eq1 (= sym)  & (sym  (= geq)  THEN 

                         re10p  :=  sym; GetSym; expression; 

                         CASE re10p  OF 

                           eq1:  Gen(l.D. 8)  I 

                           neq: Gen(l.D. 9)  I 

                           lss: Gen(1.D.1D)   I 

                           geq:  Gen(l.D.ll) I 

                           gtr: Gen(1.D.12)  I 

                           1eq:  Gen(1.D.13) 

                         END 

                      ELSE  err(2D) 

                      END 

                    END 

                  END  condition; 

                  PROCEDURE  statement; 

                    VAR  obj: ObjPtr; LD.  Ll:  CARDINAL; 

                  BEGIN WriteString(win. "statement"); WriteLn(win); 

                    test(ident. lD); 

                    IF  sym  =  ident THEN 

                      obj  := find(id); 

                      IF  objt.kind #  Var  THEN  err(12); obj  .=  NIL  END 

                      GetSym; 

                      IF  sym  = becomes THEN  GetSym 

                      ELSIF  sym  = eq1  THEN  err(13); GetSym 

                      ELSE  err(13) 

                      END  ; 

                      expression; 

                      IF  obj  #  NIL  THEN 

                         Gen(3. cur1ev  - objt.v1ev. objt.vadr) (*store*) 

                      END 

                    ELSIF  sym  = call THEN 

                      GetSym; 

                      IF  sym  = ident THEN 

                         obj  :=  find(id); 

                         IF  objt.kind = Proc  THEN 

                                                        85 

                 Gen(4, curley - objt.plev, objt.padr) 

                ELSE err(15) 

                END  ; 

                GetSym 

              ELSE err(14) 

              END 

             ELSIF sym  = begin THEN  GetSym; 

              LOOP statement; 

                IF  sym  = semicolon THEN  GetSym 

                ELSIF sym  =  end  THEN  GetSym; EXIT 

                ELSIF sym  < canst THEN  err(17) 

                ELSE err(17); EXIT 

                END 

              END 

             ELSIF sym  =  if THEN 

              GetSym; condition; 

              IF  sym  =  then  THEN  GetSym ELSE err(16) END; 

              LD :=  Label(); Gen(7,D,D); statement; fixup(LD) 

             ELSIF sym  = while THEN  LD  :=  Label(); 

              GetSym; condition; L1  :=  Label(); Gen(7,D,D); 

              IF  sym  =  do  THEN  GetSym ELSE err(18) END  ; 

              statement; Gen(6,D,LD); fixup(L1) 

             ELSIF sym  =  read  THEN 

              GetSym; 

              IF  sym  =  ident THEN 

                obj  :=  find( id); 

                IF  objt.kind =  Var  THEN 

                 Gen(1,D,14); Gen(3, curley - objt.vlev, objt.vadr) 

                ELSE err(12) 

                END 

              ELSE err(14) 

              END  ; 

              GetSym 

             ELSIF sym  = write THEN 

              GetSym; expression; Gen(1,D,15) 

             END ; 

             test(ident, 19) 

            END  statement; 

            PROCEDURE block; 

             VAR  adr: CARDINAL; (-data address-) 

        86 

               La: CARDINAL; (*initial code  index*) 

               hd,  obj: ObjPtr; 

             PROCEDURE ConstDeclaration; 

              VAR  obj: ObjPtr; 

             BEGIN WriteString(win, "ConstDeclaration"); WriteLn(win); 

              IF  sym  = ident THEN 

               GetSym; 

               IF  (sym = eql) OR  (sym  = becomes) THEN 

                 IF  sym  =  becomes THEN  err(l) END 

                 GetSym; 

                 IF  sym  =  number THEN 

                  obj  :=  NewObj(Const); objt.val .=  num;  GetSym 

                 ELSE err(2) 

                 END 

               ELSE  err(3) 

               END 

              ELSE err(4) 

              END 

             END  ConstDeclaration; 

             PROCEDURE VarDeclaration; 

              VAR  obj: ObjPtr; 

             BEGIN WriteString(win, "VarDeclaration"); WriteLn(win); 

              IF  sym  = ident THEN 

               obj  :=  NewObj(Var); GetSym; 

               objt.vlev .=  curley; objt.vadr .=  adr; adr .=  adr+1 

              ELSE  err(4) 

              END 

             END  VarDeclaration; 

           BEGIN WriteString(win, "block"); WriteLn(win); 

             curley :=  curley + 1;  adr  :=  3; 

             ALLOCATE(hd, TSIZE(Object»; 

            WITH hdt  DO 

              kind  .=  Header; next :=  NIL; last .=  hd; 

              name :=  0;  down :=  topScope 

             END ; 

             topScope  :=  hd;  La  :=  Label(); Gen(6,O,O);  (*jump*) 

             IF  sym  =  const THEN  GetSym; 

              LOOP  ConstDeclaration; 

                                                     87 

               IF  sym  =  comma THEN  GetSym 

               ELSIF sym  = semicolon  THEN  GetSym; EXIT 

               ELSIF sym  = ident THEN  err(5) 

               ELSE err(5); EXIT 

               END 

              END 

            END ; 

            IF  sym  =  var  THEN  GetSym; 

              LOOP  VarDeclaration; 

               IF  sym  =  comma THEN  GetSym 

               ELSIF sym  = semicolon  THEN  GetSym; EXIT 

               ELSIF sym  = ident THEN  err(5) 

               ELSE err(5); EXIT 

               END 

              END 

            END ; 

            WHILE sym  =  procedure DO 

              GetSym; 

              IF  sym  = ident THEN  GetSym ELSE  err(4) END 

              obj  := NewObj(Proc); 

              objt.plev :=  curley; objt.padr :=  Label(); 

              IF  sym semicolon THEN  GetSym ELSE err(5) END 

              block; 

              IF  sym semicolon THEN  GetSym ELSE  err(5) END 

            END  ; 

                              (.enter.) 

            fixup(LO); Gen(5.0.adr); 

            statement; 

                      (.return.) 

            Gen(1.0.0); 

            topScope  .=  topScopet.down; curley :=  curley - 1 

           END  block; 

           PROCEDURE Parse; 

           BEGIN noerr :=  TRUE; topScope :=  NIL; curley .=  0; 

            Write(win. 14C);  ResetHeap(bottom); 

            GetSym; block; 

            IF  sym  #  period THEN  err(9) END 

           END  Parse; 

           PROCEDURE EndParser; 

           BEGIN CloseTextWindow(win) 

           END  EndParser; 

         88 

           BEGIN ALLOCATE(undef, TSIZE(Object)); ALLOCATE(bottom, 0); 

             WITH undeft DO 

               name :=  0; next :=  NIL; kind  :=  Var;  vlev :=  0;  vadr  :=  0 

             END ; 

             OpenTextWindow(win, 0,  66,  234,  508,  "PARSE"); 

           END  PL0Parser. 
