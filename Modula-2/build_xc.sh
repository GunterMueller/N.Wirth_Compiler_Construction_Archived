#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm -rf ./m2bin
rm *.sym


#
for x in *.def
do
  echo $x
  xc $x
done

