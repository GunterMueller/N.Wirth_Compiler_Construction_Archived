#
############################################
# This build file assumes the GNU Modula02 Compiler is installed.
############################################

echo  "gm2 -g -I. PL0Interpreter.mod"
gm2 -fpim -g -I. PL0Interpreter.mod
echo "#gm2 -g -I. PL0Scanner.mod"
gm2 -g -I. PL0Scanner.mod
#########
#gm2 -g -I. PL0Generator.mod
#gm2 -g -I. PL0Parser.mod
#gm2 -g -I. PL0ParserNew.mod
#gm2 -g -I. PL0.mod
