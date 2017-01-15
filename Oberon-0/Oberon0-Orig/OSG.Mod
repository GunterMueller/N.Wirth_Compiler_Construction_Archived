MODULE OSG; (* NW 18.12.94 / 10.2.95 / 24.3.96 / 25.11.05*)
  IMPORT OSS, RISC, Oberon, Texts;
  
  CONST maxCode = 1000; maxRel = 200; NofCom = 16;
    (* class / mode*) Head* = 0;
    Var* = 1; Par* = 2; Const* = 3; Fld* = 4; Typ* = 5; Proc* = 6; SProc* = 7;
    Reg = 10; Cond = 11;
    (* form *) Boolean* = 0; Integer* = 1; Array* = 2; Record* = 3;
    MOV = 0; MVN = 1; ADD = 2; SUB = 3; MUL = 4; Div = 5; Mod = 6; CMP = 7;
    MOVI = 16; MVNI = 17; ADDI = 18; SUBI = 19; MULI = 20; DIVI = 21; MODI = 22; CMPI = 23;
    CHKI = 24;
    LDW = 32; LDB = 33; POP = 34; STW = 36; STB = 37; PSH = 38;
    RD = 40; WRD = 41; WRH = 42; WRL = 43; BEQ = 48; 
    BNE = 49; BLT = 50; BGE = 51; BLE = 52; BGT = 53; BR = 56; BSR = 57; 
    RET = 58; FP = 12; SP = 13; LNK = 14; PC = 15; (*reserved registers*)
    
  TYPE Object* = POINTER TO ObjDesc;
    Type* = POINTER TO TypeDesc;
    
    Item* = RECORD
      mode*, lev*: INTEGER;
      type*: Type;
      a*, b, c, r: LONGINT;
    END;
    
    ObjDesc* = RECORD
      class*, lev*: INTEGER;
      next*, dsc*: Object;
      type*: Type;
      name*: OSS.Ident;
      val*: LONGINT
    END;
    
    TypeDesc* = RECORD
      form*: INTEGER;
      fields*: Object;
      base*: Type;
      size*, len*: INTEGER
    END;
    
  VAR boolType*, intType*: Type;
    curlev*, pc*: INTEGER;
    cno: INTEGER;
    entry, fixlist: LONGINT;
    regs: SET; (* used registers *)
    W: Texts.Writer;
    code: ARRAY maxCode OF LONGINT;
    comname: ARRAY NofCom OF OSS.Ident; (*commands*)
    comadr: ARRAY NofCom OF LONGINT;
    mnemo: ARRAY 64, 5 OF CHAR; (*for decoder*)
    
  PROCEDURE GetReg (VAR r: LONGINT);
    VAR i: INTEGER;
  BEGIN i := 0;
    WHILE (i < FP) & (i IN regs) DO INC(i) END;
    INCL(regs, i); r := i
  END GetReg;
  
  PROCEDURE Put (op, a, b, c: LONGINT);
  BEGIN (*emit instruction*)
    IF op >= 32 THEN DEC(op, 64) END;
    code[pc] := ASH(ASH(ASH(op, 4) + a, 4) + b, 18) + (c MOD 40000H);
    INC(pc)
  END Put;
  
  PROCEDURE PutBR (op, disp: LONGINT);
  BEGIN (*emit branch instruction*)
    code[pc] := ASH(op - 40H, 26) + (disp MOD 4000000H); INC(pc)
  END PutBR;
  PROCEDURE TestRange (x: LONGINT);
  BEGIN (*18-bit entity*)
    IF (x >= 20000H) OR (x < - 20000H) THEN OSS.Mark("value too large") END
  END TestRange;
  
  PROCEDURE load (VAR x: Item);
    VAR r: LONGINT;
 (*     124   Page Number ???  *)
  BEGIN (*x.mode # Reg*)
    IF x.mode = Var THEN
      IF x.lev = 0 THEN x.a := x.a - pc * 4 END;
      GetReg(r); Put(LDW, r, x.r, x.a); EXCL(regs, x.r); x.r := r
    ELSIF x.mode = Const THEN
      TestRange(x.a); GetReg(x.r); Put(MOVI, x.r, 0, x.a)
    END;
    x.mode := Reg
  END load;
  
  PROCEDURE loadBool (VAR x: Item);
  BEGIN
    IF x.type.form # Boolean THEN OSS.Mark("Boolean?") END;
    load(x); x.mode := Cond; x.a := 0; x.b := 0; x.c := 1
  END loadBool;
  
  PROCEDURE PutOp (cd: LONGINT; VAR x, y: Item);
  BEGIN
    IF x.mode # Reg THEN load(x) END;
    IF y.mode = Const THEN TestRange(y.a); Put(cd + 16, x.r, x.r, y.a)
    ELSE
      IF y.mode # Reg THEN load(y) END;
      Put(cd, x.r, x.r, y.r); EXCL(regs, y.r)
    END
  END PutOp;
  
  PROCEDURE negated (cond: LONGINT): LONGINT;
  BEGIN
    IF ODD(cond) THEN RETURN cond - 1 ELSE RETURN cond + 1 END
  END negated;
  PROCEDURE merged (L0, L1: LONGINT): LONGINT;
    VAR L2, L3: LONGINT;
  BEGIN
    IF L0 # 0 THEN
      L2 := L0;
      LOOP L3 := code[L2] MOD 40000H;
        IF L3 = 0 THEN EXIT END;
        L2 := L3
      END;
      code[L2] := code[L2] - L3 + L1; RETURN L0
    ELSE RETURN L1
    END
  END merged;
  
  PROCEDURE fix (at, with: LONGINT);
  BEGIN code[at] := code[at] DIV 400000H * 400000H + (with MOD 400000H)
  END fix;
  PROCEDURE FixWith (L0, L1: LONGINT);
    VAR L2: LONGINT;
  BEGIN
    WHILE L0 # 0 DO L2 := code[L0] MOD 40000H; fix(L0, L1 - L0); L0 := L2 END
  END FixWith;
  PROCEDURE FixLink* (L: LONGINT);
    VAR L1: LONGINT;
  BEGIN
    WHILE L # 0 DO L1 := code[L] MOD 40000H; fix(L, pc - L); L := L1 END
  END FixLink;
  
  (*-----------------------------------------------*)
  
  PROCEDURE IncLevel* (n: INTEGER);
  BEGIN INC(curlev, n)
  END IncLevel;
  
  PROCEDURE MakeConstItem* (VAR x: Item; typ: Type; val: LONGINT);
  BEGIN x.mode := Const; x.type := typ; x.a := val
  END MakeConstItem;
  
  PROCEDURE MakeItem* (VAR x: Item; y: Object);
    VAR r: LONGINT;
  BEGIN x.mode := y.class; x.type := y.type; x.lev := y.lev; x.a := y.val; 
    x.b := 0;
    IF y.lev = 0 THEN x.r := PC
    ELSIF y.lev = curlev THEN x.r := FP
    ELSE OSS.Mark("level!"); x.r := 0
    END;
    IF y.class = Par THEN 
      GetReg(r); Put(LDW, r, x.r, x.a); x.mode := Var; x.r := r; x.a := 0 
    END
  END MakeItem;
  
  PROCEDURE Field* (VAR x: Item; y: Object); (* x := x.y *)
  BEGIN INC(x.a, y.val); x.type := y.type
  END Field;
  
  PROCEDURE Index* (VAR x, y: Item); (* x := x[y] *)
  BEGIN
    IF y.type # intType THEN OSS.Mark("index not integer") END;
    IF y.mode = Const THEN
      IF (y.a < 0) OR (y.a >= x.type.len) THEN OSS.Mark("bad index") END;
      INC(x.a, y.a * x.type.base.size)
    ELSE
      IF y.mode # Reg THEN load(y) END;
      Put(CHKI, y.r, 0, x.type.len);
      Put(MULI, y.r, y.r, x.type.base.size);
      Put(ADD, y.r, x.r, y.r); EXCL(regs, x.r); x.r := y.r
    END;
    x.type := x.type.base
  END Index;
  
  PROCEDURE Op1* (op: INTEGER; VAR x: Item); (* x := op x *)
    VAR t: LONGINT;
  BEGIN
    IF op = OSS.minus THEN
      IF x.type.form # Integer THEN OSS.Mark("bad type")
      ELSIF x.mode = Const THEN x.a := - x.a
      ELSE
        IF x.mode = Var THEN load(x) END;
        Put(MVN, x.r, 0, x.r)
      END
    ELSIF op = OSS.not THEN
      IF x.mode # Cond THEN loadBool(x) END;
      x.c := negated(x.c); t := x.a; x.a := x.b; x.b := t
    ELSIF op = OSS.and THEN
      IF x.mode # Cond THEN loadBool(x) END;
      PutBR(BEQ + negated(x.c), x.a); EXCL(regs, x.r); x.a := pc - 1; 
      FixLink(x.b); x.b := 0
    ELSIF op = OSS.or THEN
      IF x.mode # Cond THEN loadBool(x) END;
      PutBR(BEQ + x.c, x.b); EXCL(regs, x.r); x.b := pc - 1; FixLink(x.a); 
      x.a := 0
    END
  END Op1;
  
  PROCEDURE Op2* (op: INTEGER; VAR x, y: Item); (* x := x op y *)
  BEGIN
    IF (x.type.form = Integer) & (y.type.form = Integer) THEN
      IF (x.mode = Const) & (y.mode = Const) THEN
        (*overflow checks missing*)
        IF op = OSS.plus THEN INC(x.a, y.a)
        ELSIF op = OSS.minus THEN DEC(x.a, y.a)
        ELSIF op = OSS.times THEN x.a := x.a * y.a
        ELSIF op = OSS.div THEN x.a := x.a DIV y.a
        ELSIF op = OSS.mod THEN x.a := x.a MOD y.a
        ELSE OSS.Mark("bad type")
        END
      ELSE
        IF op = OSS.plus THEN PutOp(ADD, x, y)
        ELSIF op = OSS.minus THEN PutOp(SUB, x, y)
        ELSIF op = OSS.times THEN PutOp(MUL, x, y)
        ELSIF op = OSS.div THEN PutOp(Div, x, y)
        ELSIF op = OSS.mod THEN PutOp(Mod, x, y)
        ELSE OSS.Mark("bad type")
        END
      END
    ELSIF (x.type.form = Boolean) & (y.type.form = Boolean) THEN
      IF y.mode # Cond THEN loadBool(y) END;
      IF op = OSS.or THEN x.a := y.a; x.b := merged(y.b, x.b); x.c := y.c
      ELSIF op = OSS.and THEN x.a := merged(y.a, x.a); x.b := y.b; x.c := y.c
      END
    ELSE OSS.Mark("bad type")
    END;
  END Op2;
  
  PROCEDURE Relation* (op: INTEGER; VAR x, y: Item); (* x := x ? y *)
  BEGIN
    IF (x.type.form # Integer) OR (y.type.form # Integer) THEN 
      OSS.Mark("bad type")
    ELSE PutOp(CMP, x, y); x.c := op - OSS.eql; EXCL(regs, y.r)
    END;
    x.mode := Cond; x.type := boolType; x.a := 0; x.b := 0
  END Relation;
  
  PROCEDURE Store* (VAR x, y: Item); (* x := y *)
    VAR r: LONGINT;
  BEGIN
    IF (x.type.form IN {Boolean, Integer}) & (x.type.form = y.type.form) THEN
      IF y.mode = Cond THEN
        Put(BEQ + negated(y.c), y.r, 0, y.a); EXCL(regs, y.r); y.a := pc - 1;
        FixLink(y.b); GetReg(y.r); Put(MOVI, y.r, 0, 1); PutBR(BR, 2);
        FixLink(y.a); Put(MOVI, y.r, 0, 0);
      (* GM  127 Page number  *)
      ELSIF y.mode # Reg THEN load(y)
      END;
      IF x.mode = Var THEN
        IF x.lev = 0 THEN x.a := x.a - pc * 4 END;
        Put(STW, y.r, x.r, x.a)
      ELSE OSS.Mark("illegal assignment")
      END;
      EXCL(regs, x.r); EXCL(regs, y.r)
    ELSE OSS.Mark("incompatible assignment")
    END
  END Store;
  
  PROCEDURE Parameter* (VAR x: Item; ftyp: Type; class: INTEGER);
    VAR r: LONGINT;
  BEGIN
    IF x.type = ftyp THEN
      IF class = Par THEN (*Var param*)
        IF x.mode = Var THEN
          IF x.a # 0 THEN GetReg(r); Put(ADDI, r, x.r, x.a)
          ELSE r := x.r
          END
        ELSE OSS.Mark("illegal parameter mode")
        END;
        Put(PSH, r, SP, 4); EXCL(regs, r)
      ELSE (*value param*)
        IF x.mode # Reg THEN load(x) END;
        Put(PSH, x.r, SP, 4); EXCL(regs, x.r)
      END
    ELSE OSS.Mark("bad parameter type")
    END
  END Parameter;
  
  (*---------------------------------*)
  
  PROCEDURE CJump* (VAR x: Item);
  BEGIN
    IF x.type.form = Boolean THEN
      IF x.mode # Cond THEN loadBool(x) END;
      PutBR(BEQ + negated(x.c), x.a); EXCL(regs, x.r); FixLink(x.b); 
      x.a := pc - 1
    ELSE OSS.Mark("Boolean?"); x.a := pc
    END
  END CJump;
  
  PROCEDURE BJump* (L: LONGINT);
  BEGIN PutBR(BR, L - pc)
  END BJump;
  
  PROCEDURE FJump* (VAR L: LONGINT);
  BEGIN PutBR(BR, L); L := pc - 1
  END FJump;
  
  PROCEDURE Call* (VAR x: Item);
  BEGIN PutBR(BSR, x.a - pc)
  END Call;
  
  PROCEDURE IOCall* (VAR x, y: Item);
    VAR z: Item;
  BEGIN
    IF x.a < 4 THEN
      IF y.type.form # Integer THEN OSS.Mark("Integer?") END
    END;
    IF x.a = 1 THEN
      GetReg(z.r); z.mode := Reg; z.type := intType; Put(RD, z.r, 0, 0);
      Store(y, z)
    ELSIF x.a = 2 THEN load(y); Put(WRD, 0, 0, y.r); EXCL(regs, y.r)
    ELSIF x.a = 3 THEN load(y); Put(WRH, 0, 0, y.r); EXCL(regs, y.r)
    ELSE Put(WRL, 0, 0, 0)
    END
  END IOCall;
  
  PROCEDURE Header* (size: LONGINT);
  BEGIN entry := pc; Put(MOVI, SP, 0, RISC.MemSize - size); (*init SP*)
    Put(PSH, LNK, SP, 4)
  END Header;
  
  PROCEDURE Enter* (size: LONGINT);
  BEGIN
    Put(PSH, LNK, SP, 4);
    Put(PSH, FP, SP, 4);
    Put(MOV, FP, 0, SP);
    Put(SUBI, SP, SP, size)
  END Enter;
  
  PROCEDURE Return* (size: LONGINT);
  BEGIN
    Put(MOV, SP, 0, FP);
    Put(POP, FP, SP, 4);
    Put(POP, LNK, SP, size + 4);
    PutBR(RET, LNK)
  END Return;
  
  PROCEDURE Open*;
  BEGIN curlev := 0; pc := 0; cno := 0; regs := {}
  END Open;
  
  PROCEDURE Close* (VAR S: Texts.Scanner; globals: LONGINT);
  BEGIN Put(POP, LNK, SP, 4); PutBR(RET, LNK);
  END Close;
  
  PROCEDURE EnterCmd* (VAR name: ARRAY OF CHAR);
  BEGIN COPY(name, comname[cno]); comadr[cno] := pc * 4; INC(cno)
  END EnterCmd;
  
  (*-------------------------------------------*)
  
  PROCEDURE Load* (VAR S: Texts.Scanner);
  BEGIN RISC.Load(code, pc);
    Texts.WriteString(W, " code loaded"); Texts.WriteLn(W);
    Texts.Append(Oberon.Log, W.buf);
    RISC.Execute(entry * 4, S, Oberon.Log)
  END Load;
  
  PROCEDURE Exec* (VAR S: Texts.Scanner);
    VAR i: INTEGER;
  BEGIN i := 0;
    WHILE (i < cno) & (S.s # comname[i]) DO INC(i) END;
    IF i < cno THEN RISC.Execute(comadr[i], S, Oberon.Log) END
  END Exec;
  
  PROCEDURE Decode* (T: Texts.Text);
    VAR i, w, op, a: LONGINT;
  BEGIN Texts.WriteString(W, "entry"); Texts.WriteInt(W, entry * 4, 6);
    Texts.WriteLn(W);
    i := 0;
    WHILE i < pc DO
      w := code[i]; op := w DIV 4000000H MOD 40H;
      Texts.WriteInt(W, 4 * i, 4); Texts.Write(W, 9X); 
      Texts.WriteString(W, mnemo[op]);
      IF op < BEQ THEN
        a := w MOD 40000H;
        IF a >= 20000H THEN DEC(a, 40000H) (*sign extension*) END;
        Texts.Write(W, 9X); Texts.WriteInt(W, w DIV 400000H MOD 10H, 4);
        Texts.Write(W, ","); Texts.WriteInt(W, w DIV 40000H MOD 10H, 4);
        Texts.Write(W, ",")
      ELSE a := w MOD 4000000H;
        IF a >= 2000000H THEN DEC(a, 4000000H) (*sign extension*) END
      END;
      Texts.WriteInt(W, a, 6); Texts.WriteLn(W); INC(i)
    END;
    Texts.WriteLn(W); Texts.Append(T, W.buf)
  END Decode;
  
BEGIN Texts.OpenWriter(W);
  NEW(boolType); boolType.form := Boolean; boolType.size := 4;
  NEW(intType); intType.form := Integer; intType.size := 4;
  mnemo[MOV] := "MOV ";
  mnemo[MVN] := "MVN ";
  mnemo[ADD] := "ADD ";
  mnemo[SUB] := "SUB ";
  mnemo[MUL] := "MUL ";
  mnemo[Div] := "DIV ";
  mnemo[Mod] := "MOD ";
  mnemo[CMP] := "CMP ";
  mnemo[MOVI] := "MOVI";
  mnemo[MVNI] := "MVNI";
  mnemo[ADDI] := "ADDI";
  mnemo[SUBI] := "SUBI";
  mnemo[MULI] := "MULI";
  mnemo[DIVI] := "DIVI";
  mnemo[MODI] := "MODI";
  mnemo[CMPI] := "CMPI";
  mnemo[CHKI] := "CHKI";
  mnemo[LDW] := "LDW ";
  mnemo[LDB] := "LDB ";
  mnemo[POP] := "POP ";
  mnemo[STW] := "STW ";
  mnemo[STB] := "STB ";
  mnemo[PSH] := "PSH ";
  mnemo[BEQ] := "BEQ ";
  mnemo[BNE] := "BNE ";
  mnemo[BLT] := "BLT ";
  mnemo[BGE] := "BGE ";
  mnemo[BLE] := "BLE ";
  mnemo[BGT] := "BGT ";
  mnemo[BR] := "BR ";
  mnemo[BSR] := "BSR ";
  mnemo[RET] := "RET ";
  mnemo[RD] := "READ";
  mnemo[WRD] := "WRD ";
  mnemo[WRH] := "WRH ";
  mnemo[WRL] := "WRL ";
END OSG.
