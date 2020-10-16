#!/bin/sh

if [ -z "$1" ]
then
	echo "Usage $0 <file>"
	exit 1
fi

if [ "$1" == "-i" ]
then
	rlwrap -c -H .history ./djdslkit-latest-linux
	exit $?
elif [ "$1" == "-v" ]
then
	verbose=1
	shift
fi

input="$1"
name="$(basename $1 .tcl)"

if [ ! -d dot ]
then
	mkdir dot
fi

echo "Running $name"
./djdslkit-latest-linux $input | tee dot/${name}.dot
ret=${PIPESTATUS[0]}

if [[ $ret -eq 0 && ! -z "$verbose" ]]
then
	dot -Tpng -o dot/${name}.png dot/${name}.dot
	if [ $? -eq 0 ]
	then
		eog dot/${name}.png &
		exit 0
	else
		exit 2
	fi
else
	exit $ret
fi
