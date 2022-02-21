#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm *.sym
rm *.o
rm tmp.mkf
rm ./Pl0


#

for x in OSG.ob2 OSP.ob2 OSS.ob2 Oberon0.ob2 RISC.ob2
do
  echo $x
  xc +GENDEBUG $x
done

xc  =make Oberon0
