#
############################################
# This build file assumes the vishap oberon compiler is installed.
############################################


#
for x in *.def
do
  echo $x
  gm2 -g -I. $x
done

for x in *.mod
do
  echo $x
  gm2 -g -I. $x
done
