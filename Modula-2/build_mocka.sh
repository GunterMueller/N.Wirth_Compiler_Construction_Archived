#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm -rf ./m2bin
rm -f *.sym
rm -f ./PL0


#
for x in *.def
do
  echo $x
  mocka -s $(basename $x .def)
done

for x in *.mod
do
  echo $x
  mocka -c $(basename $x .mod)
done


echo p PL0 | mocka
