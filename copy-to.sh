#!/bin/bash

source copy.sh

length=${#FILE_IN_REPO[@]}
echo $length

for ((i=0; i<$length; i++))
do
	echo cp ${FILE_IN_REPO[i]} ${FILE_IN_REPO_SHADOW[i]}
	cp "${FILE_IN_REPO[i]}" "${FILE_IN_REPO_SHADOW[i]}"
done
