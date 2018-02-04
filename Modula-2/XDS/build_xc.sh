#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm *.sym
rm *.o
rm tmp.mkf
rm ./Pl0


#
for x in FileIO.def PL0*.def
do
  echo $x
  xc +GENDEBUG $x
done

for x in FileIO.mod PL0Generator.mod  PL0Interpreter.mod    PL0Parser.mod  PL0ParserNew.mod  PL0Scanner.mod
do
  echo $x
  xc +GENDEBUG $x
done

xc  =make PL0
