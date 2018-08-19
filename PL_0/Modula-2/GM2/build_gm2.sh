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

