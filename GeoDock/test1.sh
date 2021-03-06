#!/bin/bash


for file in ./data1/*.mol2
do
    for ((i = 1; i < 11; i++))
    do
    echo "WORKING"
	for ((s = 1; s < 5; s++))
		do
			name=${file##*/}
			base=${name%.mol2}
			for((g = 4;g < 9;g++))
			do
				python3 main.py True "$file"  "${base}#s${s}#it${i}#g${g}insp"  ${i} ${s}  False  True  True  ${g}  2  &
				echo "Launched ${base}#s${s}#it${i}#g${g}insp"
			done
	done
	wait
    done
done

echo "SCRIPT IS DONE"
