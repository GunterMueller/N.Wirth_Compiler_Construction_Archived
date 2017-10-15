#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm *.o *.c *.h *.syn
rm ./OSP


#
voc RISC.Mod 
voc OSS.Mod 
voc OSS.Mod -
voc OSG.Mod
voc OSP.Mod
