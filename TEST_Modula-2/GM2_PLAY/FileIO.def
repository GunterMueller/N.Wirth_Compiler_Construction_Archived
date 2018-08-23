DEFINITION MODULE FileIO;
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
   specification given here, this should be almost 100% possible (with
   the exception of a few constants, avoid changing anything in this
   specification).

   FileIO is based on code by MB 1990/11/25; heavily modified and extended
   by PDT and others between 1992/1/6 and the present day. *)

(* This is the Mocka Linux/FreeBSD version *)

IMPORT SYSTEM;

TYPE
  File;                (* Preferably opaque *)
  INT32 = INTEGER;     (* This may require a special import; on 32 bit
                          systems INT32 = INTEGER may even suffice. *)

CONST
  EOF = 0C;            (* FileIO.Read returns EOF when eof is reached. *)
  EOL = 12C;           (* FileIO.Read maps line marks onto EOL
                          FileIO.Write maps EOL onto cr, lf, or cr/lf
                          as appropriate for filing system. *)
  ESC = 33C;           (* Standard ASCII escape. *)
  CR  = 15C;           (* Standard ASCII carriage return. *)
  LF  = 12C;           (* Standard ASCII line feed. *)
  BS  = 10C;           (* Standard ASCII backspace. *)
  DEL = 177C;          (* Standard ASCII DEL (rub-out). *)

  BitSetSize = 16;     (* number of bits actually used in BITSET type *)

  Long0 = VAL(INT32, 0); (* Some systems allow 0 or require 0L. *)
  Long1 = VAL(INT32, 1); (* Some systems allow 1 or require 1L. *)
  Long2 = VAL(INT32, 2); (* Some systems allow 2 or require 2L. *)

  FrmExt = ".frm";     (* supplied frame files have this extension. *)
  TxtExt = ".txt";     (* generated text files may have this extension. *)
  ErrExt = ".err";     (* generated error files may have this extension. *)
  DefExt = ".def";     (* generated definition modules have this extension. *)
  PasExt = ".pas";     (* generated Pascal units have this extension. *)
  ModExt = ".mod";     (* generated implementation/program modules have this
                          extension. *)
  PathSep = ":";       (* separate components in path environment variables
                          DOS = ";"  UNIX = ":" *)
  DirSep  = "/";       (* separate directory element of file specifiers
                          DOS = "\"  UNIX = "/" *)

VAR
  Okay: BOOLEAN;       (* Status of last I/O operation. *)
  con, err:  File;     (* Standard terminal and error channels. *)
  StdIn, StdOut: File; (* standard input/output - redirectable *)
  EOFChar: CHAR;       (* Signal EOF interactively *)

(* The following routines provide access to command line parameters and
   the environment. *)

PROCEDURE NextParameter (VAR s: ARRAY OF CHAR);
(* Extracts next parameter from command line.
   Returns empty string (s[0] = 0C) if no further parameter can be found. *)

PROCEDURE GetEnv (envVar: ARRAY OF CHAR; VAR s: ARRAY OF CHAR);
(* Returns s as the value of environment variable envVar, or empty string
   if that variable is not defined. *)

(* The following routines provide a minimal set of file opening routines
   and closing routines. *)

PROCEDURE Open (VAR f: File; fileName: ARRAY OF CHAR; newFile: BOOLEAN);
(* Opens file f whose full name is specified by fileName.
   Opening mode is specified by newFile:
       TRUE:  the specified file is opened for output only.  Any existing
              file with the same name is deleted.
      FALSE:  the specified file is opened for input only.
   FileIO.Okay indicates whether the file f has been opened successfully. *)

PROCEDURE SearchFile (VAR f: File; envVar, fileName: ARRAY OF CHAR;
                      newFile: BOOLEAN);
(* As for Open, but tries to open file of given fileName by searching each
   directory specified by the environment variable named by envVar. *)

PROCEDURE Close (VAR f: File);
(* Closes file f.  f becomes NIL.
   If possible, Close should be called automatically for all files that
   remain open when the application terminates.  This will be possible on
   implementations that provide some sort of termination or at-exit
   facility. *)

PROCEDURE CloseAll;
(* Closes all files opened by Open or SearchFile.
   On systems that allow this, CloseAll should be automatically installed
   as the termination (at-exit) procedure *)

(* The following utility procedure is not used by Coco, but may be useful.
   However, some operating systems may not allow for its implementation. *)

PROCEDURE Delete (VAR f: File);
(* Deletes file f.  f becomes NIL. *)

(* The following routines provide a minimal set of file name manipulation
   routines.  These are modelled after MS-DOS conventions, where a file
   specifier is of a form exemplified by D:\DIR\SUBDIR\PRIMARY.EXT
   Other conventions may be introduced; these routines are used by Coco to
   derive names for the generated modules from the grammar name and the
   directory in which the grammar specification is located. *)

PROCEDURE ExtractDirectory (fullName: ARRAY OF CHAR;
                            VAR directory: ARRAY OF CHAR);
(* Extracts D:\DIRECTORY\ portion of fullName. *)

PROCEDURE ExtractFileName (fullName: ARRAY OF CHAR;
                           VAR fileName: ARRAY OF CHAR);
(* Extracts PRIMARY.EXT portion of fullName. *)

PROCEDURE AppendExtension (oldName, ext: ARRAY OF CHAR;
                           VAR newName: ARRAY OF CHAR);
(* Constructs newName as complete file name by appending ext to oldName
   if it doesn't end with "."  Examples: (assume ext = "EXT")
         old.any ==> OLD.EXT
         old.    ==> OLD.
         old     ==> OLD.EXT
   This is not a file renaming facility, merely a string manipulation
   routine. *)

PROCEDURE ChangeExtension (oldName, ext: ARRAY OF CHAR;
                           VAR newName: ARRAY OF CHAR);
(* Constructs newName as a complete file name by changing extension of
   oldName to ext.  Examples: (assume ext = "EXT")
         old.any ==> OLD.EXT
         old.    ==> OLD.EXT
         old     ==> OLD.EXT
   This is not a file renaming facility, merely a string manipulation
   routine. *)

(* The following routines provide a minimal set of file positioning routines.
   Others may be introduced, but at least these should be implemented.
   Success of each operation is recorded in FileIO.Okay. *)

PROCEDURE Length (f: File): INT32;
(* Returns length of file f. *)

PROCEDURE GetPos (f: File): INT32;
(* Returns the current read/write position in f. *)

PROCEDURE SetPos (f: File; pos: INT32);
(* Sets the current position for f to pos. *)

(* The following routines provide a minimal set of file rewinding routines.
   These two are not currently used by Coco itself.
   Success of each operation is recorded in FileIO.Okay *)

PROCEDURE Reset (f: File);
(* Sets the read/write position to the start of the file *)

PROCEDURE Rewrite (f: File);
(* Truncates the file, leaving open for writing *)

(* The following routines provide a minimal set of input routines.
   Others may be introduced, but at least these should be implemented.
   Success of each operation is recorded in FileIO.Okay. *)

PROCEDURE EndOfLine (f: File): BOOLEAN;
(* TRUE if f is currently at the end of a line, or at end of file. *)

PROCEDURE EndOfFile (f: File): BOOLEAN;
(* TRUE if f is currently at the end of file. *)

PROCEDURE Read (f: File; VAR ch: CHAR);
(* Reads a character ch from file f.
   Maps filing system line mark sequence to FileIO.EOL. *)

PROCEDURE ReadAgain (f: File);
(* Prepares to re-read the last character read from f.
   There is no buffer, so at most one character can be re-read. *)

PROCEDURE ReadLn (f: File);
(* Reads to start of next line on file f, or to end of file if no next
   line.  Skips to, and consumes next line mark. *)

PROCEDURE ReadString (f: File; VAR str: ARRAY OF CHAR);
(* Reads a string of characters from file f.
   Leading blanks are skipped, and str is delimited by line mark.
   Line mark is not consumed. *)

PROCEDURE ReadLine (f: File; VAR str: ARRAY OF CHAR);
(* Reads a string of characters from file f.
   Leading blanks are not skipped, and str is terminated by line mark or
   control character, which is not consumed. *)

PROCEDURE ReadToken (f: File; VAR str: ARRAY OF CHAR);
(* Reads a string of characters from file f.
   Leading blanks and line feeds are skipped, and token is terminated by a
   character <= ' ', which is not consumed. *)

PROCEDURE ReadInt (f: File; VAR i: INTEGER);
(* Reads an integer value from file f. *)

PROCEDURE ReadCard (f: File; VAR i: CARDINAL);
(* Reads a cardinal value from file f. *)

PROCEDURE ReadBytes (f: File; VAR buf: ARRAY OF SYSTEM.BYTE; VAR len: CARDINAL);
(* Attempts to read len bytes from the current file position into buf.
   After the call, len contains the number of bytes actually read. *)

(* The following routines provide a minimal set of output routines.
   Others may be introduced, but at least these should be implemented. *)

PROCEDURE Write (f: File; ch: CHAR);
(* Writes a character ch to file f.
   If ch = FileIO.EOL, writes line mark appropriate to filing system. *)

PROCEDURE WriteLn (f: File);
(* Skips to the start of the next line on file f.
   Writes line mark appropriate to filing system. *)

PROCEDURE WriteString (f: File; str: ARRAY OF CHAR);
(* Writes entire string str to file f. *)

PROCEDURE WriteText (f: File; text: ARRAY OF CHAR; len: INTEGER);
(* Writes text to file f.
   At most len characters are written.  Trailing spaces are introduced
   if necessary (thus providing left justification). *)

PROCEDURE WriteInt (f: File; int: INTEGER; wid: CARDINAL);
(* Writes an INTEGER int into a field of wid characters width.
   If the number does not fit into wid characters, wid is expanded.
   If wid = 0, exactly one leading space is introduced. *)

PROCEDURE WriteCard (f: File; card, wid: CARDINAL);
(* Writes a CARDINAL card into a field of wid characters width.
   If the number does not fit into wid characters, wid is expanded.
   If wid = 0, exactly one leading space is introduced. *)

PROCEDURE WriteBytes (f: File; VAR buf: ARRAY OF SYSTEM.BYTE; len: CARDINAL);
(* Writes len bytes from buf to f at the current file position. *)

(* The following procedures are not currently used by Coco, and may be
   safely omitted, or implemented as null procedures.  They might be
   useful in measuring performance. *)

PROCEDURE WriteDate (f: File);
(* Write current date DD/MM/YYYY to file f. *)

PROCEDURE WriteTime (f: File);
(* Write time HH:MM:SS to file f. *)

PROCEDURE WriteElapsedTime (f: File);
(* Write elapsed time in seconds since last call of this procedure. *)

PROCEDURE WriteExecutionTime (f: File);
(* Write total execution time in seconds thus far to file f. *)

(* The following procedures are a minimal set used within Coco for
   string manipulation.  They almost follow the conventions of the ISO
   routines, and are provided here to interface onto whatever Strings
   library is available.  On ISO compilers it should be possible to
   implement most of these with CONST declarations, and even replace
   SLENGTH with the pervasive function LENGTH at the points where it is
   called.

CONST
  SLENGTH = Strings.Length;
  Assign  = Strings.Assign;
  Extract = Strings.Extract;
  Concat  = Strings.Concat;

*)

PROCEDURE SLENGTH (stringVal: ARRAY OF CHAR): CARDINAL;
(* Returns number of characters in stringVal, not including nul *)

PROCEDURE Assign (source: ARRAY OF CHAR; VAR destination: ARRAY OF CHAR);
(* Copies as much of source to destination as possible, truncating if too
   long, and nul terminating if shorter.
   Be careful - some libraries have the parameters reversed! *)

PROCEDURE Extract (source: ARRAY OF CHAR;
                   startIndex, numberToExtract: CARDINAL;
                   VAR destination: ARRAY OF CHAR);
(* Extracts at most numberToExtract characters from source[startIndex]
   to destination.  If source is too short, fewer will be extracted, even
   zero perhaps *)

PROCEDURE Concat (stringVal1, stringVal2: ARRAY OF CHAR;
                  VAR destination: ARRAY OF CHAR);
(* Concatenates stringVal1 and stringVal2 to form destination.
   Nul terminated if concatenation is short enough, truncated if it is
   too long *)

PROCEDURE Compare (stringVal1, stringVal2: ARRAY OF CHAR): INTEGER;
(* Returns -1, 0, 1 depending whether stringVal1 < = > stringVal2.
   This is not directly ISO compatible *)

(* The following routines are for conversions to and from the INT32 type.
   Their names are modelled after the ISO pervasive routines that would
   achieve the same end.  Where possible, replacing calls to these routines
   by the pervasives would improve performance markedly.  As used in Coco,
   these routines should not give range problems. *)

PROCEDURE ORDL (n: INT32): CARDINAL;
(* Convert long integer n to corresponding (short) cardinal value.
   Potentially FileIO.ORDL(n) = VAL(CARDINAL, n) *)

PROCEDURE INTL (n: INT32): INTEGER;
(* Convert long integer n to corresponding short integer value.
   Potentially FileIO.INTL(n) = VAL(INTEGER, n) *)

PROCEDURE INT (n: CARDINAL): INT32;
(* Convert cardinal n to corresponding long integer value.
   Potentially FileIO.INT(n) = VAL(INT32, n) *)

PROCEDURE QuitExecution;
(* Close all files and halt execution.
   On some implementations QuitExecution will be simply implemented as HALT *)

END FileIO.
