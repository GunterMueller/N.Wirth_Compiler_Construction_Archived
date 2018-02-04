MODULE GMTEST;     (*NW 22.9.07 / 15.12.2013*)

IMPORT Args, Out, IntStr :=  oocIntStr;

VAR
  argnum : INTEGER;
  name: ARRAY 20 OF CHAR;

BEGIN
INC(argnum);
  IF argnum < Args.argc THEN
     Args.Get(argnum, name) 
  END;
  Out.String("Oberon-07 compiler v1.0"); Out.Ln;
  Out.String("Argnum =",argnum); Out.Ln;

END GMTEST.


