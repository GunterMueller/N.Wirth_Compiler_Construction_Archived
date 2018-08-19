IMPLEMENTATION MODULE PL0Parser; 
  FROM  SYSTEM IMPORT TSIZE; 
(* GM  FROM  Heap IMPORT ALLOCATE, ResetHeap;  *)
(*  FROM  TextWindows IMPORT Window, OpenTextWindow, Write, 
          WriteLn,  WriteCard, WriteString, Invert, CloseTextWindow;  *)
FROM  InOut IMPORT ReadInt, Write, WriteLn, WriteInt;
FROM Storage IMPORT ALLOCATE;


FROM PL0Scanner IMPORT 
            Symbol,  sym, id, num, Diff, KeepId, GetSym, Mark; 

FROM PL0Generator IMPORT Label, Gen, fixup; 

TYPE  ObjectClass = (Const, Var,  Proc, Header); 
      ObjPtr  =  POINTER TO  Object; 
      Object = RECORD name: CARDINAL; 
                  next:  ObjPtr; 
                  CASE kind:  ObjectClass OF 
                   Const, Var, Proc: |
                   Header: last, down: ObjPtr 
                  END 
                 END  ; 

         VAR  topScope, bottom,  undef:  ObjPtr; 
           (* GM win: Window;  *)

 PROCEDURE err(n: CARDINAL); 
    BEGIN noerr :=  FALSE; Mark(n); (* GM Invert(win, TRUE);  *)
          (* GM WriteCard(win, n,  1); Invert(win, FALSE) *)
    END  err; 

 PROCEDURE test(s: Symbol; n: CARDINAL); 
    BEGIN 
          IF  sym  < s  THEN  err(n); 
           REPEAT GetSym UNTIL sym  >=  s 
          END 
   END  test; 

  PROCEDURE NewObj(k: ObjectClass): ObjPtr;
     VAR obj: ObjPtr;
     BEGIN (*enter new object into list*)
           ALLOCATE(obj, TSIZE(Object));
           WITH obj^ DO
                name := id; kind := k; next := NIL
          END ;
          KeepId; topScope^.last^.next := obj; topScope^.last := obj;
          RETURN obj
    END NewObj;


 PROCEDURE find(id: CARDINAL): ObjPtr;
   VAR hd, obj: ObjPtr;
   BEGIN hd := topScope;
         WHILE hd # NIL DO
               obj := hd^.next;
              WHILE obj # NIL DO
                    IF Diff(id, obj^.name) = 0  THEN RETURN obj
                    ELSE obj := obj^.next
                    END
              END ;
               hd := hd^.down
       END ;
       err(11); RETURN NIL
   END find;


 PROCEDURE expression; 

    PROCEDURE factor; 
       VAR  obj: ObjPtr; 
       BEGIN (* GM WriteString(win. "factor"); WriteLn(win);  *)
             IF  sym  = ident THEN  obj := find(id);
                 WITH obj^ DO 
                   CASE kind OF 
                         Const , Var: |
                         Proc:  err(21) 
                     END 
                    END ; 
                   GetSym 
                  ELSIF sym  =  number THEN   GetSym
                  ELSIF sym  =  lparen THEN 
                   GetSym; expression; 
                    IF  sym  = rparen THEN  GetSym ELSE err(7) END 
                  ELSE err(8) 
                  END 
      END  factor; 

    PROCEDURE term; 
       BEGIN (* GM WriteString(win. "term"); WriteLn(win);  *)
                  factor; 
                  WHILE (times <= sym)  & (sym  <= div) DO 
                    GetSym; factor
                   END 
       END  term; 

     BEGIN (* GM WriteString(win. "expression"); WriteLn(win);  *)
                IF  (plus <= sym)  & (sym  <= minus)  THEN 
                   GetSym; term; 
                ELSE term 
                END ; 

                WHILE (plus <= sym)  & (sym  <= minus)  DO 
                      GetSym; term; 
                END 

              END  expression; 

  PROCEDURE condition; 
    BEGIN (* GM WriteString(win. "condition"); WriteLn(win);  *)
          IF  sym  = odd  THEN 
              GetSym;  expression
          ELSE 
             expression; 
             IF  (eql <= sym)  & (sym  <= geq)  THEN 
                 GetSym; expression 
             ELSE err(20)
             END
           END
   END condition;

 PROCEDURE statement;
  VAR obj: ObjPtr;
  BEGIN (* GM WriteString(win. "statement"); WriteLn(win); *)
IF sym = ident THEN
obj := find(id); GetSym;
IF sym = becomes THEN GetSym
ELSE err(13)
END ;
expression
ELSIF sym = call THEN
GetSym;
IF sym = ident THEN
obj := find(id); GetSym
ELSE err(14)
END
ELSIF sym = begin THEN
GetSym; statement;
WHILE sym = semicolon DO
GetSym; statement
END ;
IF sym = end THEN GetSym ELSE err(17) END
ELSIF sym = if THEN
GetSym; condition;
IF sym = then THEN GetSym ELSE err(16) END;
statement
ELSIF sym = while THEN
GetSym; condition;
IF sym = do THEN GetSym ELSE err(18) END;
statement
ELSIF sym = read THEN
GetSym;
IF sym = ident THEN obj := find(id)
ELSE err(14)
END ;
GetSym
ELSIF sym = write THEN
GetSym; expression
END
END statement;


            PROCEDURE block;
VAR hd, obj: ObjPtr;
PROCEDURE ConstDeclaration;
VAR obj: ObjPtr;
BEGIN (* GM WriteString(win. "ConstDeclaration"); WriteLn(win); *)
IF sym = ident THEN
GetSym;
IF sym = eql THEN GetSym;
IF sym = number THEN
obj := NewObj(Const); GetSym
ELSE err(2)
END
ELSE err(3)
END
ELSE err(4)
END
END ConstDeclaration;

PROCEDURE VarDeclaration;
VAR obj: ObjPtr;
BEGIN (* GM WriteString(win. "VarDeclaration"); WriteLn(win); *)
IF sym = ident THEN
obj := NewObj(Var); GetSym
ELSE err(4)
END
END VarDeclaration;



BEGIN (* GM WriteString(win. "block"); WriteLn(win); *)
ALLOCATE(hd, TSIZE(Object));
WITH hd^ DO
kind := Header; next := NIL; last := hd;
name := 0; down := topScope
END ;
topScope := hd;
IF sym = const THEN
GetSym; ConstDeclaration;
WHILE sym = comma DO
GetSym; ConstDeclaration
END ;
IF sym = semicolon THEN GetSym ELSE err(5)
 END
END ;
IF sym = var THEN
GetSym; VarDeclaration;
WHILE sym = comma DO
GetSym; VarDeclaration
END ;
IF sym = semicolon THEN GetSym ELSE err(5)
 END
END ;
WHILE sym = procedure DO GetSym;
IF sym = ident THEN GetSym ELSE err(4) END;
obj := NewObj(Proc);
 IF sym = semicolon THEN GetSym ELSE err(5) END;
 block;
IF sym = semicolon THEN GetSym ELSE err(5) END
END ;
statement;
topScope := topScope^.down
END block;



 PROCEDURE Parse;
    BEGIN noerr := TRUE; topScope := NIL;
          (* GM Write(win, 14C); ResetHeap(bottom); *)
          GetSym; block;
          IF sym # period THEN err(9) END
    END Parse;

 PROCEDURE EndParser;
    BEGIN (* GM CloseTextWindow(win) *)
    END EndParser;

BEGIN (* OpenTextWindow(win, 0, 66, 234, 508, "PARSE"); *)
END PL0Parser.

