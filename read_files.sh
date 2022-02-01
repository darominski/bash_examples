#!/bin/bash

file=$1

for word in $( cat $file)
do
    echo $word
done

while IFS= read -r line
do
    echo $line
done <<< $(cat $file)

