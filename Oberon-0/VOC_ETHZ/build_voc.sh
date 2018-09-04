#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm *.o *.c *.h *.sym
#rm ./OSP
#rm ./RISC
rm ./Oberon0


#
voc -V RISC.mod 
voc -V OSS.mod 
voc -V OSG.mod
voc -V OSP.mod
#voc -m OSP.mod
#voc -m OSG.mod
#voc -m OSS.mod 
voc -m -V Oberon0.mod
#voc -m RISC.mod 
