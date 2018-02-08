MODULE GMGetArgs;

IMPORT  SYSTEM, Args, Out, Strings := oocStrings; (* Console *)

VAR
  argnum : LONGINT;
  count: INTEGER;
  argvec :  SYSTEM.ADDRESS;
  currvar : ARRAY 32 OF CHAR;

BEGIN
   argnum := Args.argc; 
   argvec := Args.argv;
   count := 0;
   WHILE count < argnum DO 
     Args.Get(count, currvar);
     Out.String("Argnum ="); Out.Int(argnum,10); Out.Ln;
     Out.String("Count ="); Out.Int(count,10); Out.Ln;
     Out.String("Argvec ="); Out.String(currvar); Out.Ln;
     INC(count)
   END;
END GMGetArgs.
