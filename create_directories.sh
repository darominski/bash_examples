#!/bin/bash

path=${1, $PWD}
n_folders=${2, 0}
n_created=0

for (( i=0; i<$n_folders; i++))
do
    directory=$path"/directory_"$i
    if [ ! -d $directory ]
    then
	echo "we should be here"
	mkdir -p $directory
	n_created=$(( n_created+1 ))
    fi
done

echo "Created "$n_created" directories in "$path
