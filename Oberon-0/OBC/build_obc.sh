echo Build the Oberon-0 compiler

echo delete old execuable
rm OSP

echo Build the executable
obc OSS.m OSG.m OSP.m  Oberon-2.m -o Oberon0

echo Run the debugger
obdb Oberon0 Test.m
