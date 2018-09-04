MODULE Oberon0;
  IMPORT SYSTEM, Args,  Out, Files, Texts, Oberon, OSS, OSG, OSP, Strings := oocStrings; (* Console *)

  PROCEDURE Help;
  BEGIN
    Out.String("Oberon-07 compiler v1.0"); Out.Ln;
    Out.Ln;
    Out.String("Usage: oberonc outputFolder sourceFile1.Mod[+] sourceFile2.Mod[+] ..."); Out.Ln;
    Out.Ln;
    Out.String("It compiles the list of provided source module files and places the generated"); Out.Ln;
    Out.String("classes in the existing 'outputFolder'."); Out.Ln;
    Out.String("The optional suffix '+' allows the compiler to create a new symbol file. If this"); Out.Ln;
    Out.String("option is not specified, a change in the interface of the module results in a"); Out.Ln;
    Out.String("compilation error."); Out.Ln;
  END Help;

  PROCEDURE Main;
    VAR i, len, n: INTEGER;
      folder, arg: ARRAY 200 OF CHAR;
      newSym: BOOLEAN;
      f: Files.File;
      argnum : LONGINT;
      count: INTEGER;
     argvec :  SYSTEM.ADDRESS;
     currvar : ARRAY 32 OF CHAR;
  BEGIN
     argnum := Args.argc; 
     argvec := Args.argv;
     count := 0;
      
     IF argnum < 2 THEN
      Help
    ELSE 
    (*   ARGS(0, folder); *)
      FOR i := 1 TO n-1 DO
    (*    ARGS(i, arg); *)
        len := Strings.Length(arg);
        IF arg[len-1] = "+" THEN
          newSym := TRUE;
          arg[len-1] := 0X
        END ;
       (*  OSP.Compile(arg, newSym, folder) *)
        OSP.Compile()
      END
     END 
  END Main;
END Oberon0.
