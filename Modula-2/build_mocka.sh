#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm -rf ./m2bin


#
for x in *.def
do
  mocka -s $(basename $x .def)
done
for x in *.mod
do
  mocka -c $(basename $x .mod)
done
