#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################
rm *.sym


#
for x in *.def
do
  echo $x
  xc $x
done

