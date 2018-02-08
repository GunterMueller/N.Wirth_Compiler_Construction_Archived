MODULE GMGetEnvs;

FROM  Arguments  IMPORT  ArgTable, GetEnv;
FROM  InOut	 IMPORT	 WriteCard, WriteLn, WriteString, WriteBf;
FROM  Strings	 IMPORT	 Assign, Length;


VAR   item	 	 : CARDINAL;
      storage		 : ArgTable;
      Value		 : ARRAY [0..511] OF CHAR;


BEGIN
   GetEnv (storage);
   item := 0;
   LOOP
      IF  storage^ [item] = NIL  THEN  EXIT  END;
      Assign (Value, storage^ [item]^);
      WriteCard (item, 4);
      WriteString (' :  [');    WriteCard (Length (Value), 4);
      WriteString (']  ');      WriteString (Value);
      WriteLn;
      INC (item)
   END;
   WriteBf
END GMGetEnvs.
