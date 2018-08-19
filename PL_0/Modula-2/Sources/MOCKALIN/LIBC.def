FOREIGN MODULE LIBC;
(* Interface to various routines in the C library *)
(* Linux Mocka version - P.D. Terry, Rhodes University, 1995 *)

  IMPORT SYSTEM;

  CONST
    SEEK_SET = 0;
    SEEK_CUR = 1;
    SEEK_END = 2;
    CLOCKSPERSEC = 100;
    NCCS   = 19;
    EOF    = 4 (* offsets in TermIO.CC array *);
    ERASE  = 2;
    KILL   = 3;
    INTR   = 0;
    ISIG   = 0 (* bits in TermIO.LFlag *);
    ICANON = 1;
    ECHO   = 3;

  TYPE
    TermIO = RECORD
               IFlag, OFlag, CFlag, LFlag : BITSET;
               Discipline : CHAR;
               CC : ARRAY [0 .. NCCS] OF CHAR;
             END;
    TIME = POINTER TO RECORD
             Secs, Mins, Hours, Day, Month, Year, WDay, YDay, DST : INTEGER;
           END;

  PROCEDURE getenv (name : ARRAY OF CHAR) : SYSTEM.ADDRESS;
  PROCEDURE lseek (fd : INTEGER; pos1 : LONGCARD; disp : LONGINT) : LONGINT;
  PROCEDURE atexit (P : PROC) : INTEGER;
  PROCEDURE tcgetattr (fd : INTEGER; VAR rec : TermIO) : INTEGER;
  PROCEDURE tcsetattr (fd : INTEGER; action : INTEGER; VAR rec : TermIO) : INTEGER;
  PROCEDURE localtime (VAR t : INTEGER) : TIME;
  PROCEDURE clock () : INTEGER;

END LIBC.
