#!/bin/bash
set -x # for debug

source copy-files.sh

length=${#FILE_IN_REPO[@]}
echo "Remove" $length "File(s):"

for ((i=0; i<$length; i++))
do
	echo rm -f ${FILE_IN_REPO_SHADOW[i]}
	rm -f "${FILE_IN_REPO_SHADOW[i]}"
	if [ $? -ne 0 ]; then
		echo "***Failed***"
		exit 1
	fi
done
