MODULE GMGetArgs;

FROM  Arguments  IMPORT  GetArgs, ArgTable, GetEnv;
FROM  InOut	 IMPORT	 WriteCard, WriteLn, WriteString;


VAR   count, item	 : SHORTCARD;
      storage		 : ArgTable;   


BEGIN
   GetArgs (count, storage);
   item := 0;
   REPEAT 
      WriteCard (item, 4);
      WriteString (' :  ');
      WriteString (storage^ [item]^);
      WriteLn;
      INC (item)
   UNTIL item = count
END GMGetArgs.
