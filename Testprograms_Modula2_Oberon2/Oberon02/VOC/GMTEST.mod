MODULE GMTEST;     

IMPORT Args, Out, Strings := oocStrings; (* Console *)

VAR
  argnum : LONGINT;
  name: ARRAY 20 OF CHAR;

BEGIN
  argnum := Args.argc;
  Out.String("Argnum ="); Out.Int(argnum,10); Out.Ln;

END GMTEST.







