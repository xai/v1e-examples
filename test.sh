#! /bin/sh

if [ -z "$1" ]
then
	input=*_*.tcl
else
	input=$@
fi

for f in $input
do
	echo -n "${f}: " 
	./run.sh $f 2>&1 | grep most || echo "regular case"
done
