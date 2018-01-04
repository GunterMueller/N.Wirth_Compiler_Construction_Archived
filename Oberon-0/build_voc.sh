#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm *.o *.c *.h *.sym
#rm ./OSP
#rm ./RISC
rm ./Oberon0


#
voc -V RISC.Mod 
voc -V OSS.Mod 
voc -V OSG.Mod
voc -V OSP.Mod
#voc -m OSP.Mod
#voc -m OSG.Mod
#voc -m OSS.Mod 
voc -m -V Oberon0.Mod
#voc -m RISC.Mod 
