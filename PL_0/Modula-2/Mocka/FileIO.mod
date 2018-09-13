IMPLEMENTATION MODULE FileIO;
(* Linux Mocka version by Pat Terry.  cspt@cs.ru.ac.za 1995-09-15
   Partly based on code written by T. Maeno for Mocka-BSD version 1995-05-26 *)

(* This module attempts to provide several potentially non-portable
   facilities for Coco/R.

   (a)  A general file input/output module, with all routines required for
        Coco/R itself, as well as several other that would be useful in
        Coco-generated applications.
   (b)  Definition of the "LONGINT" type needed by Coco.
   (c)  Some conversion functions to handle this long type.
   (d)  Some "long" and other constant literals that may be problematic
        on some implementations.
   (e)  Some string handling primitives needed to interface to a variety
        of known implementations.

   The intention is that the rest of the code of Coco and its generated
   parsers should be as portable as possible.  Provided the definition
   module given, and the associated implementation, satisfy the
   specification given here, this should be almost 100% possible.

   FileIO is based on code by MB 1990/11/25; heavily modified and extended
   by PDT and others between 1992/1/6 and the present day. *)

IMPORT Storage, Arguments, SYSTEM, LIBC, SysLib, Strings1;
FROM Storage IMPORT ALLOCATE, DEALLOCATE;

CONST
  MaxFiles = BitSetSize;
  NameLength = 256;

TYPE
  File = POINTER TO FileRec;
  FileRec = RECORD
              ref: INTEGER;
              self: File;
              handle: CARDINAL;
              savedCh: CHAR;
              textOK, eof, eol, noOutput, noInput, haveCh: BOOLEAN;
              name: ARRAY [0 .. NameLength] OF CHAR;
            END;

VAR
  Handles: BITSET;
  Opened: ARRAY [0 .. MaxFiles-1] OF File;
  FromKeyboard, ToScreen, BreakEnabled: BOOLEAN;
  Param: CARDINAL;
  numPar: SHORTCARD;
  argv: Arguments.ArgTable;
  Erase, Kill, Intr: CHAR;
  TermFD: INTEGER;
  termioOrig, termioNew, termioProbe: LIBC.TermIO;
  reply: INTEGER;

MODULE BuffIO;
(*  Adapted by Pat Terry from a module ByteIO that was supplied with Mocka *)

  IMPORT LIBC, Storage, SysLib, Strings1, SYSTEM, Okay;
  EXPORT QUALIFIED OpenInput, OpenOutput, Close, GetByte, GetBytes, PutByte,
                   PutBytes, GetPos, SetPos, FlushBuffer;

  CONST
    MAXFILE  = 50;
    BUFFSIZE = 1024;

  VAR
    IsOutput: ARRAY [0 .. MAXFILE] OF BOOLEAN;
    BFirst, BPos, BLast: ARRAY [0 .. MAXFILE] OF SYSTEM.ADDRESS;

    (* For Input:                 *)
    (* BFirst .... BPos ... BLast *)
    (* [processed] [unprocessed ] *)

    (* For Output:                *)
    (* BFirst  ... BPos ... BLast *)
    (* [filled   ] [free        ] *)

  PROCEDURE OpenInput (VAR file: INTEGER; VAR name: ARRAY OF CHAR);
    VAR
      s: ARRAY [0 .. 1023] OF CHAR;
    BEGIN
      IF name[0] = 0C
        THEN file := 0 (* StdIn is a special case *)
        ELSE
          Strings1.Assign(s, name);
          file := SysLib.open(SYSTEM.ADR(s), SysLib.oRDONLY);
      END;
      IF file < 0 THEN
        Okay := FALSE;
      ELSE
        Storage.ALLOCATE(BFirst[file], BUFFSIZE);
        BPos[file]  := BFirst[file] + 1;
        BLast[file] := BFirst[file];
        IsOutput[file] := FALSE;
        Okay := TRUE;
      END;
    END OpenInput;

  PROCEDURE OpenOutput (VAR file: INTEGER; VAR name: ARRAY OF CHAR);
    VAR
      s: ARRAY [0 .. 1023] OF CHAR;
    BEGIN
      IF name[0] = 0C
        THEN file := 1 (* StdOut is a special case *)
        ELSE
          Strings1.Assign(s, name);
          file := SysLib.creat(SYSTEM.ADR(s),
                               SysLib.pROWNER + SysLib.pWOWNER
                               + SysLib.pRGROUP + SysLib.pWGROUP
                               + SysLib.pROTHERS + SysLib.pWOTHERS);
      END;
      IF file < 0 THEN
        Okay := FALSE;
      ELSE
        Storage.ALLOCATE(BFirst[file], BUFFSIZE);
        BPos[file] := BFirst[file];
        BLast[file] := BFirst[file] + BUFFSIZE - 1;
        IsOutput[file] := TRUE;
        Okay := TRUE;
      END;
    END OpenOutput;

  PROCEDURE Close (file: INTEGER);
    BEGIN
      IF IsOutput[file] THEN PutBf(file) END; 
      IF file > 2
        THEN
          Storage.DEALLOCATE(BFirst[file], BUFFSIZE);
          Okay := SysLib.close(file) # -1;
        ELSE Okay := FALSE
      END
    END Close;

  VAR  (* all this junk seems needed to persuade atexit to work properly *)
    FD, i1, i2: INTEGER;
    NeedsFlushing: BOOLEAN;

  PROCEDURE FlushBuffer (ff: INTEGER);
    BEGIN
      FD := ff;
      i1 := INTEGER(BPos[FD]);
      i2 := INTEGER(BFirst[FD]);
      NeedsFlushing := i1 > i2;
      i1 := i1 - i2;
      IF IsOutput[FD] & NeedsFlushing THEN 
        Okay := SysLib.write(FD, BFirst[FD], i1) # -1
      END
   END FlushBuffer;

  PROCEDURE GetByte (file: INTEGER; VAR x: SYSTEM.BYTE);
    BEGIN
      IF BPos[file] > BLast[file] THEN
        FillBuffer(file);
        IF ~ Okay THEN x := SYSTEM.BYTE(0C); RETURN END;
      END;
      x := BPos[file]^;
      INC(BPos[file]);
      Okay := TRUE;
    END GetByte;

  PROCEDURE GetBytes (file: INTEGER; VAR x: ARRAY OF SYSTEM.BYTE;
                      VAR len: CARDINAL);
    VAR
      i: CARDINAL;
    BEGIN
      i := 0;
      WHILE i # len DO
        IF BPos[file] > BLast[file] THEN
          FillBuffer(file);
          IF ~ Okay THEN len := i; RETURN END;
        END;
        x[i] := BPos[file]^;
        INC(BPos[file]);
        INC(i);
      END;
      Okay := TRUE;
    END GetBytes;

  PROCEDURE PutByte (file: INTEGER; x: SYSTEM.BYTE);
    BEGIN
      IF BPos[file] > BLast[file] THEN
        EmitBuffer(file);
        IF ~ Okay THEN RETURN END;
      END;
      BPos[file]^ := x;
      INC(BPos[file]);
      Okay := TRUE;
    END PutByte;

  PROCEDURE PutBytes (file: INTEGER; VAR x: ARRAY OF SYSTEM.BYTE;
                      len: CARDINAL);
    VAR
      i: CARDINAL;
    BEGIN
      i := 0;
      WHILE i # len DO
        IF BPos[file] > BLast[file] THEN
          EmitBuffer(file);
          IF ~ Okay THEN RETURN END;
        END;
        BPos[file]^ := x[i];
        INC(BPos[file]);
        INC(i);
      END;
      Okay := TRUE;
    END PutBytes;

  PROCEDURE PutBf (file: INTEGER);
    BEGIN
      IF INTEGER(BPos[file] - BFirst[file]) > 0 THEN EmitBuffer(file) END;
    END PutBf;

  PROCEDURE EmitBuffer (file: INTEGER);
    BEGIN
      Okay := SysLib.write(file, BFirst[file], INTEGER(BPos[file] - BFirst[file])) # -1;
      BPos[file] := BFirst[file];
    END EmitBuffer;

  PROCEDURE FillBuffer (file: INTEGER);
    VAR
      n: INTEGER;
    BEGIN
      n := SysLib.read(file, BFirst[file], BUFFSIZE);
      IF n > 0 THEN
        BPos[file] := BFirst[file];
        BLast[file] := BFirst[file] + CARDINAL(n) - 1;
        Okay := TRUE;
      ELSE
        BPos[file] := BFirst[file];
        BLast[file] := BFirst[file] - 1;
        Okay := FALSE;
      END;
    END FillBuffer;

  PROCEDURE GetPos (file: INTEGER): INTEGER;
    VAR
      pos: INTEGER;
    BEGIN
      IF IsOutput[file]
        THEN
          PutBf(file); pos := LIBC.lseek(file, 0, LIBC.SEEK_CUR);
        ELSE
          pos := LIBC.lseek(file, 0, LIBC.SEEK_CUR)
                 + INTEGER(BPos[file] - BLast[file] - 1);
      END;
      Okay := pos >= 0;
      RETURN pos
    END GetPos;

  PROCEDURE SetPos (file: INTEGER; pos: INTEGER);
    BEGIN
      IF IsOutput[file]
        THEN PutBf(file);
        ELSE BPos[file] := BLast[file] + 1;
      END;
      pos := LIBC.lseek(file, pos, LIBC.SEEK_SET);
      Okay := pos >= 0
    END SetPos;

  END BuffIO;

PROCEDURE ConRead (VAR ch: CHAR);
  VAR
    result: INTEGER;
  BEGIN
    result := LIBC.tcsetattr(TermFD, 0, termioNew);
    result := SysLib.read(TermFD, SYSTEM.ADR(ch), 1);
    result := LIBC.tcsetattr(TermFD, 0, termioOrig);
    IF ch = CR THEN ch := EOL END;
    IF (ch = Intr) & BreakEnabled THEN HALT END;
  END ConRead;

PROCEDURE ConWrite (ch: CHAR);
  VAR
    result: INTEGER;
  BEGIN
    result := SysLib.write(TermFD, SYSTEM.ADR(ch), 1)
  END ConWrite;

PROCEDURE ErrWrite (ch: CHAR);
  VAR
    result: INTEGER;
  BEGIN
    result := SysLib.write(2, SYSTEM.ADR(ch), 1)
  END ErrWrite;

PROCEDURE NotRead (f: File): BOOLEAN;
  BEGIN
    RETURN (f = NIL) OR (f^.self # f) OR (f^.noInput);
  END NotRead;

PROCEDURE NotWrite (f: File): BOOLEAN;
  BEGIN
    RETURN (f = NIL) OR (f^.self # f) OR (f^.noOutput);
  END NotWrite;

PROCEDURE NotFile (f: File): BOOLEAN;
  BEGIN
    RETURN (f = NIL) OR (f^.self # f) OR (File(f) = con) OR (File(f) = err)
      OR (File(f) = StdIn) & FromKeyboard
      OR (File(f) = StdOut) & ToScreen
  END NotFile;

PROCEDURE ASCIIZ (VAR s1, s2: ARRAY OF CHAR);
(* Convert s2 to a nul terminated string in s1 *)
  VAR
    i: CARDINAL;
  BEGIN
    i := 0;
    WHILE (i <= HIGH(s2)) & (s2[i] # 0C) DO
      s1[i] := s2[i]; INC(i)
    END;
    s1[i] := 0C
  END ASCIIZ;

PROCEDURE NextParameter (VAR s: ARRAY OF CHAR);
  BEGIN
    INC(Param);
    IF Param < numPar
      THEN Strings1.Assign(s, argv^[Param]^)
      ELSE s[0] := 0C
    END
  END NextParameter;

PROCEDURE GetEnv (envVar: ARRAY OF CHAR; VAR s: ARRAY OF CHAR);
  TYPE
    str = ARRAY [0 .. 255] OF CHAR;
  VAR	
    vp: POINTER TO str;
  BEGIN 
    vp := LIBC.getenv(envVar);
    IF vp # NIL
      THEN Strings1.Assign(s, vp^)
      ELSE s[0] := 0C
    END
  END GetEnv;

PROCEDURE Open (VAR f: File; fileName: ARRAY OF CHAR; newFile: BOOLEAN);
  VAR
    i: CARDINAL;
    name: ARRAY [0 .. NameLength] OF CHAR;
  BEGIN
    ExtractFileName(fileName, name);
    FOR i := 0 TO NameLength - 1 DO name[i] := CAP(name[i]) END;
    IF (name[0] = 0C) OR (Compare(name, "CON") = 0) THEN
      (* con already opened, but reset it *)
      Okay := TRUE; f := con;
      f^.savedCh := 0C; f^.haveCh := FALSE;
      f^.eof := FALSE; f^.eol := FALSE; f^.name := "CON";
      RETURN
    ELSIF Compare(name, "ERR") = 0 THEN
      Okay := TRUE; f := err; RETURN
    ELSE
      ALLOCATE(f, SYSTEM.TSIZE(FileRec));
      IF newFile
        THEN BuffIO.OpenOutput(f^.ref, fileName);
        ELSE BuffIO.OpenInput(f^.ref, fileName);
      END;
      IF ~ Okay
        THEN
          DEALLOCATE(f, SYSTEM.TSIZE(FileRec)); f := NIL
        ELSE
      (* textOK below may have to be altered according to implementation *)
          f^.savedCh := 0C; f^.haveCh := FALSE; f^.textOK := TRUE;
          f^.eof := newFile; f^.eol := newFile; f^.self := f;
          f^.noInput := newFile; f^.noOutput := ~ newFile;
          ASCIIZ(f^.name, fileName);
          i := 0 (* find next available filehandle *);
          WHILE (i IN Handles) & (i < MaxFiles) DO INC(i) END;
          IF i < MaxFiles
            THEN f^.handle := i; INCL(Handles, i); Opened[i] := f
            ELSE WriteString(err, "Too many files"); Okay := FALSE
          END;
      END
    END
  END Open;

PROCEDURE Close (VAR f: File);
  BEGIN
    IF NotFile(f) OR (File(f) = StdIn) OR (File(f) = StdOut)
      THEN Okay := FALSE
      ELSE
        EXCL(Handles, f^.handle);
        BuffIO.Close(f^.ref);
        IF Okay THEN DEALLOCATE(f, SYSTEM.TSIZE(FileRec)) END;
        f := NIL
    END
  END Close;

PROCEDURE Delete (VAR f: File);
  BEGIN 
    IF NotFile(f)
      THEN Okay := FALSE
      ELSE WriteString(err, "FileIO.Delete not implemented")
    END;
    Okay := FALSE; f := NIL
  END Delete;

(*
PROCEDURE Delete (VAR f: File);
  BEGIN
    IF NotFile(f)
      THEN Okay := FALSE
      ELSE
        EXCL(Handles, f^.handle);
        FIO.Erase(f^.name);
        Okay := FIO.IOresult() = 0;
        IF Okay THEN DEALLOCATE(f, SYSTEM.TSIZE(FileRec)) END;
        f := NIL
    END
  END Delete;
*)

PROCEDURE SearchFile (VAR f: File; envVar, fileName: ARRAY OF CHAR;
                      newFile: BOOLEAN);
  VAR
    i, j: INTEGER;
    k: CARDINAL;
    c: CHAR;
    fname: ARRAY [0 .. NameLength] OF CHAR;
    path: ARRAY [0 .. NameLength] OF CHAR;
  BEGIN
    FOR k := 0 TO HIGH(envVar) DO envVar[k] := CAP(envVar[k]) END;
    GetEnv(envVar, path);
    i := 0;
    REPEAT
      j := 0;
      REPEAT
        c := path[i]; fname[j] := c; INC(i); INC(j)
      UNTIL (c = PathSep) OR (c = 0C);
      IF (j > 1) & (fname[j-2] = DirSep) THEN DEC(j) ELSE fname[j-1] := DirSep END;
      fname[j] := 0C; Concat(fname, fileName, fname);
      Open(f, fname, newFile); 
    UNTIL (c = 0C) OR Okay 
  END SearchFile;

PROCEDURE ExtractDirectory (fullName: ARRAY OF CHAR;
                            VAR directory: ARRAY OF CHAR);
  VAR
    i, start: CARDINAL;
  BEGIN
    start := 0; i := 0;
    WHILE (i <= HIGH(fullName)) & (fullName[i] # 0C) DO
      IF i <= HIGH(directory) THEN
        directory[i] := fullName[i];
      END;
      IF (fullName[i] = ":") OR (fullName[i] = DirSep) THEN start := i + 1 END;
      INC(i)
    END;
    IF start <= HIGH(directory) THEN directory[start] := 0C END
  END ExtractDirectory;

PROCEDURE ExtractFileName (fullName: ARRAY OF CHAR;
                           VAR fileName: ARRAY OF CHAR);
  VAR
    i, l, start: CARDINAL;
  BEGIN
    start := 0; l := 0;
    WHILE (l <= HIGH(fullName)) & (fullName[l] # 0C) DO
      IF (fullName[l] = ":") OR (fullName[l] = DirSep) THEN start := l + 1 END;
      INC(l)
    END;
    i := 0;
    WHILE (start < l) & (i <= HIGH(fileName)) DO
      fileName[i] := fullName[start]; INC(start); INC(i)
    END;
    IF i <= HIGH(fileName) THEN fileName[i] := 0C END
  END ExtractFileName;

PROCEDURE AppendExtension (oldName, ext: ARRAY OF CHAR;
                           VAR newName: ARRAY OF CHAR);
  VAR
    i, j: CARDINAL;
    fn: ARRAY [0 .. NameLength] OF CHAR;
  BEGIN
    ExtractDirectory(oldName, newName);
    ExtractFileName(oldName, fn);
    i := 0; j := 0;
    WHILE (i <= NameLength) & (fn[i] # 0C) DO
      IF fn[i] = "." THEN j := i + 1 END;
      INC(i)
    END;
    IF (j # i) (* then name did not end with "." *) OR (i = 0) THEN
      IF j # 0 THEN i := j - 1 END;
      IF (ext[0] # ".") & (ext[0] # 0C) THEN
        IF i <= NameLength THEN fn[i] := "."; INC(i) END
      END;
      j := 0;
      WHILE (j <= HIGH(ext)) & (ext[j] # 0C) & (i <= NameLength) DO
        fn[i] := ext[j]; INC(i); INC(j)
      END
    END;
    IF i <= NameLength THEN fn[i] := 0C END;
    Concat(newName, fn, newName)
  END AppendExtension;

PROCEDURE ChangeExtension (oldName, ext: ARRAY OF CHAR;
                           VAR newName: ARRAY OF CHAR);
  VAR
    i, j: CARDINAL;
    fn: ARRAY [0 .. NameLength] OF CHAR;
  BEGIN
    ExtractDirectory(oldName, newName);
    ExtractFileName(oldName, fn);
    i := 0; j := 0;
    WHILE (i <= NameLength) & (fn[i] # 0C) DO
      IF fn[i] = "." THEN j := i + 1 END;
      INC(i)
    END;
    IF j # 0 THEN i := j - 1 END;
    IF (ext[0] # ".") & (ext[0] # 0C) THEN
      IF i <= NameLength THEN fn[i] := "."; INC(i) END
    END;
    j := 0;
    WHILE (j <= HIGH(ext)) & (ext[j] # 0C) & (i <= HIGH(fn)) DO
      fn[i] := ext[j]; INC(i); INC(j)
    END;
    IF i <= NameLength THEN fn[i] := 0C END;
    Concat(newName, fn, newName)
  END ChangeExtension;

PROCEDURE Length (f: File): INT32;
  VAR
    pos, len: INTEGER;
  BEGIN
    IF NotFile(f)
      THEN
        Okay := FALSE; RETURN Long0
      ELSE
        pos := LIBC.lseek(f^.ref, 0, LIBC.SEEK_CUR);
        len := LIBC.lseek(f^.ref, 0, LIBC.SEEK_END);
        pos := LIBC.lseek(f^.ref, pos, LIBC.SEEK_SET);
        Okay := pos >= 0;
    END;
    RETURN len;
  END Length;

PROCEDURE GetPos (f: File): INT32;
  VAR
    pos: CARDINAL;
  BEGIN
    IF NotFile(f)
      THEN Okay := FALSE; RETURN Long0
      ELSE pos := BuffIO.GetPos(f^.ref);
    END;
    RETURN pos;
  END GetPos;

PROCEDURE SetPos (f: File; pos: INT32);
  BEGIN
    IF NotFile(f)
      THEN Okay := FALSE
      ELSE BuffIO.SetPos(f^.ref, pos); f^.haveCh := FALSE
    END
  END SetPos;

PROCEDURE Reset (f: File);
  BEGIN
    IF NotFile(f)
      THEN
        Okay := FALSE
      ELSE
        SetPos(f, 0);
        IF Okay THEN
          f^.haveCh := FALSE; f^.eof := f^.noInput; f^.eol := f^.noInput
        END
    END
  END Reset;

PROCEDURE Rewrite (f: File);
  BEGIN
    IF NotFile(f)
      THEN
        Okay := FALSE
      ELSE
        BuffIO.Close(f^.ref);
        BuffIO.OpenOutput(f^.ref, f^.name);  
        IF ~ Okay
          THEN
            DEALLOCATE(f, SYSTEM.TSIZE(FileRec)); f := NIL
          ELSE
            f^.savedCh := 0C; f^.haveCh := FALSE;
            f^.eof := TRUE; f^.eol := TRUE; 
            f^.noInput := TRUE; f^.noOutput := FALSE;
        END
    END
  END Rewrite;

PROCEDURE EndOfLine (f: File): BOOLEAN;
  BEGIN
    IF NotRead(f)
      THEN Okay := FALSE; RETURN TRUE
      ELSE Okay := TRUE; RETURN f^.eol OR f^.eof
    END
  END EndOfLine;

PROCEDURE EndOfFile (f: File): BOOLEAN;
  BEGIN
    IF NotRead(f)
      THEN Okay := FALSE; RETURN TRUE
      ELSE Okay := TRUE; RETURN f^.eof
    END
  END EndOfFile;

PROCEDURE Read (f: File; VAR ch: CHAR);
  BEGIN
    IF NotRead(f) THEN Okay := FALSE; ch := 0C; RETURN END;
    IF f^.haveCh OR f^.eof
      THEN
        ch := f^.savedCh; Okay := ch # 0C;
      ELSE
        IF (f = File(con)) OR (f = File(StdIn)) & FromKeyboard 
          THEN
            ConRead(ch); ConWrite(ch); Okay := ch # EOFChar;
            IF ch = Erase THEN 
              IF ch # BS THEN ConWrite(BS) END; 
              ConWrite(" "); ConWrite(BS) 
            END
          ELSE
            BuffIO.GetByte(f^.ref, ch);
            IF ch = CR THEN ch := EOL END;
        END;
    END;
    IF ~ Okay THEN ch := 0C END;
    f^.savedCh := ch; f^.haveCh := ~ Okay;
    f^.eof := ch = 0C; f^.eol := f^.eof OR (ch = EOL);
  END Read;

PROCEDURE ReadAgain (f: File);
  BEGIN
    IF NotRead(f)
      THEN Okay := FALSE
      ELSE f^.haveCh := TRUE
    END
  END ReadAgain;

PROCEDURE ReadLn (f: File);
  VAR
    ch: CHAR;
  BEGIN
    IF NotRead(f) THEN Okay := FALSE; RETURN END;
    WHILE ~ f^.eol DO Read(f, ch) END;
    f^.haveCh := FALSE; f^.eol := FALSE;
  END ReadLn;

PROCEDURE ReadString (f: File; VAR str: ARRAY OF CHAR);
  VAR
    j: CARDINAL;
    ch: CHAR;
  BEGIN
    str[0] := 0C; j := 0;
    IF NotRead(f) THEN Okay := FALSE; RETURN END;
    REPEAT Read(f, ch) UNTIL (ch # " ") OR ~ Okay;
    IF Okay THEN
      WHILE ch >= " " DO
        IF j <= HIGH(str) THEN str[j] := ch END; INC(j);
        Read(f, ch);
        WHILE ch = Erase DO 
          IF j > 0 THEN DEC(j) END; Read(f, ch)
        END
      END;
      IF j <= HIGH(str) THEN str[j] := 0C END;
      Okay := j > 0; f^.haveCh := TRUE; f^.savedCh := ch;
    END
  END ReadString;

PROCEDURE ReadLine (f: File; VAR str: ARRAY OF CHAR);
  VAR
    j: CARDINAL;
    ch: CHAR;
  BEGIN
    str[0] := 0C; j := 0;
    IF NotRead(f) THEN Okay := FALSE; RETURN END;
    Read(f, ch);
    IF Okay THEN
      WHILE ch >= " " DO
        IF j <= HIGH(str) THEN str[j] := ch END; INC(j);
        Read(f, ch);
        WHILE ch = Erase DO 
          IF j > 0 THEN DEC(j) END; Read(f, ch)
        END
      END;
      IF j <= HIGH(str) THEN str[j] := 0C END;
      Okay := j > 0; f^.haveCh := TRUE; f^.savedCh := ch;
    END
  END ReadLine;

PROCEDURE ReadToken (f: File; VAR str: ARRAY OF CHAR);
  VAR
    j: CARDINAL;
    ch: CHAR;
  BEGIN
    str[0] := 0C; j := 0;
    IF NotRead(f) THEN Okay := FALSE; RETURN END;
    REPEAT Read(f, ch) UNTIL (ch > " ") OR ~ Okay;
    IF Okay THEN
      WHILE ch > " " DO
        IF j <= HIGH(str) THEN str[j] := ch END; INC(j);
        Read(f, ch);
        WHILE ch = Erase DO 
          IF j > 0 THEN DEC(j) END; Read(f, ch)
        END
      END;
      IF j <= HIGH(str) THEN str[j] := 0C END;
      Okay := j > 0; f^.haveCh := TRUE; f^.savedCh := ch;
    END
  END ReadToken;

PROCEDURE ReadInt (f: File; VAR i: INTEGER);
  VAR
    Digit: INTEGER;
    j: CARDINAL;
    Negative: BOOLEAN;
    s: ARRAY [0 .. 80] OF CHAR;
  BEGIN
    i := 0; j := 0;
    IF NotRead(f) THEN Okay := FALSE; RETURN END;
    ReadToken(f, s);
    IF s[0] = "-" (* deal with sign *)
      THEN Negative := TRUE; INC(j)
      ELSE Negative := FALSE; IF s[0] = "+" THEN INC(j) END
    END;
    IF (s[j] < "0") OR (s[j] > "9") THEN Okay := FALSE END;
    WHILE (j <= 80) & (s[j] >= "0") & (s[j] <= "9") DO
      Digit := VAL(INTEGER, ORD(s[j]) - ORD("0"));
      IF i <= (MAX(INTEGER) - Digit) DIV 10
        THEN i := 10 * i + Digit
        ELSE Okay := FALSE
      END;
      INC(j)
    END;
    IF Negative THEN i := -i END;
    IF (j > 80) OR (s[j] # 0C) THEN Okay := FALSE END;
    IF ~ Okay THEN i := 0 END;
  END ReadInt;

PROCEDURE ReadCard (f: File; VAR i: CARDINAL);
  VAR
    Digit: CARDINAL;
    j: CARDINAL;
    s: ARRAY [0 .. 80] OF CHAR;
  BEGIN
    i := 0; j := 0;
    IF NotRead(f) THEN Okay := FALSE; RETURN END;
    ReadToken(f, s);
    WHILE (j <= 80) & (s[j] >= "0") & (s[j] <= "9") DO
      Digit := ORD(s[j]) - ORD("0");
      IF i <= (MAX(CARDINAL) - Digit) DIV 10
        THEN i := 10 * i + Digit
        ELSE Okay := FALSE
      END;
      INC(j)
    END;
    IF (j > 80) OR (s[j] # 0C) THEN Okay := FALSE END;
    IF ~ Okay THEN i := 0 END;
  END ReadCard;

PROCEDURE ReadBytes (f: File; VAR buf: ARRAY OF SYSTEM.BYTE; VAR len: CARDINAL);
  VAR
    TooMany: BOOLEAN;
    Wanted: CARDINAL;
  BEGIN
    IF NotRead(f) OR (File(f) = con)
      THEN Okay := FALSE; len := 0;
      ELSE
        IF len = 0 THEN Okay := TRUE; RETURN END;
        TooMany := len - 1 > HIGH(buf);
        IF TooMany THEN Wanted := HIGH(buf) + 1 ELSE Wanted := len END;
        BuffIO.GetBytes(f^.ref, buf, Wanted);
        Okay := Wanted # 0;
        IF len # Wanted THEN Okay := FALSE END;
        len := Wanted;
    END;
    IF ~ Okay THEN f^.eof := TRUE END;
    IF TooMany THEN Okay := FALSE END;
  END ReadBytes;

PROCEDURE Write (f: File; ch: CHAR);
  BEGIN
    IF NotWrite(f) THEN Okay := FALSE; RETURN END;
    IF ch = EOL THEN ch := LF END;
    IF (File(f) = con) OR (File(f) = StdOut) & ToScreen 
      THEN  ConWrite(ch); Okay := TRUE;
      ELSIF File(f) = err THEN ErrWrite(ch); Okay := TRUE;
      ELSE  BuffIO.PutByte(f^.ref, ch);
    END;
  END Write;

PROCEDURE WriteLn (f: File);
  BEGIN
    IF NotWrite(f)
      THEN Okay := FALSE;
      ELSE Write(f, EOL)
    END
  END WriteLn;

PROCEDURE WriteString (f: File; str: ARRAY OF CHAR);
  VAR
    pos: CARDINAL;
  BEGIN
    IF NotWrite(f) THEN Okay := FALSE; RETURN END;
    pos := 0;
    WHILE (pos <= HIGH(str)) & (str[pos] # 0C) DO
      Write(f, str[pos]); INC(pos)
    END
  END WriteString;

PROCEDURE WriteText (f: File; text: ARRAY OF CHAR; len: INTEGER);
  VAR
    i, slen: INTEGER;
  BEGIN
    IF NotWrite(f) THEN Okay := FALSE; RETURN END;
    slen := Strings1.Length(text);
    FOR i := 0 TO len - 1 DO
      IF i < slen THEN Write(f, text[i]) ELSE Write(f, " ") END;
    END
  END WriteText;

PROCEDURE WriteInt (f: File; n: INTEGER; wid: CARDINAL);
  VAR
    l, d: CARDINAL;
    x: INTEGER;
    t: ARRAY [1 .. 25] OF CHAR;
    sign: CHAR;
  BEGIN
    IF NotWrite(f) THEN Okay := FALSE; RETURN END;
    IF n < 0
      THEN sign := "-"; x := - n;
      ELSE sign := " "; x := n;
    END;
    l := 0;
    REPEAT
      d := x MOD 10; x := x DIV 10;
      INC(l); t[l] := CHR(ORD("0") + d);
    UNTIL x = 0;
    IF wid = 0 THEN Write(f, " ") END;
    WHILE wid > l + 1 DO Write(f, " "); DEC(wid); END;
    IF (sign = "-") OR (wid > l) THEN Write(f, sign); END;
    WHILE l > 0 DO Write(f, t[l]); DEC(l); END;
  END WriteInt;

PROCEDURE WriteCard (f: File; n, wid: CARDINAL);
  VAR
    l, d: CARDINAL;
    t: ARRAY [1 .. 25] OF CHAR;
  BEGIN
    IF NotWrite(f) THEN Okay := FALSE; RETURN END;
    l := 0;
    REPEAT
      d := n MOD 10; n := n DIV 10;
      INC(l); t[l] := CHR(ORD("0") + d);
    UNTIL n = 0;
    IF wid = 0 THEN Write(f, " ") END;
    WHILE wid > l DO Write(f, " "); DEC(wid); END;
    WHILE l > 0 DO Write(f, t[l]); DEC(l); END;
  END WriteCard;

PROCEDURE WriteBytes (f: File; VAR buf: ARRAY OF SYSTEM.BYTE; len: CARDINAL);
  VAR
    TooMany: BOOLEAN;
  BEGIN
    TooMany := (len > 0) & (len - 1 > HIGH(buf));
    IF NotWrite(f) OR (File(f) = con) OR (File(f) = err)
      THEN
        Okay := FALSE
      ELSE
        IF TooMany THEN len := HIGH(buf) + 1 END;
        BuffIO.PutBytes(f^.ref, buf, len);
    END;
    IF TooMany THEN Okay := FALSE END;
  END WriteBytes;

PROCEDURE Write2 (f: File; i: CARDINAL);
  BEGIN
    Write(f, CHR(i DIV 10 + ORD("0")));
    Write(f, CHR(i MOD 10 + ORD("0")));
  END Write2;

PROCEDURE WriteDate (f: File);
  VAR 
    t: LIBC.TIME;
    TimeNow: INTEGER;
  BEGIN
    IF NotWrite(f) THEN Okay := FALSE; RETURN END;
    SysLib.time(TimeNow);
    t := LIBC.localtime(TimeNow);
    Write2(f, t^.Day); Write(f, "/"); Write2(f, t^.Month+1); Write(f, "/");
    WriteCard(f, t^.Year + 1900, 1)
  END WriteDate;

PROCEDURE WriteTime (f: File);
  VAR 
    t: LIBC.TIME;
    TimeNow: INTEGER;
  BEGIN
    IF NotWrite(f) THEN Okay := FALSE; RETURN END;
    SysLib.time(TimeNow);
    t := LIBC.localtime(TimeNow);
    Write2(f, t^.Hours); Write(f, ":"); Write2(f, t^.Mins); Write(f, ":");
    Write2(f, t^.Secs)
  END WriteTime;

VAR
  Time0, Time1: INTEGER;

PROCEDURE WriteElapsedTime (f: File);
  VAR
    TimeNow, Diff, Secs: INTEGER;
  BEGIN
    IF NotWrite(f) THEN Okay := FALSE; RETURN END;
    TimeNow := LIBC.clock();
    WriteString(f, "Elapsed time: ");
    Diff := TimeNow - Time1;
    Secs := Diff DIV LIBC.CLOCKSPERSEC; 
    WriteInt(f,  Secs, 1);
    Write(f, '.');
    Write2(f, Diff - Secs * LIBC.CLOCKSPERSEC); 
    WriteString(f, " s"); WriteLn(f);
    Time1 := TimeNow;
  END WriteElapsedTime;

PROCEDURE WriteExecutionTime (f: File);
  VAR
    TimeNow, Diff, Secs: INTEGER;
  BEGIN
    IF NotWrite(f) THEN Okay := FALSE; RETURN END;
    TimeNow := LIBC.clock();
    WriteString(f, "Execution time: ");
    Diff := TimeNow - Time0;
    Secs := Diff DIV LIBC.CLOCKSPERSEC; 
    WriteInt(f,  Secs, 1);
    Write(f, '.');
    Write2(f, Diff - Secs * LIBC.CLOCKSPERSEC); 
    WriteString(f, " s"); WriteLn(f);
  END WriteExecutionTime;

(* The code for the next four procedures below may be commented out if your
   compiler supports ISO PROCEDURE constant declarations and these declarations
   are made in the DEFINITION MODULE *)

PROCEDURE SLENGTH (stringVal: ARRAY OF CHAR): CARDINAL;
  BEGIN
    RETURN Strings1.Length(stringVal)
  END SLENGTH;

PROCEDURE Assign (source: ARRAY OF CHAR; VAR destination: ARRAY OF CHAR);
  BEGIN
  (* Be careful - some libraries have the parameters reversed! *)
    Strings1.Assign(destination, source)
  END Assign;

PROCEDURE Extract (source: ARRAY OF CHAR; startIndex: CARDINAL;
                   numberToExtract: CARDINAL; VAR destination: ARRAY OF CHAR);
  BEGIN
    Strings1.Copy(source, startIndex, numberToExtract, destination);
  END Extract;

PROCEDURE Concat (source1, source2: ARRAY OF CHAR; VAR destination: ARRAY OF CHAR);
  BEGIN
    Strings1.Concat(source1, source2, destination);
  END Concat;

(* The code for the four procedures above may be commented out if your
   compiler supports ISO PROCEDURE constant declarations and these declarations
   are made in the DEFINITION MODULE *)

PROCEDURE Compare (stringVal1, stringVal2: ARRAY OF CHAR): INTEGER;
  BEGIN
    RETURN Strings1.compare(stringVal1, stringVal2);
  END Compare;

PROCEDURE ORDL (n: INT32): CARDINAL;
   BEGIN RETURN VAL(CARDINAL, n) END ORDL;

PROCEDURE INTL (n: INT32): INTEGER;
   BEGIN RETURN VAL(INTEGER, n) END INTL;

PROCEDURE INT (n: CARDINAL): INT32;
   BEGIN RETURN VAL(INT32, n) END INT;

PROCEDURE InitTTY;
  VAR
    termName: ARRAY [0 .. 30] OF CHAR;
  BEGIN
    Strings1.Assign(termName, "/dev/tty");
    TermFD := SysLib.open(SYSTEM.ADR(termName), SysLib.oRDWR);
    reply := LIBC.tcgetattr(TermFD, termioOrig); (* terminal characteristics *)
    Erase := termioOrig.CC[LIBC.ERASE];
    Kill := termioOrig.CC[LIBC.KILL];
    EOFChar := termioOrig.CC[LIBC.EOF];
    Intr := termioOrig.CC[LIBC.INTR];
    BreakEnabled := LIBC.ISIG IN termioOrig.LFlag;
    termioNew := termioOrig;            (* retain so can reset later *)
    EXCL(termioNew.LFlag, LIBC.ISIG);
    EXCL(termioNew.LFlag, LIBC.ICANON);
    EXCL(termioNew.LFlag, LIBC.ECHO); (* stty -isig -echo -canon *)
  END InitTTY;

PROCEDURE CloseAll;
  VAR
    handle: CARDINAL;
  BEGIN
    FOR handle := 0 TO MaxFiles - 1 DO
      IF handle IN Handles THEN BuffIO.FlushBuffer(Opened[handle]^.ref) END
    END;
    IF ~ ToScreen THEN BuffIO.FlushBuffer(1) END;
    reply := LIBC.tcsetattr(TermFD, 0, termioOrig);
  END CloseAll;

PROCEDURE QuitExecution;
  BEGIN
    HALT
  END QuitExecution;

BEGIN
  InitTTY;
  Time0 := LIBC.clock(); Time1 := Time0;
  Handles := BITSET{};
  Okay := FALSE;
  Param := 0;

  ALLOCATE(con, SYSTEM.TSIZE(FileRec));
  con^.ref := TermFD;
  con^.savedCh := 0C; con^.haveCh := FALSE; con^.self := con;
  con^.noOutput := FALSE; con^.noInput := FALSE; con^.textOK := TRUE;
  con^.eof := FALSE; con^.eol := FALSE;

  ALLOCATE(StdIn, SYSTEM.TSIZE(FileRec));
  BuffIO.OpenInput(StdIn^.ref, ""); (* allocate a buffer - special name *)
  StdIn^.savedCh := 0C; StdIn^.haveCh := FALSE; StdIn^.self := StdIn;
  StdIn^.noOutput := TRUE; StdIn^.noInput := FALSE; StdIn^.textOK := TRUE;
  StdIn^.eof := FALSE; StdIn^.eol := FALSE;
  FromKeyboard := LIBC.tcgetattr(StdIn^.ref, termioProbe) = 0; (* probe redirection *);

  ALLOCATE(StdOut, SYSTEM.TSIZE(FileRec));
  BuffIO.OpenOutput(StdOut^.ref, ""); (* allocate a buffer - special name *)
  StdOut^.savedCh := 0C; StdOut^.haveCh := FALSE; StdOut^.self := StdOut;
  StdOut^.noOutput := FALSE; StdOut^.noInput := TRUE; StdOut^.textOK := TRUE;
  StdOut^.eof := TRUE; StdOut^.eol := TRUE;
  ToScreen := LIBC.tcgetattr(StdOut^.ref, termioProbe) = 0; (* probe redirection *);

  ALLOCATE(err, SYSTEM.TSIZE(FileRec));
  err^.ref := 2;
  err^.savedCh := 0C; err^.haveCh := FALSE; err^.self := err;
  err^.noOutput := FALSE; err^.noInput := TRUE; err^.textOK := TRUE;
  err^.eof := TRUE; err^.eol := TRUE;
  Arguments.GetArgs(numPar, argv);
  reply := LIBC.atexit(CloseAll);
END FileIO.
