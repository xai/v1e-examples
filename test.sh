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
	out=$(./run.sh $f 2>&1)
	ret=$?
	echo -n "(ret $ret) "
	if echo "$out" | grep -q most
	then
		echo "at most k case"
	elif [ $ret -eq 0 ]
	then
		echo "regular case"
	else
		echo "crash"
		echo "$out" | sed 's/^/\t> /'
	fi
done
