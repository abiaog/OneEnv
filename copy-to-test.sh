#!/bin/bash
set -x # for debug

ONEENV_PATH=.
source $ONEENV_PATH/copy.sh

echo "Regression Test Begin..."
length=${#FILE_IN_REPO[@]}
for ((i=0; i<$length; i++))
do
	if [ -e ${FILE_IN_REPO_SHADOW[i]} ]; then
		echo ${FILE_IN_REPO_SHADOW[i]} exist
		diff -q ${FILE_IN_REPO_SHADOW[i]} ${FILE_IN_REPO[i]}
		if [ $? -ne 0 ]; then
			echo file diff 
			exit 1
		fi
	else
		echo ${FILE_IN_REPO_SHADOW[i]} NOT exist
		echo "***Fail***"
		exit 1
	fi
done

echo "***Success***"
