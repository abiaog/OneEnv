#!/bin/bash
set -x # for debug

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $CURRENT_DIR/copy.sh

length=${#FILE_IN_REPO[@]}
echo "Copy" $length "File(s):"

for ((i=0; i<$length; i++))
do
	echo cp ${FILE_IN_REPO[i]} ${FILE_IN_REPO_SHADOW[i]}
	cp "${FILE_IN_REPO[i]}" "${FILE_IN_REPO_SHADOW[i]}"
	if [ $? -ne 0 ]; then
		echo "***Failed***"
		exit 1
	fi
done

git log -1 > $ONEENV_BIN/git-commit-id.txt
