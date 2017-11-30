#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm *.o *.c *.h *.sym
rm ./OSP


#
voc RISC.Mod 
voc OSS.Mod 
voc OSG.Mod
voc OSP.Mod
#voc -m OSP.Mod
#voc -m OSG.Mod
#voc -m OSS.Mod 
#voc -m RISC.Mod 
voc -m Oberon0.Mod
