MODULE OSP; (* NW 23.9.93 / 9.2.95*)
  IMPORT OSG, OSS, MenuViewers, Oberon, TextFrames, Texts, Viewers;
  
  CONST WordSize = 4;
  VAR sym: INTEGER; loaded: BOOLEAN;
    topScope, universe: OSG.Object; (* linked lists, end with guard *)
    guard: OSG.Object;
    W: Texts.Writer;
    
  PROCEDURE NewObj (VAR obj: OSG.Object; class: INTEGER);
    VAR new, x: OSG.Object;
  BEGIN x := topScope; guard.name := OSS.id;
    WHILE x.next.name # OSS.id DO x := x.next END;
    IF x.next = guard THEN
      NEW(new); new.name := OSS.id; new.class := class; new.next := guard;
      x.next := new; obj := new
    ELSE obj := x.next; OSS.Mark("mult def")
    END
  END NewObj;
  
  PROCEDURE find (VAR obj: OSG.Object);
    VAR s, x: OSG.Object;
  BEGIN s := topScope; guard.name := OSS.id;
    LOOP x := s.next;
      WHILE x.name # OSS.id DO x := x.next END;
      IF x # guard THEN obj := x; EXIT END;
      IF s = universe THEN obj := x; OSS.Mark("undef"); EXIT END;
      s := s.dsc
    END
  END find;
  
  PROCEDURE FindField (VAR obj: OSG.Object; list: OSG.Object);
  BEGIN guard.name := OSS.id;
    WHILE list.name # OSS.id DO list := list.next END;
    obj := list
  END FindField;
  
  PROCEDURE IsParam (obj: OSG.Object): BOOLEAN;
  BEGIN RETURN (obj.class = OSG.Par) OR (obj.class = OSG.Var) & (obj.val > 0)
  END IsParam;
  
  PROCEDURE OpenScope;
    VAR s: OSG.Object;
  BEGIN NEW(s); s.class := OSG.Head; s.dsc := topScope; 
    s.next := guard; topScope := s
  END OpenScope;

  PROCEDURE CloseScope;
  BEGIN topScope := topScope.dsc
  END CloseScope;
  
  (* -------------------- Parser ---------------------*)
  
  PROCEDURE^ expression (VAR x: OSG.Item);
  
  PROCEDURE selector (VAR x: OSG.Item);
    VAR y: OSG.Item; obj: OSG.Object;
  BEGIN
    WHILE (sym = OSS.lbrak) OR (sym = OSS.period) DO
      IF sym = OSS.lbrak THEN
        OSS.Get(sym); expression(y);
        IF x.type.form = OSG.Array THEN 
          OSG.Index(x, y) 
        ELSE OSS.Mark("not an array") END;
        IF sym = OSS.rbrak THEN OSS.Get(sym) ELSE OSS.Mark("]?") END
      ELSE OSS.Get(sym);
        IF sym = OSS.ident THEN
          IF x.type.form = OSG.Record THEN
            FindField(obj, x.type.fields); OSS.Get(sym);
            IF obj # guard THEN OSG.Field(x, obj) ELSE OSS.Mark("undef") END
          ELSE OSS.Mark("not a record")
          END
        ELSE OSS.Mark("ident?")
        END
      END
    END
  END selector;
  
  PROCEDURE factor (VAR x: OSG.Item);
    VAR obj: OSG.Object;
  BEGIN (*sync*)
    IF sym < OSS.lparen THEN OSS.Mark("ident?");
      REPEAT OSS.Get(sym) UNTIL sym >= OSS.lparen
    END;
    IF sym = OSS.ident THEN 
      find(obj); OSS.Get(sym); OSG.MakeItem(x, obj); selector(x)
    ELSIF sym = OSS.number THEN 
      OSG.MakeConstItem(x, OSG.intType, OSS.val); OSS.Get(sym)
    ELSIF sym = OSS.lparen THEN
      OSS.Get(sym); expression(x);
      IF sym = OSS.rparen THEN OSS.Get(sym) ELSE OSS.Mark(")?") END
    ELSIF sym = OSS.not THEN OSS.Get(sym); factor(x); OSG.Op1(OSS.not, x)
    ELSE OSS.Mark("factor?"); OSG.MakeItem(x, guard)
    END
  END factor;
  
  PROCEDURE term (VAR x: OSG.Item);
    VAR y: OSG.Item; op: INTEGER;
  BEGIN factor(x);
    WHILE (sym >= OSS.times) & (sym <= OSS.and) DO
      op := sym; OSS.Get(sym);
      IF op = OSS.and THEN OSG.Op1(op, x) END;
      factor(y); OSG.Op2(op, x, y)
    END
  END term;

  PROCEDURE SimpleExpression (VAR x: OSG.Item);
    VAR y: OSG.Item; op: INTEGER;
  BEGIN
    IF sym = OSS.plus THEN OSS.Get(sym); term(x)
    ELSIF sym = OSS.minus THEN OSS.Get(sym); term(x); OSG.Op1(OSS.minus, x)
    ELSE term(x)
    END;
    WHILE (sym >= OSS.plus) & (sym <= OSS.or) DO
      op := sym; OSS.Get(sym);
      IF op = OSS.or THEN OSG.Op1(op, x) END;
      term(y); OSG.Op2(op, x, y)
    END
  END SimpleExpression;
  
  PROCEDURE expression (VAR x: OSG.Item);
    VAR y: OSG.Item; op: INTEGER;
  BEGIN SimpleExpression(x);
    IF (sym >= OSS.eql) & (sym <= OSS.gtr) THEN
      op := sym; OSS.Get(sym); SimpleExpression(y); OSG.Relation(op, x, y)
    END
  END expression;
  
  PROCEDURE parameter (VAR fp: OSG.Object);
    VAR x: OSG.Item;
  BEGIN expression(x);
    IF IsParam(fp) THEN OSG.Parameter(x, fp.type, fp.class); fp := fp.next
    ELSE OSS.Mark("too many parameters")
    END
  END parameter;
  
  PROCEDURE StatSequence;
    VAR par, obj: OSG.Object; x, y: OSG.Item; L: LONGINT;
    PROCEDURE param (VAR x: OSG.Item);
    BEGIN
      IF sym = OSS.lparen THEN OSS.Get(sym) ELSE OSS.Mark(")?") END;
      expression(x);
      IF sym = OSS.rparen THEN OSS.Get(sym) ELSE OSS.Mark(")?") END
    END param;
  BEGIN (* StatSequence *)
    LOOP (*sync*) obj := guard;
      IF sym < OSS.ident THEN OSS.Mark("statement?");
        REPEAT OSS.Get(sym) UNTIL sym >= OSS.ident
      END;
      IF sym = OSS.ident THEN
        find(obj); OSS.Get(sym); OSG.MakeItem(x, obj); selector(x);
        IF sym = OSS.becomes THEN OSS.Get(sym); expression(y); OSG.Store(x, y)
        ELSIF sym = OSS.eql THEN OSS.Mark(":= ?"); OSS.Get(sym); expression(y)
        ELSIF x.mode = OSG.Proc THEN
          par := obj.dsc;
          IF sym = OSS.lparen THEN OSS.Get(sym);
            IF sym = OSS.rparen THEN OSS.Get(sym)
            ELSE
              LOOP parameter(par);
                IF sym = OSS.comma THEN OSS.Get(sym)
                ELSIF sym = OSS.rparen THEN OSS.Get(sym); EXIT
                ELSIF sym >= OSS.semicolon THEN EXIT
                ELSE OSS.Mark(") or , ?")
                END
              END
            END
          END;
          IF obj.val < 0 THEN OSS.Mark("forward call")
          ELSIF ~IsParam(par) THEN OSG.Call(x)
          ELSE OSS.Mark("too few parameters")
          END
        ELSIF x.mode = OSG.SProc THEN
          IF obj.val <= 3 THEN param(y) END;
          OSG.IOCall(x, y)
        ELSIF obj.class = OSG.Typ THEN OSS.Mark("illegal assignment?")
        ELSE OSS.Mark("statement?")
        END
      ELSIF sym = OSS.if THEN
        OSS.Get(sym); expression(x); OSG.CJump(x);
        IF sym = OSS.then THEN OSS.Get(sym) ELSE OSS.Mark("THEN?") END;
        StatSequence; L := 0;
        WHILE sym = OSS.elsif DO
          OSS.Get(sym); OSG.FJump(L); OSG.FixLink(x.a); expression(x);
          OSG.CJump(x);
          IF sym = OSS.then THEN OSS.Get(sym) ELSE OSS.Mark("THEN?") END;
          StatSequence
        END;
        IF sym = OSS.else THEN
          OSS.Get(sym); OSG.FJump(L); OSG.FixLink(x.a); StatSequence
        ELSE OSG.FixLink(x.a)
        END;
        OSG.FixLink(L);
        IF sym = OSS.end THEN OSS.Get(sym) ELSE OSS.Mark("END?") END
      ELSIF sym = OSS.while THEN
        OSS.Get(sym); L := OSG.pc; expression(x); OSG.CJump(x);
        IF sym = OSS.do THEN OSS.Get(sym) ELSE OSS.Mark("DO?") END;
        StatSequence; OSG.BJump(L); OSG.FixLink(x.a);
        IF sym = OSS.end THEN OSS.Get(sym) ELSE OSS.Mark("END?") END
      END;
      IF sym = OSS.semicolon THEN OSS.Get(sym)
      ELSIF (sym >= OSS.semicolon) & (sym < OSS.if) OR (sym >= OSS.array) THEN
        EXIT
      ELSE OSS.Mark("; ?")
      END
    END
  END StatSequence;
  
  PROCEDURE IdentList (class: INTEGER; VAR first: OSG.Object);
    VAR obj: OSG.Object;
  BEGIN
    IF sym = OSS.ident THEN
      NewObj(first, class); OSS.Get(sym);
      WHILE sym = OSS.comma DO
        OSS.Get(sym);
        IF sym = OSS.ident THEN NewObj(obj, class); OSS.Get(sym)
        ELSE OSS.Mark("ident?")
        END
      END;
      IF sym = OSS.colon THEN OSS.Get(sym) ELSE OSS.Mark(":?") END
    END
  END IdentList;
  
  PROCEDURE Type (VAR type: OSG.Type);
    VAR obj, first: OSG.Object; x: OSG.Item; tp: OSG.Type;
  BEGIN type := OSG.intType; (*sync*)
    IF (sym # OSS.ident) & (sym < OSS.array) THEN OSS.Mark("type?");
      REPEAT OSS.Get(sym) UNTIL (sym = OSS.ident) OR (sym >= OSS.array)
    END;
    IF sym = OSS.ident THEN
      find(obj); OSS.Get(sym);
      IF obj.class = OSG.Typ THEN type := obj.type ELSE OSS.Mark("type?") END
    ELSIF sym = OSS.array THEN
      OSS.Get(sym); expression(x);
      IF (x.mode # OSG.Const) OR (x.a < 0) THEN OSS.Mark("bad index") END;
      IF sym = OSS.of THEN OSS.Get(sym) ELSE OSS.Mark("OF?") END;
      Type(tp); NEW(type); type.form := OSG.Array; type.base := tp;
      type.len := SHORT(x.a); type.size := type.len * tp.size
    ELSIF sym = OSS.record THEN
      OSS.Get(sym); NEW(type); type.form := OSG.Record; type.size := 0;
      OpenScope;
      LOOP
        IF sym = OSS.ident THEN
          IdentList(OSG.Fld, first); Type(tp); obj := first;
          WHILE obj # guard DO
            obj.type := tp; obj.val := type.size; INC(type.size, obj.type.size);
            obj := obj.next
          END
        END;
        IF sym = OSS.semicolon THEN OSS.Get(sym)
        ELSIF sym = OSS.ident THEN OSS.Mark("; ?")
        ELSE EXIT
        END
      END;
      type.fields := topScope.next; CloseScope;
      IF sym = OSS.end THEN OSS.Get(sym) ELSE OSS.Mark("END?") END
    ELSE OSS.Mark("ident?")
    END
  END Type;
  
  PROCEDURE declarations (VAR varsize: LONGINT);
    VAR obj, first: OSG.Object;
      x: OSG.Item; tp: OSG.Type; L: LONGINT;
  BEGIN (*sync*)
    IF (sym < OSS.const) & (sym # OSS.end) THEN OSS.Mark("declaration?");
      REPEAT OSS.Get(sym) UNTIL (sym >= OSS.const) OR (sym = OSS.end)
    END;
    LOOP
      IF sym = OSS.const THEN
        OSS.Get(sym);
        WHILE sym = OSS.ident DO
          NewObj(obj, OSG.Const); OSS.Get(sym);
          IF sym = OSS.eql THEN OSS.Get(sym) ELSE OSS.Mark("=?") END;
          expression(x);
          IF x.mode = OSG.Const THEN obj.val := x.a; obj.type := x.type
          ELSE OSS.Mark("expression not constant")
          END;
          IF sym = OSS.semicolon THEN OSS.Get(sym) ELSE OSS.Mark(";?") END
        END
      END;
      IF sym = OSS.type THEN
        OSS.Get(sym);
        WHILE sym = OSS.ident DO
          NewObj(obj, OSG.Typ); OSS.Get(sym);
          IF sym = OSS.eql THEN OSS.Get(sym) ELSE OSS.Mark("=?") END;
          Type(obj.type);
          IF sym = OSS.semicolon THEN OSS.Get(sym) ELSE OSS.Mark(";?") END
        END
      END;
      IF sym = OSS.var THEN
        OSS.Get(sym);
        WHILE sym = OSS.ident DO
          IdentList(OSG.Var, first); Type(tp); obj := first;
          WHILE obj # guard DO
            obj.type := tp; obj.lev := OSG.curlev;
            varsize := varsize + obj.type.size; obj.val := - varsize; 
            obj := obj.next
          END;
          IF sym = OSS.semicolon THEN OSS.Get(sym) ELSE OSS.Mark("; ?") END
        END
      END;
      IF(sym >= OSS.const) & (sym <= OSS.var) THEN
        OSS.Mark("declaration?") 
      ELSE EXIT END
    END
  END declarations;
  
  PROCEDURE ProcedureDecl;
    CONST marksize = 8;
    VAR proc, obj: OSG.Object;
      procid: OSS.Ident;
      locblksize, parblksize: LONGINT;

    PROCEDURE FPSection;
      VAR obj, first: OSG.Object; tp: OSG.Type; parsize: LONGINT;
    BEGIN
      IF sym = OSS.var THEN OSS.Get(sym); IdentList(OSG.Par, first)
      ELSE IdentList(OSG.Var, first)
      END;
      IF sym = OSS.ident THEN
        find(obj); OSS.Get(sym);
        IF obj.class = OSG.Typ THEN tp := obj.type
        ELSE OSS.Mark("ident?"); tp := OSG.intType
        END
      ELSE OSS.Mark("ident?"); tp := OSG.intType
      END;
      IF first.class = OSG.Var THEN
        parsize := tp.size;
        IF tp.form >= OSG.Array THEN OSS.Mark("no struct params") END;
      ELSE parsize := WordSize
      END;
      obj := first;
      WHILE obj # guard DO 
        obj.type := tp; INC(parblksize, parsize); obj := obj.next 
      END
    END FPSection;

  BEGIN (* ProcedureDecl *)
    OSS.Get(sym);
    IF sym = OSS.ident THEN
      procid := OSS.id;
      NewObj(proc, OSG.Proc); OSS.Get(sym); parblksize := marksize;
      OSG.IncLevel(1); OpenScope; proc.val := - 1;
      IF sym = OSS.lparen THEN
        OSS.Get(sym);
        IF sym = OSS.rparen THEN OSS.Get(sym)
        ELSE FPSection;
          WHILE sym = OSS.semicolon DO OSS.Get(sym); FPSection END;
          IF sym = OSS.rparen THEN OSS.Get(sym) ELSE OSS.Mark(")?") END
        END
      ELSIF OSG.curlev = 1 THEN OSG.EnterCmd(procid)
      END;
      obj := topScope.next; locblksize := parblksize;
      WHILE obj # guard DO
        obj.lev := OSG.curlev;
        IF obj.class = OSG.Par THEN DEC(locblksize, WordSize)
        ELSE obj.val := locblksize; obj := obj.next
        END
      END;
      proc.dsc := topScope.next;
      IF sym = OSS.semicolon THEN OSS.Get(sym) ELSE OSS.Mark(";?") END;
      locblksize := 0; declarations(locblksize);
      WHILE sym = OSS.procedure DO
        ProcedureDecl;
        IF sym = OSS.semicolon THEN OSS.Get(sym) ELSE OSS.Mark(";?") END
      END;
      proc.val := OSG.pc; OSG.Enter(locblksize);
      IF sym = OSS.begin THEN OSS.Get(sym); StatSequence END;
      IF sym = OSS.end THEN OSS.Get(sym) ELSE OSS.Mark("END?") END;
      IF sym = OSS.ident THEN
        IF procid # OSS.id THEN OSS.Mark("no match") END;
        OSS.Get(sym)
      END;
      OSG.Return(parblksize - marksize); CloseScope; OSG.IncLevel( - 1)
    END
  END ProcedureDecl;
  
  PROCEDURE Module (VAR S: Texts.Scanner);
    VAR modid: OSS.Ident; varsize: LONGINT;
  BEGIN Texts.WriteString(W, " compiling ");
    IF sym = OSS.module THEN
      OSS.Get(sym); OSG.Open; OpenScope; varsize := 0;
      IF sym = OSS.ident THEN
        modid := OSS.id; OSS.Get(sym);
        Texts.WriteString(W, modid); Texts.WriteLn(W);
        Texts.Append(Oberon.Log, W.buf)
      ELSE OSS.Mark("ident?")
      END;
      IF sym = OSS.semicolon THEN OSS.Get(sym) ELSE OSS.Mark(";?") END;
      declarations(varsize);
      WHILE sym = OSS.procedure DO
        ProcedureDecl;
        IF sym = OSS.semicolon THEN OSS.Get(sym) ELSE OSS.Mark(";?") END
      END;
      OSG.Header(varsize);
      IF sym = OSS.begin THEN OSS.Get(sym); StatSequence END;
      IF sym = OSS.end THEN OSS.Get(sym) ELSE OSS.Mark("END?") END;
      IF sym = OSS.ident THEN
        IF modid # OSS.id THEN OSS.Mark("no match") END;
        OSS.Get(sym)
      ELSE OSS.Mark("ident?")
      END;
      IF sym # OSS.period THEN OSS.Mark(". ?") END;
      CloseScope;
      IF ~OSS.error THEN
        COPY(modid, S.s); OSG.Close(S, varsize); 
        Texts.WriteString(W, "code generated");
        Texts.WriteInt(W, OSG.pc, 6); Texts.WriteLn(W); 
        Texts.Append(Oberon.Log, W.buf)
      END
    ELSE OSS.Mark("MODULE?")
    END
  END Module;
  
  PROCEDURE Compile*;
    VAR beg, end, time: LONGINT;
      S: Texts.Scanner; T: Texts.Text; v: Viewers.Viewer;
  BEGIN loaded := FALSE;
    Texts.OpenScanner(S, Oberon.Par.text, Oberon.Par.pos); Texts.Scan(S);
    IF S.class = Texts.Char THEN
      IF S.c = "*" THEN
        v := Oberon.MarkedViewer();
        IF (v.dsc # NIL) & (v.dsc.next IS TextFrames.Frame) THEN
          OSS.Init(v.dsc.next(TextFrames.Frame).text, 0); OSS.Get(sym); 
          Module(S) 
        END
      ELSIF S.c = "@" THEN
        Oberon.GetSelection(T, beg, end, time);
        IF time >= 0 THEN OSS.Init(T, beg); OSS.Get(sym); Module(S) END
      END
    ELSIF S.class = Texts.Name THEN
      NEW(T); Texts.Open(T, S.s); OSS.Init(T, 0); OSS.Get(sym); Module(S)
    END
  END Compile;
  
  PROCEDURE Decode*;
    VAR V: MenuViewers.Viewer; T: Texts.Text;
      X, Y: INTEGER;
  BEGIN T := TextFrames.Text("");
    Oberon.AllocateSystemViewer(Oberon.Par.frame.X, X, Y);
    V := MenuViewers.New(TextFrames.NewMenu("Log.Text", 
         "System.Close System.Copy System.Grow Edit.Search Edit.Store"),
          TextFrames.NewText(T, 0), TextFrames.menuH, X, Y);
    OSG.Decode(T)
  END Decode;
  
  PROCEDURE Load*;
    VAR S: Texts.Scanner;
  BEGIN
    IF ~OSS.error & ~loaded THEN
      Texts.OpenScanner(S, Oberon.Par.text, Oberon.Par.pos); OSG.Load(S); 
      loaded := TRUE
    END
  END Load;
  
  PROCEDURE Exec*;
    VAR S: Texts.Scanner;
  BEGIN
    IF loaded THEN
      Texts.OpenScanner(S, Oberon.Par.text, Oberon.Par.pos); Texts.Scan(S);
      IF S.class = Texts.Name THEN OSG.Exec(S) END
    END
  END Exec;
  
  PROCEDURE enter (cl: INTEGER; n: LONGINT; name: OSS.Ident; type: OSG.Type);
    VAR obj: OSG.Object;
  BEGIN NEW(obj);
    obj.class := cl; obj.val := n; obj.name := name; obj.type := type;
    obj.dsc := NIL;
    obj.next := topScope.next; topScope.next := obj
  END enter;
  
BEGIN Texts.OpenWriter(W); Texts.WriteString(W, "Oberon0 Compiler 9.2.95");
  Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf);
  NEW(guard); guard.class := OSG.Var; guard.type := OSG.intType; guard.val := 0;
  topScope := NIL; OpenScope;
  enter(OSG.Typ, 1, "BOOLEAN", OSG.boolType);
  enter(OSG.Typ, 2, "INTEGER", OSG.intType);
  enter(OSG.Const, 1, "TRUE", OSG.boolType);
  enter(OSG.Const, 0, "FALSE", OSG.boolType);
  enter(OSG.SProc, 1, "Read", NIL);
  enter(OSG.SProc, 2, "Write", NIL);
  enter(OSG.SProc, 3, "WriteHex", NIL);
  enter(OSG.SProc, 4, "WriteLn", NIL);
  universe := topScope
END OSP.
